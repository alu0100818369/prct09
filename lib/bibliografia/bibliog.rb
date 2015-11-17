class Bibliog
    attr_reader :autores, :titulo, :serie, :editorial, :edicion, :mes, :anno, :isbn
    
    def initialize(a, t, e, ed, mes, anno, isbn, s="none")
        @autores = a
        @titulo = t
        @serie = s
        @editorial = e
        @edicion = ed
        @mes = mes
        @anno = anno
        @isbn = isbn
    end
    
    def get_autores
        size = @autores.length
        i = 0
        while i < (size-1)
            cadena = "#{cadena}"+"#{@autores[i]}, "
            i = i+1
        end
        cadena = "#{cadena}"+"#{@autores[i]}"
    end
    
    def get_titulo
        "#{@titulo}"
    end
    
    def get_serie
        "#{@serie}"
    end
    
    def get_editorial
        "#{@editorial}"
    end
    
    def get_edicion
        "#{@edicion}"
    end
    
    def get_fecha
        "#{@mes}, #{@anno}"
    end
    
    def get_isbn
        size = @isbn.length
        
        a = @isbn[0].length
        
        cadena = "ISBN-#{a}: "
        if a > 10
            cadena = "#{cadena}"+"#{@isbn[0][-a..-11]}"+"-"+"#{@isbn[0][-10..-1]}"
        else
            cadena = "#{cadena}"+"#{@isbn[0]}"
        end
        
        i = 1
        while i < size
            a = @isbn[i].length
            
            cadena = "#{cadena}"+"\nISBN-#{a}: "
            if a > 10
                cadena = "#{cadena}"+"#{@isbn[i][-a..-11]}"+"-"+"#{@isbn[i][-10..-1]}"
            else
                cadena = "#{cadena}"+"#{@isbn[i]}"
            end
            i = i+1
        end
        cadena
    end
    
    def to_s
        cadena = "#{get_autores}.\n"
        cadena = "#{cadena}"+"#{get_titulo}\n"
        cadena = "#{cadena}"+"(#{get_serie})\n"
        cadena = "#{cadena}"+"#{get_editorial}; #{get_edicion} edition (#{get_fecha})\n"
        cadena = "#{cadena}"+"#{get_isbn}"
    end
end


class Libro < Bibliog
    
end