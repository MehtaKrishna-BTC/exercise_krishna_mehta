class Trinary
  BASE = 3
  def initialize(str)
    @num = str
    @arr = Array.new
    @result = 0
  end

  def to_decimal
    return 0 if @num.to_i == 0
    @arr = @num.split('').map(&:to_i)
    @arr.each do |i|
      if i > BASE
        puts "You have enter wrong number"
        return 0
      end
    end

    limit = (@arr.length - 1)

    for i in  0..limit
      power = limit - i
      @result += ( @arr[i]*(BASE**power) )
    end
    @result
  end

end