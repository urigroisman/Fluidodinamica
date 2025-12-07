using NonlinearSolve

# ============================
# 1. Parámetros del modelo
# ============================

const γ   = 1.4
const Fp  = 5.0/9.0            # F = P2/P0 = 5 bar / 9 bar
const ft  = 0.020              # f_T de Crane para DN 1/2" (Darcy)
const D   = 0.0158             # diámetro interno ~ 1/2" Sch 40 [m]
const Leq = 18.5               # longitud equivalente [m]


const C   = 2γ/(γ - 1)         # C = 2γ/(γ-1)
const RHS = ft * Leq / D       # término de Fanno (con f de Blassius) f_T L'/D
# ============================
# 2. Sistema no lineal F(u) = 0
#    u = [r, z]
# ============================

function f!(F, u, p)
    r = u[1]
    z = u[2]

    # Región físicamente admisible
    if !(0.0 < z < r < 1.0)
        F[1] = 1e6
        F[2] = 1e6
        return
    end

    B = z^2 - Fp*z
    if B <= 0.0
        F[1] = 1e6
        F[2] = 1e6
        return
    end

    X = C * B
    N = r^2 - z^2

    # E1: acoplamiento reservorio-ducto-salida
    F[1] = r^2 - r^(γ + 1) - z^2 + Fp*z

    # E2: ecuación de Fanno reducida
    F[2] = N/X - (γ + 1)/γ * log(r/z) - RHS
end

# Semilla (misma que en Python)
u0 = [0.99, Fp + 0.01]

# Definimos el problema no lineal
prob = NonlinearProblem(f!, u0)

# Elegimos un algoritmo tipo Newton-Raphson
sol = solve(prob; abstol = 1e-15, reltol = 1e-15, maxiters = 500)

@show sol.u
r = sol.u[1]
z = sol.u[2]

println("\nValores semilla:")
println("r = $(r)")
println("z = $(z)")
println("FLeq = $(Leq)")
println("Fanno = $(RHS)")


# ============================
# 3. Cálculo de X y del flujo másico ṁ
# ============================

# Datos termodinámicos
P0   = 9e5           # Pa (9 bar abs)
T0   = 288.0         # K
Rgas = 8.314 / 0.028 # J/(kg·K) para N2 aprox.

v0 = Rgas * T0 / P0  # m^3/kg

# X(r,z)
X = C * (z^2 - Fp*z)

# Área de la tubería
A = π * D^2 / 4

# Flujo másico (misma definición que en Python)
mdot = A * sqrt(X * P0 / v0)

println("\nResultados físicos:")
println("X     = $(X)")
println("m_dot = $(mdot) kg/s")