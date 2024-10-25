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
tasa=tasaAnualidadVencidaVF(VF=valorFut,t=nPeriodos,A=Anualidad)
# Imprimimos el resultado :
tasa
```
