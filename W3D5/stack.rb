class Stack
    attr_reader :data
    
    def initialize
        @data = Array.new 
    end

    def push(el)
      @data << el
    end

    def pop
      @data.pop
    end

    def peek
      @data[-1]
    end
  end