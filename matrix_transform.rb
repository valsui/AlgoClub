# Write a function to return a transformed 2d array of numbers.
# const intput = [
# 	[1, 2, 3],
# 	[4, 5, 6],
# 	[7, 8, 9]
# ]
#
# const output = [
# 	[1, 4, 7],
# 	[2, 5, 8],
# 	[3, 6, 9]
# ]
#

# need to iterate over the rows and swap them with the columns
def matrix_transform(mtx)
  num_rows = mtx.size
  max_cols = get_max_cols(mtx)

  transformed = Array.new(max_cols) { Array.new() }
  for row in (0...num_rows) do
    for col in (0...max_cols) do
      elem = mtx[row][col]
      transformed[col].push(elem)
    end
  end
  transformed
end

def get_max_cols(mtx)
  max = 0
  mtx.each do |row|
    cur_cols = row.size
    max = cur_cols if cur_cols > max
  end
  max
end
