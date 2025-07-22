## Flujo de un fluido compresible en una tubería horizontal, de sección constante, modelado como gas ideal.

<br>

### Comparación del flujo másico real con los modelos adiabático e isotermico

La elección del modelo depende de las condiciones del problema y de lo que se busque calcular. 

El modelo "correcto" suele razonarse mediante la comparación entre los mismos y el flujo real, en donde el **sentido de la transferencia de calor juega un rol importante**. 

Normalmente hacemos la comparación entre los modelos y la realidad según el flujo que se produce **a partir de una diferencia de presiones conocida** (además de todos los otros parámetros necesarios del sistema), pero también se puede extrapolar el razonamiento a las presiones necesarias dado un flujo. **¿Cómo?, DEBERES PARA EL SABADO**



### 1. $T_0$ es menor a $T_{amb}$

 <br>

#### 1.a. **$T_0$ es mucho menor a $T_{amb}$**


La transferencia de calor será siempre desde el ambiente hacia el fluido, por lo que la relación de flujos es la siguiente:
$$
w_{AD}>w_{ISO}>w_{REAL}
$$

En este caso, el flujo real será menor que cualquiera de los calculados a partir de los modelos, por ende, la diferencia de presiones necesaria para lograrlo será mayor (dado P2 entonces podes calcular P0 y decir que se requiere un valor mayor, o dado P0 podes decir que se requiere un valor menor de P2 del calculado). **La "mejor cota" que podrías dar a la diferencia de presión la obtendrías usando el modelo isotérmico.**
 
 <br><br>


##### 1.b **$T_0$ es ligeramente menor a $T_{amb}$**


como el potencial de temperaturas no es suficiente como para calentar el gas inicialmente, la relación de flujos es la siguiente:
$$ 
w_{AD}>w_{REAL}>w_{ISO}
$$

Siguiendo el razonamiento previo, se puede decir que la diferencia de presiones necesaria para lograr el flujo real será menor que la calculada por el modelo isotérmico y mayor que la calculada por el modelo adiabático. **El modelo conservador en este caso es el isotérmico**, ya que permite calcular el valor más grande de diferencia de presiones (si se dispone de la diferencia de presión y esta es suficiente para sostener un flujo isotérmico, entonces estas cubierto para la situación real).


<br><br>

#### 2. $T_0$ es mayor a $T_{amb}$
 
<br>
 
##### 2.a. **$T_{0}$ es mucho mayor a $T_{amb}$**

<br>

**DEBERES PARA EL SABADO**

<br><br>


##### 2.b **$T_0$ es ligeramente mayor a $T_{amb}$**

<br>

**DEBERES PARA EL SABADO**