class Hamming
  def self.compute(str1,str2)
    cnt = 0
    str1 = str1.chars
    str2 = str2.chars
    raise ArgumentError if str1.length != str2.length
    # str1.each_with_index do |item , index|
    #   cnt +=1 if str1[index] != str2[index]
    #   puts "#{cnt}"
    # end
    str1.each_with_index {|item , index| cnt +=1 if str1[index] != str2[index]}
    a = (cnt > 0) ?  "Both string should be same" : "Strings are same"
    puts a
    cnt
  end
end
# h = Hamming.new
# h.compute('GGACTGA', 'GGACTGA')