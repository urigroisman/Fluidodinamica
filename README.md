# Fluidodinámica

Repositorio del curso **Fluidodinámica** a dictarse en el Instituto Newton en paralelo al dictado en la Facultad de Ingeniería (UdelaR) en el semestre 02/2025.

Este repositorio contiene el material teórico, práctico y de apoyo que los estudiantes utilizarán a lo largo del semestre, incluyendo:

- Resúmenes de clase en formato Markdown (`Teorico/`)
- Guías de ejercicios con resoluciones en notebooks (`Practico/`)
- Tablas, diagramas y ábacos técnicos necesarios (`tablas/`)
- Plantillas y ejercicios de cálculo en LibreOffice Calc (`Taller Calc/`)

---

## 📚 Estructura del repositorio *Fluidodinámica*

El repositorio se organiza de forma modular, siguiendo la estructura temática del curso e incluyendo material teórico, ejercicios prácticos, solvers numéricos y documentación complementaria.

```text
Fluidodinamica/
├── Practico/
│   ├── Incompresible/                 ← Guías y ejercicios de fluidos incompresibles
│   ├── Compresible/                   ← Guías y ejercicios de flujo compresible
│   ├── MedidoresValvulas_y_Control/   ← Medidores (Venturi, orificio, Pitot), válvulas y control
│   └── Maquinas/
│       ├── Bombas/                    ← Problemas, guías y material asociado a bombas
│       └── Compresores/               ← Problemas y material de compresores
│
├── Teorico/
│   ├── Incompresible/                 ← Notas teóricas y referencias del bloque incompresible
│   ├── Compresible/                   ← Teoría de flujo compresible, Mach, ondas, toberas
│   ├── MedidoresValvulas_y_Control/   ← Teoría de medición de caudal y control de procesos
│   └── Maquinas/
│       ├── Bombas/                    ← Teoría de bombas, curvas H–Q, NPSH, semejanza
│       └── Compresores/               ← Teoría de compresores, modelos termodinámicos y eficiencias
│
├── solvers/
│   ├── CALC/                          ← Planillas ODS/Calc para resolución de sistemas no lineales
│   └── Julia/                         ← Scripts y notebooks Julia (ejercicios asistidos por cómputo)
│
├── tablas_abacos/                     ← Diagramas, tablas Crane, ábacos y material de consulta
├── Examenes/                          ← Enunciados oficiales de exámenes de la asignatura
├── Parciales/                         ← Parciales resueltos y/o enunciados históricos
│
├── FL_BASE.md                         ← Metodología general FLUIDODINAMICA_BASE
├── FL_BOMBAS.md                       ← Lineamientos específicos para bombas
├── FL_COMPRESORES.md                  ← Lineamientos específicos para compresores
├── FL_MEDIDORES_CONTROL.md            ← Lineamientos específicos para medidores y control
├── preambulo_general_resolucion_ejercicios.tex
│                                      ← Preambulo oficial para ejercicios en LaTeX
└── README.md
```

---

## 📘 Contenido del curso

Se cubren los siguientes temas:

### 🔹 Flujo incompresible
- Ecuaciones de Navier-Stokes
- Flujo en conductos
- Fricción y caída de presión
- Cálculo de pérdidas usando diagramas y tablas

### 🔹 Flujo compresible
- Ecuación de energía y relación de ondas
- Flujo isentrópico, choque normal
- Aplicaciones en ductos, toberas, válvulas

---

## ⚙️ Requisitos

Para ejecutar los notebooks de resolución práctica se requiere:

- [Julia ≥ 1.9](https://julialang.org/downloads/)
- Librerías: `Plots`, `Unitful`, `IJulia`, etc. (ver `Project.toml` si existiera)
- LibreOffice Calc (para el Taller)

---

## 🚀 Cómo usar

1. Clonar este repositorio:

   ```bash
   git clone https://github.com/urigroisman/Fluidodinamica.git
   cd Fluidodinamica
   ```

2. Abrir el notebook deseado en `Practico/Guia_X/` con Jupyter:

   ```julia
   using IJulia
   notebook()
   ```

3. Consultar apuntes en `Teorico/` y tablas en `tablas/`.

---

## 📑 Licencia

Material académico. Se permite su uso y reproducción con fines educativos, siempre citando la fuente.

---

## ✏️ Autor

**Uri Groisman**  
Docente de Mecánica de los Fluidos – Instituto Newton - Uruguay  
[LinkedIn](https://www.linkedin.com/in/urigroisman) • [GitHub](https://github.com/urigroisman)