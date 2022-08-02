# planteamiento
# Debemos saber si un numero es divisible por 7 y mayor a 40

#Análisis
# Debemos obtener un número
# Necesitamos que el residuo sea cero
# Validar que sea mayor a 40





# Planteamiento
# Debemos saber si un numero es divisible entre 9 y mayor a 40
# Analisis

#Debemos obtener un número
#Debemos verificar si es divisible entre 9 (residuo sea 0)
#Debemos validar que sea mayor a 40


puts "ingrese su número por favor!"
answer = gets.chomp.to_i

if answer % 9 == 0 && answer >= 40
  puts "número válido!"
else
  puts "a ok"
end
