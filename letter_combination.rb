#Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent.

#A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
#
 mapping = {
  "2"=> "abc",
  "3"=> 'def',
  "4"=> 'ghi',
  "5"=> 'jkl',
  "6"=> 'mno',
  "7"=> 'pqrs',
  "8"=> 'tuv',
  "9"=> 'wxyz'
 }
#
#Input: "23"
#Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
#
def mappings(numbers, mapping)
  length = numbers.length
  return [] if length == 0

  numbers_arr = numbers.split("")[1..-1]
  combinations = mapping[numbers[0]].split("")
  count = 0

  numbers_arr.each_with_index do |num, idx|
    mapped = mapping[num].split("")
    tempMap = []
    mapped.each do |m|
      temp = combinations.map do |c|
        puts c+m
        count +=1
        c + m
      end
      tempMap = tempMap.concat(temp)
      puts "TM: #{tempMap}"
    end
    combinations = tempMap
    puts "Comb: #{combinations}"
  end

  puts "Count: #{count}"
  combinations
end

