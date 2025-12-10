# Cálculo de potencias y costos — Método estándar FLUIDODINAMICA_BASE (estilo Uri)

## 1. Potencia hidráulica de una bomba

La **potencia hidráulica** entregada por una bomba se calcula como

$$
P_h = \dot{m}\,gH = \rho Q g H,
$$

donde

- $\rho$ es la densidad del fluido,
- $Q$ el caudal volumétrico,
- $H$ la altura manométrica que entrega la bomba.

Usando $Q$ en $\text{m}^3/\text{h}$ y $P_h$ en W, se emplea la forma

$$
P_h = \frac{\rho\,g\,H\,Q}{3600}.
$$

Esta es la forma que usaremos siempre en el proyecto para reconstruir potencias, en lugar de leerlas directamente de la curva de potencia cuando queremos un análisis más fino.

---

## 2. De potencia hidráulica a potencia eléctrica

Las curvas del fabricante suelen informar la **eficiencia total** $\eta_T$ de la bomba (incluyendo eficiencias hidráulica, volumétrica y mecánica).

El vínculo entre la potencia hidráulica y la potencia eléctrica absorbida es

$$
P_e = \frac{P_h}{\eta_T}.
$$

Por lo tanto, el procedimiento estándar es:

1. Para cada bomba y punto de operación $(Q,H)$:
   - Calcular $P_h$ mediante
     $$
     P_h = \frac{\rho g H Q}{3600}.
     $$
2. Leer la eficiencia total $\eta_T$ en la **curva de eficiencia** del fabricante para ese mismo caudal (o punto homólogo, ver VFD).
3. Calcular
   $$
   P_e = \frac{P_h}{\eta_T}.
   $$

En un sistema con varias bombas, la **potencia total absorbida** se obtiene como la suma de las potencias eléctricas individuales:

$$
P_{e,\text{total}} = \sum_i P_{e,i}.
$$

Es importante remarcar que esta suma se usa **para costos y balance energético**, pero **no** para verificar potencias máximas de motores: cada bomba tiene su propio motor y la verificación se hace bomba a bomba.

---

## 3. Uso de puntos homólogos y VFD

Cuando una bomba opera con **variador de frecuencia (VFD)** u otra condición alejada de la nominal, no siempre es correcto leer directamente $\eta_T$ y $P_e$ del gráfico, porque las curvas están dadas para una velocidad de referencia $N_1$.

En estos casos, se adopta el siguiente procedimiento estándar:

1. Identificar un punto **homólogo** $(Q_1,H_1)$ sobre la curva original (a $N_1$) que corresponda al punto deseado con VFD $(Q_2,H_2)$ mediante las **leyes de semejanza**:

   $$
   \frac{Q_1}{Q_2} = \frac{N_1}{N_2}, \qquad
   \frac{H_1}{H_2} = \left(\frac{N_1}{N_2}\right)^2.
   $$

2. Leer en la curva original:
   - la eficiencia total $\eta_{T,1}$,
   - y, si se necesita para cavitación, el $NPSH_{r,1}$,

   en el punto $(Q_1,H_1)$.

3. Asumir que el punto con VFD es homólogo:

   $$
   \eta_{T,2} = \eta_{T,1},
   $$

   y usar esta eficiencia para obtener la potencia eléctrica bajo VFD.

4. Calcular la potencia hidráulica en el punto real de operación $(Q_2,H_2)$:

   $$
   P_{h,2} = \frac{\rho g H_2 Q_2}{3600}.
   $$

5. Finalmente, estimar la potencia eléctrica con VFD:

   $$
   P_{e,2} = \frac{P_{h,2}}{\eta_{T,2}}.
   $$

Este método es más robusto que leer $P_e$ directamente del gráfico porque:

- respeta las leyes de semejanza,
- utiliza sólo información real provista por el fabricante,
- y mantiene la coherencia entre $(H,Q)$, eficiencia y NPSH para puntos fuera de la velocidad nominal.

---

## 4. Costo de operación y costo total en un horizonte dado

Sea

- $P_e$ la potencia eléctrica total absorbida por la instalación (en kW),
- $t_{\text{anual}}$ el número de horas de operación por año,
- $c_e$ el costo de la energía eléctrica en \$/kWh,
- $C_{\text{inv}}$ el costo de inversión de la alternativa (bomba nueva, VFD, etc.),
- $n_{\text{años}}$ el horizonte de análisis (en años).

