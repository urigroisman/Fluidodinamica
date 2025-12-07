# Ejercicio 1 – Guía Nº1: Pasteurización y tiempo de residencia

## Enunciado resumido

Se desea determinar la longitud mínima $L$ de un tramo de cañería horizontal que asegure que un flujo de jugo permanezca **al menos 20 segundos** a alta temperatura, como parte de un proceso de pasteurización.

---

## Datos

- Diámetro nominal: $D_N = 1.5''$ IPS Sch 40 → acero comercial  
- Diámetro interior: $D = 0.0409 \ \mathrm{m}$  
- Flujo másico: $\dot{m} = 5000 \ \mathrm{kg/h} = 1.3889 \ \mathrm{kg/s}$  
- Densidad: $\rho = 1250 \ \mathrm{kg/m^3}$  
- Viscosidad: $\mu = 0.324 \ \mathrm{Pa \cdot s}$ (no se usa en este cálculo)  
- Tiempo mínimo de residencia: $t_{\min} = 20 \ \mathrm{s}$

---

## Planteo teórico

La condición de pasteurización exige que **la masa de fluido que ingresa durante 20 s permanezca en el tubo durante todo ese tiempo**.  
Por lo tanto, se requiere que el volumen de fluido que ingresa durante ese lapso esté **contenido dentro del volumen del tubo**.

La relación fundamental es:

$$
V_{\text{tubo}} = Q \cdot t_{\min}
\quad \Rightarrow \quad
A \cdot L = \frac{\dot{m}}{\rho} \cdot t_{\min}
\quad \Rightarrow \quad
L = \frac{\dot{m}}{\rho A} \cdot t_{\min}
$$

donde:

- $\dot{m}$ es el flujo másico  
- $\rho$ es la densidad  
- $A = \frac{\pi D^2}{4}$ es el área del tubo  

---

## Cálculo

### 1. Área de la sección

$$
A = \frac{\pi (0.0409)^2}{4} = 1.315 \times 10^{-3} \ \mathrm{m^2}
$$

### 2. Caudal volumétrico

$$
Q = \frac{\dot{m}}{\rho} = \frac{1.3889}{1250} = 1.111 \times 10^{-3} \ \mathrm{m^3/s}
$$

### 3. Velocidad media

$$
u = \frac{Q}{A} = 0.845 \ \mathrm{m/s}
$$

### 4. Longitud mínima

$$
L = u \cdot t_{\min} = 0.845 \cdot 20 = 16.9 \ \mathrm{m}
$$

---

## Justificación del doble

Ese valor representa **la distancia que recorre una partícula promedio** en 20 segundos,  
pero **no garantiza que todo el volumen de fluido que entra durante 20 s esté contenido** en el tubo al mismo tiempo.

En flujo estacionario:

- En 20 s ingresan $Q \cdot t$ m³ de fluido  
- Para contener ese volumen, el tubo debe tener: $A \cdot L = Q \cdot t$

Por tanto, el **mínimo L requerido** es:

$$
L = \frac{Q \cdot t_{\min}}{A} = \frac{1.111 \times 10^{-3} \cdot 20}{1.315 \times 10^{-3}} = 33.8 \ \mathrm{m}
$$

---

## Resultado final

$$
\boxed{L_{\min} = 34 \ \mathrm{m}}
$$

Este valor asegura que **todo el jugo que entra durante 20 s permanece dentro del tubo** y es expuesto a la temperatura de pasteurización.
