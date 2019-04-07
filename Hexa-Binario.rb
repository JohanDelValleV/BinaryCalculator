class Hexa_Binario

    def concatenar(arreglo)
        result = ''
        while arreglo.length>0
            result += arreglo.shift.to_s
        end
        return result
    end

    def binario(numero)
        binario = Array.new
        while numero>0
            if numero%2 != 0
                binario.unshift(1)
            else
                binario.unshift(0)
            end
            numero = numero/2
        end
        while binario.length<4
            binario.unshift(0)
        end
        return binario
    end

    def hexaToBinario(hexa)
        param = hexa.chars
        result = Array.new
        while param.length>0
            data=param.shift
            case
            when data=='A'
                result.push(concatenar(binario(10)))
            when data=='B'
                result.push(concatenar(binario(11)))
            when data=='C'
                result.push(concatenar(binario(12)))
            when data=='D'
                result.push(concatenar(binario(13)))
            when data=='E'
                result.push(concatenar(binario(14)))
            when data=='F'
                result.push(concatenar(binario(15)))
            else
                result.push(concatenar(binario(data.to_i)))
            end
        end
        return concatenar(result)
    end    
end

app = Hexa_Binario.new
puts "Número hexadecimal: "
STDOUT.flush
hexa = gets.chomp
puts "Resultado: "
print app.hexaToBinario(hexa)