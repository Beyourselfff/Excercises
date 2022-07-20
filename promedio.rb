# Se quiere tener el promedio de los números ingresados

# Análisis del problema
# Para tener qué sumar, necesitamos tener X números
# Para tener el promedio necesitamos sumar los X números
# Para tener el promedio, debemos dividir la suma de x números en la cantidad de números ingresados

# No sabemos cuantos números va a ingresar el usuario, así que tendríamos que crear
# Un bucle hasta que permita ingresar los números hasta que el usuario ya no quiera ingresar
# Estos números ingresados, deberían guardarse en un array
# Como será en un array, deberemos hacer la suma de los números internos( maybe an each do sum=+ y luego dividirlo entre el length)

#

my_numbers = []

puts 'Please insert your number(s) or press enter to continue '
number = gets.chomp
my_numbers.push(number)

until number == ''
  puts 'Ingrese otro número or press enter to continue!'
  number = gets.chomp
  my_numbers.push(number)
end

my_numbers.delete_at(-1)
