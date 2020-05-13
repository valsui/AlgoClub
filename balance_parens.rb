#// Given given a string of parens and return true if the parens are balanced.
#// TIME: O(n)
#// SPACE: O(1)
#// For example
#// const parens = "()(())()" // should be true
#// const parens = "()(())(" // should be false

#const balancedParens = (expression) => {}

# Assumptions - if the string is empty, true?
# Approaches
# - iterate through each character and maintain a count until the end of string. If the counts are the same, then balanced
def is_balanced_bad?(str)
  return true if str.length == 0

  left_count = 0
  right_count = 0

  str.split("").each do |char|
    left_count=left_count+1 if char == "("
    right_count=right_count + 1 if char == ")"
  end
  left_count == right_count
end

# Expansion - assume that the characters are now arbitrary
# How do we know which one is matching - need a dictionary to store the map
#
mappings = {
  openings: {
    "{" => "}",
    "[" => "]",
    "<" => ">",
    "(" => ")",
  },
  closings: {
    "}" => "{",
    "]" => "[",
    ">" => "<",
    ")" => "(",
  }
}

# what is we have arbitrary characters?
# this will fail for "}}}}"
def is_balanced_arb(str, mapping)
  stack = Stack.new()
  str.split("").each do |char|
    stack.push(char) if mapping[:openings][char]
    stack.pop if mapping[:closings][char] == stack.peek
  end
  stack.length== 0
end


class Stack
  attr_reader :stack

  def initialize
    @stack = []
  end

  def length
    @stack.size
  end

  def pop
    @stack.pop
  end

  def push(str)
    @stack.push(str)
  end

  def peek
    @stack[-1]
  end
end

#Test cases
#str = ""
#puts str
#puts is_balanced_bad?(str)

#str = "()"
#puts str
#puts is_balanced_bad?(str)

#str = "("
#puts str
#puts is_balanced_bad?(str)

#str = "()(())()"
#puts str
#puts is_balanced_bad?(str)

#str= "()(())("
#puts str
#puts is_balanced_bad?(str)
