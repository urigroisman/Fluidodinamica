# FLUIDODINAMICA_BASE  
### Proyecto maestro — Metodología, notación y estilo

Este repositorio define la **metodología estándar**, la **notación global**, las **convenciones**, las **plantillas LaTeX** y el **estilo de resolución** para todos los ejercicios del curso de Fluidodinámica.

Los proyectos derivados:

- `FL_BOMBAS` — flujo incompresible y bombas  
- `FL_COMPRESORES` — flujo compresible y compresores  

deben aplicar las reglas establecidas aquí.

---

## 1. Objetivo del proyecto

- Unificar la metodología docente.  
- Mantener notación y convenciones coherentes.  
- Evitar mezclar estilos entre incompresible y compresible.  
- Servir como fuente “canónica” para los proyectos específicos.  
- Almacenar plantillas `.tex`, `.md` y notebooks base en Julia.

---

## 2. Metodología general para resolución de ejercicios

Esta estructura debe seguirse **siempre**, salvo excepciones justificadas.

1. **Reescritura sintética del enunciado.**  
2. **Datos, incógnitas y unidades.**  
3. **Hipótesis físicas y termodinámicas.**  
4. **Interpretación física del sistema.**  
5. **Ecuaciones gobernantes.**  
6. **Simplificaciones y cierre del modelo.**  
7. **Desarrollo simbólico claro.**  
8. **Sustitución numérica ordenada.**  
9. **Verificación de unidades y órdenes de magnitud.**  
10. **Comentario final sobre el sentido físico.**

---

## 3. Notación global

- \(c_f\): factor de fricción Darcy–Weisbach.  
- \(K\): coeficientes de pérdidas según Crane TP-410.  
- \(Q\): caudal volumétrico.  
- \(w = \dot{m}\): flujo másico.  
- \(v = 1/\rho\): volumen específico.  
- Presiones siempre **absolutas** en compresibles.  
- Números adimensionales: \(Re\), \(Ma\), \(Fr\).  

---

## 4. Convenciones de unidades

- Sistema base: **SI**.  
- Presión: Pa o kPa.  
- Caudales: cálculos en m³/s (aunque las curvas puedan venir en m³/h).  
- Potencias: W o kW.  
- Alturas hidráulicas en metros de fluido.  

---

## 5. Instrucciones para notebooks en Julia

- Cada paso teórico debe estar precedido por una celda Markdown.  
- Cada valor numérico debe imprimirse con `@show variable;`.  
- No fijar manualmente los métodos de NonlinearSolve.jl.  
- Gráficos sobrios, pedagógicos y sin decoraciones superfluas.  
- Explicaciones conceptuales claras antes de cada bloque de cálculo.  

---

## 6. Contenido recomendado del proyecto

```text
FLUIDODINAMICA_BASE/
├── FLUIDODINAMICA_BASE.md
├── metodologia_bombas.md
├── metodologia_compresibles.md
├── notacion_global.md
├── convenciones_unidades.md
├── templates/
│   ├── solucion_bombas.tex
│   ├── solucion_compresibles.tex
│   └── notebook_base.jl.md
└── ejemplos/
```

---

## 7 Rol del proyecto

Este proyecto actúa como una “constitución metodológica” del curso.
Nada en los proyectos específicos debe contradecir lo establecido aquí.

Todo nuevo ejercicio, notebook o solución debe construirse siguiendo las reglas de este proyecto.