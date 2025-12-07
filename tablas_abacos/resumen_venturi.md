# Medidor Venturi – Resumen teórico

## 1. Descripción geométrica

El **tubo Venturi** es un medidor de caudal por diferencia de presión. Consta de:

1. Tramo cilíndrico de entrada, diámetro $D$, área $A_1$.
2. Garganta convergente, diámetro $d$, área $A_2$.
3. Difusor (expansión gradual) hasta recuperar una sección cercana a $D$.

Se definen:

- Relación de diámetros:
  $$
  \beta = \frac{d}{D}
  $$
- Áreas:
  $$
  A_1 = \frac{\pi D^2}{4}, \qquad
  A_2 = \frac{\pi d^2}{4} = \beta^2 A_1
  $$

Las tomas de presión se ubican típicamente en:

- Punto 1: tramo cilíndrico aguas arriba.
- Punto 2: garganta.

En muchos casos prácticos $z_1 \simeq z_2$ (eje horizontal), por lo que la diferencia de cota entre tomas se desprecia.

---

## 2. Modelo ideal: continuidad y Bernoulli

Hipótesis:

- Flujo estacionario de fluido incompresible.
- Perfil de velocidad casi uniforme en 1 y 2.
- Sin fricción entre 1 y 2 (modelo ideal).
- Sin diferencia de cota apreciable entre tomas ($z_1 \simeq z_2$).

### 2.1. Continuidad

$$
Q = A_1 v_1 = A_2 v_2
\quad\Rightarrow\quad
v_1 = \frac{A_2}{A_1} v_2 = \beta^2 v_2.
$$

### 2.2. Bernoulli entre 1 y 2 (ideal)

$$
\frac{p_1}{\rho g} + \frac{v_1^2}{2g} + z_1
=
\frac{p_2}{\rho g} + \frac{v_2^2}{2g} + z_2.
$$

Si $z_1 \simeq z_2$,

$$
\frac{p_1 - p_2}{\rho} =
\frac{1}{2}\left(v_2^2 - v_1^2\right).
$$

Definimos la diferencia de presión medida:

$$
\Delta p = p_1 - p_2 > 0.
$$

Usando $v_1 = \beta^2 v_2$:

$$
\Delta p
= \frac{\rho}{2}\left[v_2^2 - (\beta^2 v_2)^2\right]
= \frac{\rho}{2} v_2^2 (1 - \beta^4).
$$

Velocidad en la garganta:

$$
v_2 = \sqrt{\frac{2\,\Delta p}{\rho(1-\beta^4)}}.
$$

Caudal **ideal**:

$$
Q_{\text{ideal}}
=
A_2 v_2
=
A_2
\sqrt{\frac{2\,\Delta p}{\rho(1-\beta^4)}}.
$$

---

## 3. Coeficiente de descarga $C_D$

En la práctica existen:

- Pérdidas por fricción en la convergencia y la garganta.
- Perfiles de velocidad no uniformes.
- Posibles separaciones en el difusor.

Se introduce un **coeficiente de descarga** $C_D < 1$:

$$
C_D = \frac{Q_{\text{real}}}{Q_{\text{ideal}}}.
$$

Por tanto, el caudal real es

$$
\boxed{
Q =
C_D\,A_2
\sqrt{\frac{2\,\Delta p}{\rho\,(1-\beta^4)}}
}
\qquad [\text{m}^3/\text{s}].
$$

En muchos problemas se emplea una correlación empírica para $C_D$ en función de $\beta$ (flujo turbulento bien desarrollado). En este parcial se usa:

$$
\boxed{
C_D = 0.986 - 0.196\,\beta^{4.5}
}
$$

válida para Venturis normalizados y números de Reynolds elevados.

---

## 4. Relación con un manómetro diferencial de columna

Si la diferencia de presión se mide con un **manómetro de columna** (fluido manométrico de densidad $\rho_m$ distinto de la densidad del fluido en tubería $\rho_f$), con diferencia de alturas $h$:

