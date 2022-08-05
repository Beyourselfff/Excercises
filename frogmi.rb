# Planteamiento del problema

# Se desea construir una clase  "Store", el cual tiene una colección
# de incidentes y un método de "incident_status"

# El incidente debe reportarse y solucionarse
# El incidente tiene dos estados "open" o "solved"
# Por defecto, todo incidente estará abierto, y se deberá cambiar
# a "solved" cuando lo hayan solucionado

# El método incident_status recibe dos fechas(fecha1,fecha2)
# y retorna : El número de casos abiertos / El número de casos solucionados
# El promedio de solución de los problemas entre esas fechas
# ----

# Análisis del problema

# Debemos poder crear los incidentes
# Los incidentes al crearse, tendrán por defecto el estado de abierto
# Deberemos poder cambiar el estado de los incidentes de abierto a "solved"



class Incident
  def initialize
    @solved = false
    @created_at = Time.now
  end

  def solved?
    @solved
  end

  def solved!
    @solved = true
  end
end
