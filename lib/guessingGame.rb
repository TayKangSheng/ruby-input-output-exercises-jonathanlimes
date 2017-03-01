class Game

    def initialize
    end

    @@counter = 0
    @@answer = rand(100)
    
    p "Guess a number between 1 and 100"
    def guess
      response = gets.chomp.to_i
      if @@answer < response
        p "The number is lower than #{response}. Guess again"
        @@counter += 1
        self.guess
      elsif @@answer > response
        p "The number is higher than #{response}. Guess again"
        @@counter += 1
        self.guess
      else
        @@counter += 1
        p "You got it in #{@@counter} tries"
      end
    end

end

assignment = Game.new()
assignment.guess
