class String

  def initialize(str)
    @str = str
  end

  def reverseStr
    originalArr = @str.split''
    originalArr
    reversedArr = []
    (originalArr.length).times do
      popped = originalArr.pop
      reversedArr.push(popped)
    end
    p reversedArr.join
  end

end

assignment = String.new('Reverse this really really long string')
assignment.reverseStr
