# Definición de la función switchPersonal
switchPersonal <- function(numero_mes) 
  {
  nombre_mes <- switch(numero_mes,
                       "Enero",
                       "Febrero",
                       "Marzo",
                       "Abril",
                       "Mayo",
                       "Junio",
                       "Julio",
                       "Agosto",
                       "Septiembre",
                       "Octubre",
                       "Noviembre",
                       "Diciembre",
                       "Número de mes inválido"
                      )
    return(nombre_mes)
   }

# Ejemplo de uso
numero_mes <- 3  # Cambia este valor para tener diferentes resultados
nombre_del_mes <- switchPersonal(numero_mes)
cat("El mes correspondiente al número", numero_mes, "es:", nombre_del_mes, "\n")
