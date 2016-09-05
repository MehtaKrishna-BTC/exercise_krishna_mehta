class Grains
  def self.square(n)
    @array_of_grains = (0..n).map {|x| 2 ** x }
    @array_of_grains[n - 1]
  end

  def self.total
    @array_of_grains.reduce(:+)
  end
end