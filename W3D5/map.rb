class Map
    def initialize 
        @data = Array.new 
    end

    def set(key,value)
        @data << [key,value]
    end

    
end