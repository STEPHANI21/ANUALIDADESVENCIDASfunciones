#Se presentan las funciones de interes simple 
#Autor:Stephani Olvera Chavez 
#V1.0 :20 de OCTUBRE de 2024

#Valor futuro en anualidades anticipadas teniendo: anualidad,tasa de interes,periodo y numero de plazo de anulidades 

valorFuturoAnualidadesVencidas=function(A,r,t){
  xSalida=A*(((1+r)^ t-1)/t)
  return(xSalida)
}


#Anualidad en anualidades vencidas teniendo:valor futuro ,tasa del periodo y numero de pagos.

AnualidadAnualidadesVencidas=function(VF,r,t){
  xSalida=VF*r/(1+r)^t-1
  
  return(xSalida)
}


#Numeros de pagos o plazo conociendo valor futuro,anualidad,y tasa del periodo.
tiempoPlazoAnualidadesVencidas=function(A,VF,r){
  xSalida=(log10((VF*r/A)+1)/log10(1+r))
  
  return(xSalida)
}


#Tasa del periodo conociendo valor futuro,numero de pagos y monto de la anualidad.
tasaAnualidadVencidaVF=function(VF,A,Tpers,umbral=10*(10^-18)){
  
  r=0.01
  iteraciones=0
  
  izquierda=VF/A
  derecha=(((1+r)^Tpers)-1)/r
  diferencia=izquierda-derecha
  
  if (diferencia>0){
    # Cuando la r inicial es menor a lo deseado:  
    # Algoritmo de alza de tasa:
    
    iteraciones=0
    r0=r
    while (diferencia>0){
      r1=r  
      iteraciones=iteraciones+1  
      r=r*1.01
      
      izquierda=VF/A
      derecha=(((1+r)^Tpers)-1)/r
      diferencia=izquierda-derecha
      cat("\f")
      print(paste0("Iteración de alza tasa:",iteraciones))
      
      r2=r
      
    }  
    
    #diferencia1=diferencia
    diferenciaTasa=r-r0
    diferencia=umbral
    # algoritmo de la bisección:    
    while (abs(diferenciaTasa)>umbral){
      
      iteraciones=iteraciones+1
      r=(r1+r2)/2    
      
      izquierda=VF/A
      derecha=(((1+r)^Tpers)-1)/r
      diferencia=izquierda-derecha
      
      if (diferencia>0){
        r1=r1
        r2=r
        
      } else {
        r2=r2  
        r1=r
        
      }
      diferenciaTasa=r-r0
      r0=r
      cat("\f")
      print(paste0("Iteración de bisección: ",iteraciones))
    }
    
  } else {
    # Cuando la r inicial es mayor a lo deseado:  
    # Algoritmo de bajada de tasa:
    iteraciones=0
    r0=r
    while (diferencia<0){
      r2=r 
      iteraciones=iteraciones+1  
      r=r/1.01
      
      izquierda=VF/A
      derecha=(((1+r)^Tpers)-1)/r
      diferencia=izquierda-derecha
      
      cat("\f")
      print(paste0("Iteración de baja de tasa:",iteraciones))
      
      r1=r
      
    }  
    
    #diferencia1=diferencia
    diferenciaTasa=r-r0
    r0=r
    
    diferencia=umbral    
    # algoritmo de la bisección:      
    while (abs(diferenciaTasa)>umbral){
      iteraciones=iteraciones+1
      r=(r1+r2)/2    
      
      izquierda=VF/A
      derecha=(((1+r)^Tpers)-1)/r
      diferencia=izquierda-derecha
      
      if (diferencia>0){
        r1=r
        r2=r2
        
      } else {
        r2=r  
        r1=r1
        
      }
      
      diferenciaTasa=r-r0
      r0=r
      
      cat("\f")
      print(paste0("Iteración de biseccción:",iteraciones))
    }
  
  }
  
  # Genera objeto de salida:
  objetoTasa=list(Iteraciones=iteraciones,tasa=r)
  
  cat("\f")
  print(paste0("Total de iteraciones realizadas: ",iteraciones))
  
  return(objetoTasa) 
  
}


