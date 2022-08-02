
# Análisis
# Para tener el promedio, debemos tener la suma de los numeros y dividirlos en la cantidad que ingresaron
# Necesitamos tener "x" numeros
# Necesitamos tener la suma de "x" numeros
# Necesitamos dividirlo entre "x" numeros

# NO sabemos cuantos numeros ingresará, asi que lo mejor sería guardarlo todo en un array para que pueda ser flexible la suma
# Esto deberá estar en un bucle, porque no sabemos cuantos números va a querer.
# Cada vez que un usuario ingrese un número, debemos ingresar este al array
# Para poder tener la división de los números, debemos tener un array.length

def method
  numbers = []
    puts "Please, insert your number"
    number = gets.chomp.to_i
  numbers.push(number)

  until number == ''
    puts "please, insert your number or press enter to skip"
    number = gets.chomp
    numbers.push(number)
  end
  numbers.delete_at(-1)
  average = (numbers.inject(0) { |result, element| result.to_i + element.to_i }/ numbers.length)
end

p method
