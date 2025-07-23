# Fluidodinámica

Repositorio del curso **Fluidodinámica** a dictarse en el Instituto Newton en paralelo al dictado en la Facultad de Ingeniería (UdelaR) en el semestre 02/2025.

Este repositorio contiene el material teórico, práctico y de apoyo que los estudiantes utilizarán a lo largo del semestre, incluyendo:

- Resúmenes de clase en formato Markdown (`Teorico/`)
- Guías de ejercicios con resoluciones en notebooks (`Practico/`)
- Tablas, diagramas y ábacos técnicos necesarios (`tablas/`)
- Plantillas y ejercicios de cálculo en LibreOffice Calc (`Taller Calc/`)

---

## 📂 Estructura del repositorio

```
Fluidodinamica/
├── Practico/
│   ├── Guia_1/                    ← enunciado + resolución en Julia
│   ├── Guia 2/
│   ├── Guia 3/
│   ├── Guia 4/
│   └── Taller Calc/              ← uso de LibreOffice para resolver problemas
├── tablas-abacos/              ← ✅ Carpeta principal con datos técnicos
│   ├── Diagrama de Moody.pdf
│   ├── Tablas de Crane.pdf
│   └── ...
└── Teorico/
    ├── Incompresible/            ← Apuntes en formato Markdown
    ├── Compresible/
    
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