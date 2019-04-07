class Calculadora
    
    def concatenar(arreglo)
        result = ''
        while arreglo.length>0
            result += arreglo.shift.to_s
        end
        return result
    end

    def binario(numero)
        binario = Array.new
        resultBin = ''
        while numero > 0
            if numero%2 != 0
                binario.unshift(1)
            else
                binario.unshift(0)
            end
            numero = numero/2
        end
        return binario
    end

    def octal(numero)
        octal = Array.new
        result =''
        while(numero > 0)
            residuo = numero%8
            octal.unshift(residuo)
            numero = numero/8
        end
        return concatenar(octal)
    end

    def hexa(numero)
        hexa = Array.new
        resultHexa = ''
        if numero == 0
            hexa.unshift(0)
        end
        while numero > 0
            residuo = numero%16
            if residuo > 9
                case
                    when residuo==10
                        hexa.unshift('A')
                    when residuo==11
                        hexa.unshift('B')
                    when residuo==12
                        hexa.unshift('C')
                    when residuo==13
                        hexa.unshift('D')
                    when residuo==14
                        hexa.unshift('E')
                    when residuo==15
                        hexa.unshift('F')
                end
            else
                hexa.unshift(residuo.to_i)
            end
            numero = numero/16
        end
        return concatenar(hexa)
    end

end

app = Calculadora.new
puts "Ingrese un número:"
STDOUT.flush
numero = gets.chomp.to_i
puts "Binario: \n"
print app.binario(numero)
puts "\n Octal: \n"
print app.octal(numero)
puts "\n Hexadecimal: \n"
print app.hexa(numero)