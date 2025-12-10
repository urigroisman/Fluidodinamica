# Chequeo de cavitación — Método estándar FLUIDODINAMICA_BASE (estilo Uri)

## 1. Criterio general para evaluar cavitación

Una bomba opera sin cavitar si se cumple

$$
NPSH_d > NPSH_r
$$

donde

- $NPSH_d$ es el **NPSH disponible** en la succión de la bomba.
- $NPSH_r$ es el **NPSH requerido** por la bomba (curva del fabricante).

---

## 2. Cálculo del NPSH disponible

En un sistema abierto a la atmósfera, con una línea de succión dada, el NPSH disponible puede escribirse como

$$
NPSH_d
= h_s - h_{\text{vap}}
= \frac{P_s}{\rho g}
+ \frac{u^2}{2g}
- \frac{P_{\text{vap}}}{\rho g},
$$

donde

- $P_s$ es la presión estática en la sección de succión,
- $u$ es la velocidad media en la tubería de succión,
- $P_{\text{vap}}$ es la presión de vapor del líquido a la temperatura de trabajo.

**Idea clave:** si dos alternativas (por ejemplo, acople en serie y VFD)

- tienen la **misma línea de succión** (mismo trazado, pérdidas y cotas),
- operan al **mismo caudal**,

entonces

$$
NPSH_{d,1} = NPSH_{d,2}.
$$

Es decir, el NPSH disponible es el mismo para las dos alternativas.  
En ese caso, el riesgo relativo de cavitación se decide exclusivamente por las diferencias en el $NPSH_r$ de cada configuración.

---

## 3. NPSH requerido para cada alternativa

### 3.1 Bombas en serie

En un acople en serie, la bomba que puede cavitar es la que toma el fluido desde el tanque/batea (la primera en la línea).  
La segunda bomba recibe una presión de succión mucho más alta y, en general, no presenta riesgo de cavitación.

En el problema analizado, a

$$
Q = 10\ \text{m}^3/\text{h}
$$

se lee del gráfico del fabricante para la bomba 160A:

$$
NPSH_{r,\text{serie}} \simeq 2.2\ \text{m}.
$$

---

### 3.2 Bomba 160A con variador de frecuencia (VFD)

Cuando la bomba opera a una velocidad distinta de la nominal, **no corresponde** leer directamente el $NPSH_r$ del gráfico, ya que las curvas del fabricante se dan para una velocidad de referencia $N_1$ (por ejemplo, $N_1 = 1450\ \text{rpm}$).

En este caso se usa un método más fino basado en:

- **puntos homólogos**, y
- **leyes de semejanza**.

#### Método de puntos homólogos + semejanza

1. Se identifica sobre la curva original $(H,Q)$ (a $N_1$) un punto **homólogo** $(Q_1,H_1)$ del punto que se desea alcanzar con VFD.

2. En ese punto se lee el $NPSH_{r,1}$ del gráfico original.

3. Se transporta este valor a la nueva velocidad $N_2$ usando la relación aproximada

   $$
   NPSH_r \propto N^2
   \quad\Rightarrow\quad
   NPSH_{r,2} = NPSH_{r,1}\left(\frac{N_2}{N_1}\right)^2.
   $$

Este procedimiento es más riguroso que “adivinar” el $NPSH_r$ a la nueva velocidad, porque:

- siempre parte de un punto real de la curva del fabricante,
- preserva la semejanza geométrica del rodete,
- mantiene coherencia con las leyes de escala de bombas centrífugas.

#### Aplicación al problema

De la parte (b) se obtuvo, resolviendo el sistema de semejanza, que el punto homólogo es

- $N_2 = 1720\ \text{rpm}$,
- $Q_1 = 8.43\ \text{m}^3/\text{h}$,
- $H_1 = 7.68\ \text{m}$.

Del gráfico de $NPSH_r$ a la velocidad nominal $N_1$ se lee:

$$
NPSH_{r,1} \simeq 2.0\ \text{m}
\quad\text{para}\quad Q_1 = 8.43\ \text{m}^3/\text{h}.
$$

Escalando al nuevo régimen:

$$
NPSH_{r,\text{VFD}}
= NPSH_{r,1}\left(\frac{N_2}{N_1}\right)^2
= 2.0\left(\frac{1720}{1450}\right)^2
\simeq 2.8\ \text{m}.
$$

---

## 4. Comparación del riesgo de cavitación

Sabemos que, al tener la misma succión y el mismo caudal:

$$
NPSH_{d,\text{serie}} = NPSH_{d,\text{VFD}}.
$$

Por lo tanto, la alternativa con **mayor riesgo de cavitación** será aquella que requiera un $NPSH_r$ más alto al caudal de trabajo, es decir, la que tenga un **menor margen**

$$
NPSH_d - NPSH_r.
$$

En el problema:

$$
NPSH_{r,\text{serie}} \simeq 2.2\ \text{m}, 
\qquad
NPSH_{r,\text{VFD}} \simeq 2.8\ \text{m}.
$$

Como $NPSH_d$ es el mismo para ambas:

- el margen $NPSH_d - NPSH_r$ es mayor en la alternativa en serie,
- y menor en la alternativa con VFD.

---

## 5. Conclusión

$$
\boxed{
NPSH_{r,\text{VFD}} > NPSH_{r,\text{serie}}
}
$$

Dado que $NPSH_d$ es idéntico para ambas configuraciones:

$$
\boxed{
\text{La bomba 160A operando con variador de frecuencia presenta mayor riesgo de cavitación que el acople en serie.}
}
$$