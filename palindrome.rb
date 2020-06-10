## Given a string, write a function that checks to see if a word is a palindrome
# palindromee = a word or phrase that is the same forwards and backwards
#
# The palindrome does not have to be a dictionary wrod
#
# Ex: Input: dad / Output: true
#
#
#Check to see if a permutation of it is a palindrome
#Ex: Input: Tact Coa / Output: true because of 'atco cta', 'taco cat'

# true if count of each letter is the same for even, and one off
def is_palindrome(str)
  length = str.length
  halfway = length/2 #this is a floor
  puts halfway
  first_half = str[0..halfway] if length%2==1
  first_half = str[0...halfway] if length%2==0
  last_half = str[halfway..-1]
  puts first_half
  puts last_half
  first_half == last_half.reverse
end


def can_be_palidrome(str)
  length = str.length
  letter_counts = Hash.new(0)

  str.split('').each do |letter, idx|
    next if letter == ' '
    puts idx
    count = letter_counts[letter]
    puts count
    letter_counts[letter] = count + 1
    puts letter_counts
  end

  counts = letter_counts.values
  odds = counts.select do |c|
    is_odd(c)
  end.length

  return true if is_even(length) && odds == 0
  return true if is_odd(length) && odds <= 1
  return false
end

def is_even(number)
  number%2 == 0
end

def is_odd(number)
  number%2 == 1
end
