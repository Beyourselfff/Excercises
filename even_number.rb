#Planteamiento del problema
#Se desea hallar la hipotenusa de un triángulo

#Análisis del problema
#Para hallar la hipotenusa debo igualar el cuadrado de la hipo con la suma de los cuadrados
#Necesito saber los lados del triangulo
#Necesito elevarlos al cuadrado
#Necesito sumarlos
#Necesito igualarlo al cuadrado de la hipotenusa

puts "ingrese el primer lado del triangulo por favor"
SIDE_1 = gets.chomp.to_i

puts "ingrese el segundo lado por favor"
SIDE_2 = gets.chomp.to_i

def triangle
 sum = (SIDE_1**2) + (SIDE_2**2)
 hipotenusa = Math.sqrt(sum)

 puts "La hipotenusa del tríangulo es #{hipotenusa.to_i}"
end

puts triangle


# Plantemiento del problema
# Se necesita hallar la hipotenusa de un triangulo  (Se puede sumar los cuadrados de los lados e igualarlos al cuadrado de la hipotenusa)

# Análisis del problema
#Necesito igual la suma de los cuadrados a la hipotenusa
#Necesito lado a
#Necesito lado b
#Necesito sumar sus cuadrados e igualarlos a la variable al cuadrado
