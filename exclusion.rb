items = [
  { 'name'=> 'iphone', 'type'=> 'phone', 'color' => 'gold', },
  { 'name'=> 'macbook', 'type'=> 'laptop', 'color' => 'silver', },
  { 'name'=> 'macbook', 'type'=> 'laptop', 'color' => 'blue', },
  { 'name'=> 'macbook', 'hello'=> 'laptop', 'world' => 'blue', },
]

excludes = [
  { 'k' => 'type',  'v' => 'phone' },
  { 'k' => 'color',  'v' => 'blue', },
  { 'k' => 'color',  'v' => 'gold', },
]

#// Write a function that takes both, returns a new list of items with all the exclusions applied.
#
# Input: Array: list of hashes with certain properties, Array: list of hashes of things to exlude
#
# Cases:
# 1. No exclusion or item
# no exclusion keys match match keys
# arbitrary keys and values
#
def exclusion(items, exclusion_items)
  return items if exclusion_items.size === 0

  # iterate over the keys to exclude and return a hash of things we want to exclude
  excluded_hash = excluded_hash(exclusion_items)
  # iterate over each input_item for the excluded keys and see if any fit the criteria
  excluded_hash.keys.each do |exclude_key|
    exclude_values_hash = excluded_hash[exclude_key]
    items = items.reject do |item|
      exclude_values_hash[item[exclude_key]]
    end
  end

  items
end

#{"type"=>{"phone"=>true}, "color"=>{"blue"=>true, "gold"=>true}}
def excluded_hash(exclusion_arr)
  excluded = Hash.new() { |h,k| h[k] = {} }

  exclusion_arr.each do |hash|
    excluded[hash['k']][hash['v']] = true
  end
  excluded
end
