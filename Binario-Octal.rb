class Binario_Octal
    
    def concatenar(arreglo)
        result = ''
        while arreglo.length>0
            result += arreglo.shift.to_s
        end
        return result
    end

    def binToOctal(binario)
        bin = binario.chars.map(&:to_i)
        octal = Array.new
            while bin.length>0
                aux = Array.new
                result = 0
                while aux.length<3
                    aux.unshift(bin.pop)
                end
                # print aux
                if aux.at(0)==1
                    result+=4
                end
                if aux.at(1)==1
                    result+=2
                end
                if aux.at(2)==1
                    result+=1
                end
                octal.unshift(result)
            end
        return concatenar(octal)
    end
end

app = Binario_Octal.new
puts "Número binario: "
STDOUT.flush
numero = gets.chomp
puts "Resultado: "
print app.binToOctal(numero)