$$
\Delta p = ( \rho_m - \rho_f )\,g\,h.
$$

Sustituyendo en la ecuación de caudal:

$$
Q =
C_D A_2
\sqrt{
\frac{2(\rho_m - \rho_f) g h}
{\rho_f (1-\beta^4)}
}.
$$

Esta es la expresión básica cuando el instrumento de medida entrega $h$ (o una señal proporcional a $h$).

Si el transductor entrega directamente $\Delta p$ en Pa, bar, mbar, etc., se usa la forma anterior con $\Delta p$.

---

## 5. Pérdidas de carga en el Venturi

El Venturi **no es sin pérdidas**, aunque son relativamente bajas.

Entre 1 y 2 la caída de presión es esencialmente reversible (se transforma en energía cinética), pero al expandir en el difusor:

- Hay fricción en las paredes.
- Puede haber separaciones leves.

Como consecuencia, la presión en la sección 3 (aguas abajo del difusor) es menor que en 1.

Se caracteriza mediante una pérdida de carga global

$$
h_L \approx K_L \frac{v_2^2}{2g},
$$

donde $K_L$ es pequeño (típicamente, la pérdida permanente representa un 5–15 % de la caída de presión máxima $p_1 - p_2$), mucho menor que en un orificio de placa.

---

## 6. Consideraciones de diseño y operación

1. **Rango de $\beta$**  
   Normalmente:
   $$
   0.3 \lesssim \beta \lesssim 0.75.
   $$
   - $\beta$ pequeño $\Rightarrow$ gran $\Delta p$ para un mismo $Q$ (buena sensibilidad, mayor pérdida permanente).
   - $\beta$ grande $\Rightarrow$ pequeña $\Delta p$ (menor pérdida, peor relación señal/ruido).

2. **Régimen de flujo**  
   Las correlaciones de $C_D$ suelen ser válidas para $Re_D$ grandes (orden $10^5$ o más).  
   En régimen laminar o de transición, $C_D$ depende fuertemente de $Re$ y el dispositivo debe calibrarse.

3. **Requisitos de instalación**  
   - Tramos rectos aguas arriba y aguas abajo (por ejemplo, 5–10 diámetros antes y 3–5 después).
   - Tomas de presión ubicadas según la norma (para medir presión estática y evitar zonas de recirculación).

4. **Cavitación (líquidos)**  
   La presión en la garganta:
   $$
   p_2 = p_1 - \Delta p.
   $$
   Debe verificarse que $p_2$ se mantenga por encima de la presión de vapor del líquido, especialmente con líquidos calientes o sistemas a baja presión absoluta.

5. **Ventajas y desventajas**

   - Ventajas:
     - $C_D$ alto y muy repetible ($\sim 0.97$–0.99).
     - Pérdidas permanentes relativamente bajas.
     - Buena estabilidad mecánica y metrológica.

   - Desventajas:
     - Dispositivo voluminoso y costoso.
     - Requiere espacio de instalación (longitud significativa).
     - Puede acumular sólidos en suspensión en la zona de garganta si el fluido arrastra partículas.

---

## 7. Fórmulas clave (para formulario)

1. Relación geométrica:
   $$
   \beta = \frac{d}{D}, \qquad 1 - \beta^4.
   $$

2. Caudal en función de $\Delta p$:
   $$
   Q =
   C_D A_2
   \sqrt{\frac{2\,\Delta p}{\rho(1-\beta^4)}}.
   $$

3. Si $\Delta p$ proviene de un manómetro de columna:
   $$
   \Delta p = (\rho_m - \rho) g h,
   $$
   $$
   Q =
   C_D A_2
   \sqrt{
   \frac{2(\rho_m - \rho) g h}{\rho(1-\beta^4)}
   }.
   $$

4. Correlación típica para $C_D$ (flujo turbulento):
   $$
   C_D = 0.986 - 0.196\,\beta^{4.5}.
   $$

Este resumen cubre la deducción de la ecuación de caudal, la interpretación física de la diferencia de presión y las principales consideraciones de diseño de un Venturi.