#Valor actual en anualidades anticipadas teniendo: anualidad,tasa de interes,periodo y numero de plazo de anulidades 

valorActualAnualidadesVencidas=function(A,r,t){
  xSalida=A*(1-(1+r)^-t/r)
    
  return(xSalida)
}

#Anualidad en anualidades anticipadas teniendo: valor actual,tasa de interes,periodo y numero de plazo de anulidades 

AnualidadAnualidadesVencidas=function(VA,r,t){
  xSalida=(VA/(1-(1+r)^-t/r))
  
  return(xSalida)

}

#Numeros de pagos o plazo conociendo valor actual,anualidad,y tasa del periodo.
tiempoPlazoAnualidadesVencidas=function(A,VF,r){
  xSalida=(-log10(1-(VF*r/A))/log10(1+r))
  
  return(xSalida)
}

#Tasa del periodo conociendo valor actual,numero de pagos y monto de la anualidad.
tasaAnualidadVencidaVA=function(VA,A,Tpers,umbral=10*(10^-18)){
  
  r=0.001
  iteraciones=0
  
  izquierda=VA/A
  derecha=(1-((1+r)^-Tpers))/r
  diferencia=izquierda-derecha
  
  if (diferencia<0){
    # Cuando la r inicial es menor a lo deseado:  
    # Algoritmo de alza de tasa:
    
    iteraciones=0
    r0=r
    while (diferencia<0){
      r1=r  
      iteraciones=iteraciones+1  
      r=r*1.01
      
      izquierda=VA/A
      derecha=(1-((1+r)^-Tpers))/r
      diferencia=izquierda-derecha
      cat("\f")
      print(paste0("Iteración de alza tasa:",iteraciones))
      
      r2=r
      
    }  
    #diferencia1=diferencia
    diferenciaTasa=r-r0
    diferencia=umbral
    # algoritmo de la bisección:    
    while (abs(diferenciaTasa)>umbral){
      
      iteraciones=iteraciones+1
      r=(r1+r2)/2    
      
      izquierda=VA/A
      derecha=derecha=(1-((1+r)^-Tpers))/r
      diferencia=izquierda-derecha
      
      if (diferencia>0){
        r1=r1
        r2=r
        
      } else {
        r2=r2  
        r1=r
        
      }
      diferenciaTasa=r-r0
      r0=r
      cat("\f")
      print(paste0("Iteración de bisección: ",iteraciones))
    }
    
  } else {
    # Cuando la r inicial es mayor a lo deseado:  
    # Algoritmo de bajada de tasa:
    iteraciones=0
    r0=r
    while (diferencia>0){
      r2=r 
      iteraciones=iteraciones+1  
      r=r/1.01
      
      izquierda=VA/A
      derecha=(1-((1+r)^-Tpers))/r
      diferencia=izquierda-derecha
      cat("\f")
      print(paste0("Iteración de baja de tasa:",iteraciones))
      
      r1=r
      
    }  
    #diferencia1=diferencia
    diferenciaTasa=r-r0
    r0=r
    
    diferencia=umbral    
    # algoritmo de la bisección:      
    while (abs(diferenciaTasa)>umbral){
      iteraciones=iteraciones+1
      r=(r1+r2)/2    
      
      izquierda=VA/A
      derecha=(1-((1+r)^-Tpers))/r
      diferencia=izquierda-derecha
      
      if (diferencia>0){
        r1=r
        r2=r2
        
      } else {
        r2=r  
        r1=r1
        
      }
      
      diferenciaTasa=r-r0
      r0=r
      
      cat("\f")
      print(paste0("Iteración de biseccción:",iteraciones))
    }
  }

  # Genera objeto de salida:
  objetoTasa=list(Iteraciones=iteraciones,tasa=r)
  
  cat("\f")
  print(paste0("Total de iteraciones realizadas: ",iteraciones))
  
  return(objetoTasa) 
  
}