El **costo de energía** en ese horizonte es

$$
C_{\text{energ}}^{(n)} = P_e \; t_{\text{anual}} \; c_e \; n_{\text{años}}.
$$

El **costo total** de la alternativa es entonces

$$
C_{\text{total}} = C_{\text{inv}} + C_{\text{energ}}^{(n)}.
$$

En el examen de diciembre 2023 se usó:

- $t_{\text{anual}} = 350 \times 24 = 8400\ \text{h/año}$,
- $c_e = 5\ \$/\text{kWh}$,
- $n_{\text{años}} = 2$.

Por lo tanto, el costo de energía se calculó como

$$
C_{\text{energ}}^{(2)} = P_e \;\underbrace{(8400\ \text{h/año})}_{t_{\text{anual}}}\; (5\ \$/\text{kWh})\; \cdot 2.
$$

---

## 5. Ejemplo breve: acople en serie vs. VFD (examen dic. 2023)

### 5.1 Bombas 160A + 160B en serie

Para $Q = 10\ \text{m}^3/\text{h}$:

- Bomba 160A:
  - $H_{160A} = 7\ \text{m}$,
  - $P_{h,160A} = \dfrac{997 \cdot 9.81 \cdot 7 \cdot 10}{3600} = 190.18\ \text{W}$,
  - $\eta_{T,160A} = 0.526$,
  - $P_{e,160A} = \dfrac{190.18}{0.526} = 361.6\ \text{W}$.

- Bomba 160B:
  - $H_{160B} = 5.513\ \text{m}$,
  - $P_{h,160B} = \dfrac{997 \cdot 9.81 \cdot 5.513 \cdot 10}{3600} = 149.78\ \text{W}$,
  - $\eta_{T,160B} = 0.524$,
  - $P_{e,160B} = \dfrac{149.78}{0.524} = 285.8\ \text{W}$.

Potencia total:

$$
P_{e,\text{serie}} = 361.6 + 285.8 = 647.4\ \text{W} = 0.6474\ \text{kW}.
$$

Costo de energía en 2 años:

$$
C_{\text{energ, serie}}^{(2)}
= 0.6474 \times 8400 \times 5 \times 2
= 54\,381\ \text{\$}.
$$

Costo total (bomba 160B cuesta \$5000):

$$
C_{\text{total, serie}} = 5000 + 54\,381 = 59\,381\ \text{\$}.
$$

---

### 5.2 Bomba 160A con variador de frecuencia (VFD)

Del análisis de semejanza (punto homólogo):

- Punto deseado: $Q_2 = 10\ \text{m}^3/\text{h}$, $H_2 = 10.8\ \text{m}$, $N_2 = 1720\ \text{rpm}$.
- Punto homólogo en la curva original:
  - $Q_1 = 8.43\ \text{m}^3/\text{h}$,
  - $H_1 = 7.68\ \text{m}$.
- Eficiencia total:
  - $\eta_{T,2} = \eta_{T,1} = 0.512$.

Potencia hidráulica en el punto real con VFD:

$$
P_{h,\text{VFD}}
= \frac{997 \cdot 9.81 \cdot 10.8 \cdot 10}{3600}
= 293.42\ \text{W}.
$$

Potencia eléctrica:

$$
P_{e,\text{VFD}} = \frac{293.42}{0.512} = 573.1\ \text{W}
= 0.5731\ \text{kW}.
$$

Costo de energía en 2 años:

$$
C_{\text{energ, VFD}}^{(2)}
= 0.5731 \times 8400 \times 5 \times 2
= 48\,140\ \text{\$}.
$$

Costo total (variador cuesta \$15\,000):

$$
C_{\text{total, VFD}} = 15\,000 + 48\,140 = 63\,140\ \text{\$}.
$$

---

## 6. Conclusión del ejemplo

Con esta metodología (reconstruyendo siempre $P_h$ con $P_h = \rho g H Q / 3600$ y usando $\eta_T$ leída de la curva):

- El **acople en serie** resulta más económico en 2 años:
  $$
  C_{\text{total, serie}} = 59\,381\ \text{\$}.
  $$

- La alternativa con **VFD** resulta más costosa:
  $$
  C_{\text{total, VFD}} = 63\,140\ \text{\$}.
  $$

Este procedimiento queda como el **método estándar del proyecto** para:

- cálculo de potencias,
- cálculo de costos,
- comparación técnico–económica entre alternativas de bombeo.