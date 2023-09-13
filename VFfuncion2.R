# Definición de la función VFfuncion2
VFfuncion2 <- function(nIter, umbral) {
  # Inicializar variables
  resultado_actual <- 1  # Inicializar el valor actual
  resultado_anterior <- 0  # Inicializar el valor anterior
  iteracion <- 0  # Inicializar el contador de iteraciones
  
  # Bucle while para aproximar el número e
  while (iteracion < nIter) {
    iteracion <- iteracion + 1  # Incrementar el contador de iteraciones
    
    # Calcular el valor futuro actual
    resultado_actual <- resultado_actual + 1/factorial(iteracion)
    
    # Verificar las condiciones de paro
    if (abs(resultado_actual - resultado_anterior) < umbral) {
      cat("El algoritmo se detuvo debido a la diferencia entre las iteraciones.\n")
      break
    }
    
    if (iteracion == nIter) {
      cat("El algoritmo se detuvo debido al número máximo de iteraciones.\n")
      break
    }
    
    # Actualizar el valor anterior
    resultado_anterior <- resultado_actual
  }
  
  # Imprimir el resultado
  cat("Aproximación de e después de", iteracion, "iteraciones:", resultado_actual, "\n")
  
  return(resultado_actual)
}

# Ejemplo 
nIter = 1000  # Número máximo de iteraciones
umbral = 1e-6  # Umbral de diferencia entre iteraciones
resultado_aproximacion = VFfuncion2(nIter, umbral)

