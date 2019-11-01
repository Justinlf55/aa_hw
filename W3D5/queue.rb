class Queue
    attr_reader :line 

    def initialize
        @line = Array.new
    end

    def enqueue(el)
        @line << el
    end

    def dequeue
        @line.shift
    end

    def peek
        @line.first
    end
end