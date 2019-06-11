class Player 
    attr_reader :name, :ap
    attr_accessor :hp

    def to_s
        @name
    end

    def initialize name
        @name = name
    end

    def dead?
        return false
    end
end

