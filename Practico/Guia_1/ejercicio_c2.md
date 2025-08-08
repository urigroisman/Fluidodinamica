# Ejercicio C.2 – Ventilador en ducto rectangular con pérdidas

## Enunciado

Se debe determinar el **incremento de presión** que debe generar un ventilador que impulsa aire desde una cabina hacia el exterior, a través de un ducto horizontal de sección rectangular.

El caudal especificado es de:

$$
Q_s = 1500 \ \mathrm{m^3/h}
$$

expresado en **condiciones estándar** (15 °C y 1 atm). El ventilador se encuentra al inicio del ducto.

---

## Datos

| Magnitud                          | Símbolo              | Valor                  |
|----------------------------------|-----------------------|------------------------|
| Caudal estándar                  | \( Q_s \)            | 1500 m³/h              |
| Sección rectangular              | —                    | 0.30 m × 0.20 m        |
| Longitud del ducto               | \( L \)              | 15 m                   |
| Rugosidad absoluta               | \( \varepsilon \)    | 0.15 mm = 0.15e-3 m    |
| Temperatura en cabina           | \( T_{\text{cab}} \) | 25 °C = 298.15 K       |
| Temperatura estándar            | \( T_s \)            | 15 °C = 288.15 K       |
| Presión en cabina               | \( p \)              | 102000 Pa              |
| Pérdida localizada entrada      | \( K_{\text{ent}} \) | 0.5                    |
| Constante gas aire              | \( R \)              | 287.05 J/(kg·K)        |

---

## Estrategia de resolución

1. **Calcular el flujo másico \( \dot{m} \)** usando las condiciones estándar:

   $$
   \dot{m} = \frac{p_s Q_s}{R T_s}
   $$

2. **Determinar la densidad del aire en el ducto**, a 25 °C:

   $$
   \rho = \frac{p}{R T_{\text{cab}}}
   $$

3. **Calcular el caudal volumétrico real** a partir de \( \dot{m} \) y \( \rho \):

   $$
   Q = \frac{\dot{m}}{\rho}
   $$

4. **Obtener velocidad media** en el ducto:

   $$
   v = \frac{Q}{A} = \frac{Q}{ab}
   $$

5. **Calcular el número de Reynolds**:

   $$
   Re = \frac{\rho v D_h}{\mu}
   $$

   Si no se proporciona \( \mu \), se puede usar la correlación de aire a 25 °C:  
   \( \mu \approx 1.85 \cdot 10^{-5} \ \mathrm{Pa \cdot s} \)

6. **Determinar el factor de fricción \( f_T \)** usando fórmula de Swamee-Jain o tabla de Moody.

7. **Aplicar la ecuación de Bernoulli extendida**, considerando pérdidas:

   $$
   \Delta p = \rho \left( f_T \frac{L}{D_h} + K_{\text{ent}} \right) \cdot \frac{v^2}{2}
   $$

---

¿Querés que ahora continúe con los cálculos en notebook o en otro archivo `.md` paso a paso?
