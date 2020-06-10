#Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent.

#A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.
#
 mapping = {
  2: "abc",
  3: 'def',
  4: 'ghi',
  5: 'jkl',
  6: 'mno',
  7: 'pqrs',
  8: 'tuv',
  9: 'wxyz'
 }.with_indifferent_access
#
#Input: "23"
#Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
#
def mapping(numbers)
  combinations = []

  numbers.split.each do |num|
    combinations += one_or_zero(num)
  end
end

def one_or_zero(number, rest)
  return [] if numbers.length == 0
  return mapping(numbers).split if numbers == 1
end
