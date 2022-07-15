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

 puts "La hipotenusa del tríangulo es #{hipotenusa}"
end

puts triangle
