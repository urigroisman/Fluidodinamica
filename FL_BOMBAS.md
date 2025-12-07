# FL_BOMBAS  
### Flujo incompresible y bombas

Este proyecto contiene ejercicios, soluciones y notebooks relacionados con flujo incompresible en tuberías y análisis de bombas.

---

## 1. Alcance del proyecto

Aquí se resuelven exclusivamente:

- Bernoulli con término de bomba.  
- Pérdidas distribuidas + pérdidas localizadas (Crane).  
- Curvas del sistema y curvas de bomba.  
- Determinación del punto de operación.  
- NPSH y cavitación.  
- Acoples de bombas (serie/paralelo).  
- Leyes de semejanza.  
- Potencias hidráulica, mecánica y eléctrica.  

No se aplican modelos compresibles en este proyecto.

---

## 2. Modelo físico básico

- Flujo **incompresible**.  
- Propiedades constantes (\(\rho, \mu\)).  
- Pérdidas distribuidas:
  \[
  H_f = c_f \frac{L}{D}\,\frac{u^2}{2g}
  \]
- Pérdidas localizadas utilizando **Crane TP-410**.  
- Curva del sistema:
  \[
  H_{\text{sist}}(Q) = H_{\text{estática}} + H_{\text{dinámica}}(Q)
  \]
- Punto de operación:
  \[
  H_{B}(Q) = H_{\text{sist}}(Q)
  \]

---

## 3. Metodología específica

Seguir siempre la metodología general definida en `FLUIDODINAMICA_BASE.md`, con énfasis en:

- Identificar correctamente tramos, niveles y conexiones.  
- Calcular \(c_f\) con Churchill o Moody.  
- Convertir todos los caudales a m³/s.  
- Evaluar correctamente la altura estática.  
- Utilizar coeficientes \(K\) coherentes con Crane (incluyendo factores multiplicativos con \(f_T\)).  
- Verificar la posición del punto de operación respecto al BEP si existen curvas del fabricante.

---

## 4. Contenido sugerido del proyecto

```text
FL_BOMBAS/
├── FL_BOMBAS.md
├── ejercicios/
│   ├── enunciados/
│   └── soluciones_tex/
├── notebooks/
│   └── julia/
└── recursos/
    ├── tablas_crane.pdf
    └── curvas_bomba/
```
---

## 5. Notas de edición

- Mantener un estilo gráfico homogéneo en las curvas $begin:math:text$H\(Q\)$end:math:text$.  
- Indicar claramente la metodología empleada en cada paso.  
- Justificar todas las hipótesis, especialmente las relacionadas con pérdidas.  
- Documentar la obtención del punto de operación.  
- Cuando corresponda, incluir análisis de cavitación (NPSHa vs NPSHr).