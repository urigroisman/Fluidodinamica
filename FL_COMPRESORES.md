# FL_COMPRESORES  
### Flujo compresible y compresores

Proyecto dedicado exclusivamente a problemas de flujo compresible en ductos, toberas, válvulas y compresores (reciprocantes y dinámicos).

---

## 1. Alcance del proyecto

Este proyecto incluye:

- Entrada a la tubería desde reservorio o desde ducto.  
- Escurrimiento adiabático o isotérmico en conducciones.  
- Determinación de \( \dot{m} \), \(P_1, P_2, P_3\), temperaturas asociadas, etc.  
- Análisis de condición sónica (“choking”).  
- Formulación y resolución de **sistemas reducidos adimensionales**.  
- Resolución numérica con NonlinearSolve.jl.  
- Compresores reciprocantes:
  - volumen muerto  
  - rendimiento volumétrico  
  - trabajo indicado  
  - potencias  
- Compresores de varias etapas y con intercooler.

En este proyecto **no** se utiliza la ecuación de Bernoulli incompresible.

---

## 2. Modelo físico estándar

- Gas ideal:
  \[
  Pv = RT
  \]
- Procesos típicos en tuberías:
  - **Adiabático** → proporciona cotas (máximas o mínimas) de flujo o presión.  
  - **Isotérmico** → cota complementaria.  
- Velocidad del sonido:
  \[
  a = \sqrt{\gamma P v}
  \]
- Presiones siempre en **valor absoluto**.  

---

## 3. Metodología específica

1. **Identificación del tipo de problema**  
   - Entrada desde **reservorio** (\(u \approx 0\)) o desde un punto dentro del ducto.  
   - Proceso predominante en la conducción (adiabático / isotérmico).  

2. **Planteo del modelo**  
   - Escribir las ecuaciones de balance y las relaciones termodinámicas según los apuntes de clase.  
   - Introducir variables adimensionales (por ejemplo \(r, z, X,\ldots\)) y construir el sistema reducido:
     \[
     F_i(r, z, X, \ldots) = 0
     \]

3. **Resolución numérica**  
   - Formular el sistema en forma vectorial para NonlinearSolve.jl.  
   - Elegir y documentar **valores semilla razonables**.  
   - Registrar:
     - valores de cierre,  
     - número de iteraciones,  
     - error final del sistema.  

4. **Chequeo de condición sónica**  
   - Verificar, cuando corresponda:
     \[
     \frac{w}{A} = \sqrt{\gamma \frac{P}{v}}
     \]
   - Determinar si el flujo está limitado por choking.

5. **Compresores reciprocantes y multietapa**  
   - Usar relaciones politrópicas \(PV^k = \text{cte}\) cuando aplique.  
   - Definir:
     - relación de compresión,  
     - fracción de volumen muerto,  
     - rendimiento volumétrico.  
   - Calcular trabajo indicado por ciclo o por unidad de masa y a partir de él la potencia al eje, considerando las eficiencias mecánicas.

---

## 4. Contenido sugerido del proyecto

```text
FL_COMPRESORES/
├── FL_COMPRESORES.md
├── ejercicios/
│   ├── enunciados/
│   └── soluciones_tex/
├── notebooks/
│   └── julia/
├── ejemplos/
└── recursos/
    ├── formulas_compresibles.pdf
    └── apuntes_compresores.pdf
```

## 5. Notas de edición
- Incluir gráficos de presión y, cuando sea útil, de número de Mach a lo largo de la conducción.
- Indicar explícitamente si la solución obtenida es una cota (máxima o mínima) de caudal, presión o potencia, según el modelo ideal adoptado.
- Mantener consistencia con la metodología y notación fijadas en FLUIDODINAMICA_BASE.md.
- Documentar claramente:
  - las hipótesis físicas,
	- los valores semilla usados en los sistemas no lineales,
  - el comportamiento de convergencia.
- Cuando se comparen modelos adiabático e isotérmico, explicitar las diferencias físicas y de diseño que se desprenden de cada uno.