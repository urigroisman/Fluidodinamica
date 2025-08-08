# Ejercicio 2 – Guía Nº1: Longitud equivalente total (con valores corregidos según Tablas de Crane)

## Enunciado resumido

Se solicita determinar la **longitud equivalente total** entre los puntos A y B en un sistema de cañerías de acero comercial de 2" Sch 40 con 30 m de cañería recta, y accesorios que generan pérdidas localizadas.

Usamos valores de \( K \) tomados de las *Tablas de Crane TP-410*, expresados como múltiplos de \( f_T \), salvo indicación contraria.

---

## Datos

- Diámetro interior: $D = 0.0525$ m (Sch 40)
- Longitud recta de cañería: $L = 30$ m
- Factor de fricción totalmente turbulento: $f_T = 0.019$
- Factor común: $\displaystyle \frac{D}{f_T} = \frac{0.0525}{0.019} = 2.7632$

---

## Cálculo de $L_{\text{eq},i}$ para cada accesorio

| Accesorio                            | $K_i$                      | $L_{\text{eq},i}$ [m] |
|-------------------------------------|----------------------------|------------------------|
| Entrada canto vivo                  | $0.5$                      | $2.7632 \cdot 0.5 = 1.382$ |
| 2 Codos 90° estándar                | $30 \cdot 2 \cdot f_T = 1.14$   | $2.7632 \cdot 1.14 = 3.150$ |
| Válvula esclusa (abierta)          | $8 \cdot f_T = 0.152$     | $2.7632 \cdot 0.152 = 0.420$ |
| Válvula globo (abierta)            | $340 \cdot f_T = 6.46$    | $2.7632 \cdot 6.46 = 17.850$ |
| Válvula mariposa (abierta, 2")     | $45 \cdot f_T = 0.855$    | $2.7632 \cdot 0.855 = 2.363$ |

---

## Longitud equivalente total

Suma de contribuciones:

$$
L_{\text{eq}} = 1.382 + 3.150 + 0.420 + 17.850 + 2.363 = 25.165 \, \mathrm{m}
$$

Sumando la longitud recta:

$$
L_{\text{total}} = L + L_{\text{eq}} = 30 + 25.165 = \boxed{55.17 \, \mathrm{m}}
$$

---

## Conclusión

El resultado final:

$$
\boxed{L_{\text{total}} = 55.2 \, \mathrm{m}}
$$

coincide con el valor provisto en el enunciado, siempre que interpretemos que los **30 m de cañería recta forman parte del resultado total**, y no que la longitud equivalente sea 55 m **adicionales**.

Se confirma así la coherencia del problema y se validan los valores de \( K \) empleados según *Crane TP-410*.
