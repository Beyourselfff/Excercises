# planteamiento
# Debemos saber si un numero es divisible por 7 y mayor a 40

#Análisis
# Debemos obtener un número
# Necesitamos que el residuo sea cero
# Validar que sea mayor a 40

puts "ingrese su número por favor"
answer = gets.chomp.to_i

if answer % 7 == 0 && answer >= 40
  puts "OK"
else
  puts "Intente nuevamente"
end
