class Octal_Binario
    
    load 'Calculadora.rb'

    def concatenar(arreglo)
        result = ''
        while arreglo.length>0
            result += arreglo.shift.to_s
        end
        return result
    end

    def binario(numero)
        binario = Array.new
        while numero > 0
            if numero%2 != 0
                binario.unshift(1)
            else
                binario.unshift(0)
            end
            numero = numero/2
        end
        while binario.length<3
            binario.unshift(0)
        end
        return binario
    end

    def octalToBin(octal)
        result = Array.new
        param = octal.chars.map(&:to_i)
        while param.length>0
            data = param.shift
            aux = binario(data.to_i)
            result.push(concatenar(aux))
        end
        return concatenar(result)
    end
end

app=Octal_Binario.new
puts "Numero octal: "
STDOUT.flush
octal = gets.chomp
puts "Resultado: "
print app.octalToBin(octal)