class Player 
    attr_reader :name
    attr_accessor :hp

    def to_s
        @name
    end

    def initialize name
        @name = name
        @hp = 3
    end

    def dead?
        @hp <= 0
    end
end

