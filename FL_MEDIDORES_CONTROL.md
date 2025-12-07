# FL_MEDIDORES_CONTROL

Este proyecto reúne toda la metodología, ejercicios resueltos y lineamientos de trabajo
para **medidores de caudal** (Venturi, orificio, Pitot) y **válvulas de control**
en sistemas hidráulicos, siguiendo el marco general de **FLUIDODINAMICA_BASE**.

El objetivo del proyecto es:

- Proporcionar resoluciones completas, rigurosas y coherentes de ejercicios típicos
  de la asignatura: medición de caudal, estimación de señales de instrumentos y
  selección/operación de válvulas de control.
- Integrar el análisis de medición con problemas de control de procesos (válvulas,
  actuadores, elementos finales).
- Mantener un estilo académico uniforme, con justificación física, dimensional
  y numérica en cada paso.
- Desarrollar versiones finales en LaTeX y notebooks Julia para uso docente.

## Alcance del proyecto

### Medidores de caudal
Se trabaja con los modelos exactos utilizados en clase y en exámenes:

- **Tubo Venturi**  
  - Coeficiente de descarga \(C_D\) según correlaciones experimentales.  
  - Factor de expansibilidad \(Y\) para gases (modelo compresible).  
  - Ecuaciones reducidas derivadas de continuidad + Bernoulli.  
  - Rango de lectura de manómetros diferenciales.  

- **Placa de orificio**  
  - Orificios de borde a escuadra con tomas de esquina.  
  - Modelos de pérdida permanente (\(0{,}4\,\Delta P\), según clase).  
  - Uso de factores \(f_T\) y longitudes equivalentes de Crane para pérdidas en tuberías.  

- **Tubo Pitot**  
  - Relación \(\Delta P = \tfrac12 \rho U_{\max}^2\).  
  - Obtención de velocidad media mediante la curva \(\langle U\rangle/U_{\max}\)
    en función de Reynolds.  
  - Integración al caudal total en conductos.  

### Válvulas de control
- Modelos hidráulicos basados en  
  \[
    \Delta P = C\,K_v\,Q^2,
  \]
  válidos en régimen turbulento.
- Interpretación de curvas del fabricante:  
  \[
    \frac{Q_x}{Q_{\max}}
    = \sqrt{\frac{K_{v,\mathrm{TA}}}{K_{v,x}}}.
  \]
- Características A, B, C según válvulas:
  - Quick-opening  
  - Lineal  
  - Equal-percentage  
- Calidad del lazo de control: sensibilidad, no linealidad, rangeabilidad,
  saturación y comportamiento dinámico.

## Lineamientos de resolución

Todos los ejercicios deben resolverse siguiendo estrictamente la metodología
**FLUIDODINAMICA_BASE**:

1. Reformulación sintética del enunciado.  
2. Lista de datos, incógnitas y unidades.  
3. Hipótesis físicas y termodinámicas explícitas.  
4. Planteo de ecuaciones gobernantes: continuidad, cantidad de movimiento,
   energías y ecuaciones de estado cuando corresponda.  
5. Derivación de ecuaciones reducidas (Venturi, orificio, Pitot, válvulas).  
6. Desarrollo simbólico antes de sustituir valores numéricos.  
7. Sustitución numérica ordenada, con unidades en cada paso.  
8. Verificación dimensional, numérica y física.  
9. Comentario final sobre el sentido físico del resultado.  

## Entregables del proyecto

- **Archivos .tex** con solución final de cada ejercicio.  
- **Notebooks Julia** con teoría previa a cada cálculo y uso de `@show` para cada número.  
- **Diagramas conceptuales de instrumentación y control** donde corresponda.

## Bibliografía interna utilizada

- `medidores_caudal.pdf`  
- `medidores_presion.pdf`  
- `continuacion_medidores_valvulas.pdf`  
- `medidores_nivel_temperatura_intro_control.pdf`  
- `GRAFICOS - Medidores.pdf`

Todos los modelos utilizados deben ser coherentes con estas notas y con los
apuntes de la asignatura.