# ANUALIDADES-VENCIDAS-
FORMULAS DE ANUALIDADES VENCIDAS 
# Compilación de funciones de matemáticas financieras 

En este repositorio se agrupan las funciones y actividades informaticas realizadas en la materia de matemáticas financieras  de la licenciatura en Actuaria y Ciencia de Datos de la UMSNH.

## Funciones de anualidades vencidas 

Con el siguiente código,puede usted cargar las funciones relativas a los calculos de anualidades vencidas:

```{r}
source("https://raw.githubusercontent.com/STEPHANI21/ANUALIDADES-VENCIDAS-/refs/heads/main/formulasAnualidadesVencidas%20(1).R")
```


### Calculo del Valor Futuro en Anualidades Vencidas 

Un inversionista realiza un pago mensual de $1,200 al final de cada mes durante 5 años en una anualidad vencida que paga una tasa de interés del 6% anual, compuesta mensualmente. ¿Cuál es el valor futuro de esta inversión?

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$A$=1,200.00
$i$=6.00% anualizado
$r$=0.005% mensual
$t$=60 meses

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
Anualidad=1200
tasaPeriodo=0.005
nPeriodos=60
# Calculamos el Valor Futuro:
valorFuturo=valorFuturoAnualidadesVencidas(A=Anualidad,r=tasaPeriodo,t=nPeriodos)
# Imprimimos el resultado :
valorFuturo
```

### Calculo de la Anualidad en Anualidades Vencidas 

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$VF$=83724.0366
$i$=6.00% anualizado
$r$=0.005% mensual
$t$=60 meses

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorFut=83724.0366
tasaPeriodo=0.005
nPeriodos=60
# Calculamos la Anualidad:
Anualidad=AnualidadAnualidadesVencidasF(VF=valorFut,r=tasaPeriodo,t=nPeriodos)
# Imprimimos el resultado :
Anualidad
```
### Calculo de el Numeros de pagos en Anualidades Vencidas 

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$VF$=83724.0366
$i$=6.00% anualizado
$r$=0.005% mensual
$A$=1200

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorFut=83724.0366
tasaPeriodo=0.005
Anualidad=1200
# Calculamos el tiempo:
tiempo=tiempoPlazoAnualidadesVencidasF(VF=valorFut,r=tasaPeriodo,A=Anualidad)
# Imprimimos el resultado :
tiempo
```
### Calculo de la tasa del periodo en Anualidades Vencidas 

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$VF$=83724.0366
$t$=60 meses
$A$=1200

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorFut=83724.0366
nPeriodos=60
Anualidad=1200
# Calculamos el tasa:
tasa=tasaAnualidadVencidaVF(VF=valorFut,Tpers=nPeriodos,A=Anualidad)
# Imprimimos el resultado :
tasa
```
### Calculo del Valor Actual en Anualidades Vencidas

Una compañia vende computadoras mediante pagos mensuales vencidos de $500.00 durante 2 años.Si en estos casos se esta cargando con una tasa del 18% anual capitalizable mensualmente.

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$A$=500.00
$i$=18.00% anualizado
$r$=0.015% mensual
$t$=24 meses

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
Anualidad=500
tasaPeriodo=0.015
nPeriodos=24
# Calculamos el Valor Actual:
valorActual=valorActualAnualidadesVencidas(A=Anualidad,r=tasaPeriodo,t=nPeriodos)
# Imprimimos el resultado :
valorActual
```
### Calculo de la Anualidad en Anualidades Vencidas CON VA

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$VA$=10015.20
$i$=18.00% anualizado
$r$=0.015% mensual
$t$=24 meses

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorAct=10015.20
tasaPeriodo=0.015
nPeriodos=24
# Calculamos la Anualidad:
Anualidad=AnualidadAnualidadesVencidasA(VA=valorAct,r=tasaPeriodo,t=nPeriodos)
# Imprimimos el resultado :
Anualidad
```
### Calculo de el Numeros de pagos en Anualidades Vencidas con VA

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$VA$=10015.20
$i$=18.00% anualizado
$r$=0.015% mensual
$A$=500

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorAct=10015.20
tasaPeriodo=0.015
Anualidad=500
# Calculamos el tiempo:
tiempo=tiempoPlazoAnualidadesVencidasA(VA=valorAct,r=tasaPeriodo,A=Anualidad)
# Imprimimos el resultado :
tiempo
```
### Calculo de la tasa del periodo en Anualidades Vencidas con VA

Para ilustrar el ejemplo se tiene el siguiente ejercicio:
$VA$=10015.20
$t$=24 meses
$A$=500

Se realizan los cálculos:
```{r}
# Creamos objetos con valores de entrada
valorAct=10015.20
nPeriodos=24
Anualidad=500
# Calculamos el tasa:
tasa=tasaAnualidadVencidaVA(VA=valorAct,Tpers=nPeriodos,A=Anualidad)
# Imprimimos el resultado :
tasa
```
