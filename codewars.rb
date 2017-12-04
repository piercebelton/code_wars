def weirdcase (string)
  length = string.length
  idx = 0
  mod_idx = 0
  new_str = ''
  length.times do
    if string[idx] == ' '
      new_str += ' '
      idx += 1
      mod_idx = 0
      next
    elsif mod_idx % 2 == 0
      new_str += string[idx].upcase
      idx += 1
      mod_idx += 1
    else
      new_str += string[idx].downcase
      idx += 1
      mod_idx += 1
    end
  end
  new_str
end

weirdcase("hello my name is PIERCE")




def triangular(n)
  result = 0
  return 0 if n < 1
  while n > 0 do
    result += n
    n = n - 1
  end
  return result
end

triangular(4)





def dig_pow(num, pwr)
  arr = num.to_s.chars.map(&:to_i)
  power = pwr - 1
  final = 0
  result = -1
  arr.each do |digit|
    result = digit
    power.times {result = result * digit}
    final += result
    power += 1
  end
  if final % num == 0
    return final / num
  else
    return -1
  end
end

dig_pow(89, 1)



def min_max(lst)
  min = lst.first
  max = lst.first
  lst.each do |n|
    if min > n
      min = n
    end
    if max < n
      max = n
    end
  end
  return [min,max] # fix me
end



def list(names)
  names.empty? ? str = "" : str = names.first[:name]
  names.each_with_index do |obj, i|
    next if i == 0
    if names.length == i + 1
      str += " & #{obj[:name]}"
    else
      str += ", #{obj[:name]}"
    end
  end
  return str
end



def is_isogram(string)
  string.downcase.split('').uniq.length == string.length
end



def expanded_form(num)
  arr = num.to_s.chars
  zeroes = "0" * (arr.length - 1)
  expanded = ''
  arr.each do |num|
    if num != "0"
      expanded += num + zeroes
      expanded += " + " unless zeroes.length == 0
    end
    zeroes = zeroes.chomp("0")
  end
  expanded = expanded.chomp(" + ") if arr.last == "0"
  return expanded
end



class String
  def camelcase
    arr = split(" ")
    new_str = ""
    arr.each do |word|
      new_str += word.capitalize
    end
    return new_str
  end
end



def fold_array(array, runs)
  arr = array.dup
  runs.times do
    folded_arr = []
    arr.length.even? ? last_num = nil : last_num = arr.slice!((arr.length / 2).floor)
    idx = 0
    (arr.length / 2).times do
      folded_arr << (arr[0 + idx] + (arr[arr.length - 1 - idx]))
      idx += 1
    end
    folded_arr << last_num if last_num != nil
    arr = folded_arr
  end
  return arr
end

fold_array([6, 6, 3 ], 1)

fold_array([1, 2, 3, 4, 5], 1)




def pig_it(text)
  arr = text.split(" ")
  result = ""
  arr.each do |word|
    if word == "!" || word == "?" || word == "."
      result += word
      next
    end
    word_arr = word.chars
    pig_end = word_arr.slice!(0) + "ay"
    word = word_arr.join + pig_end + " "
    result += word
  end
  result.strip
end



def solution(sentence)
  sentence.split(" ").reverse.join(" ")
end



def in_array(array1, array2)
  result = []
  array1.each do |a1sub|
    array2.each do |a2sub|
      if a2sub.include?(a1sub)
        result << a1sub
        break
      end
    end
  end
  result.sort
end



def zeros(n)
  trailing_zeros = 0
  factor = 5
  while n / factor >= 1 do
    trailing_zeros += n / factor
    factor = factor * 5
  end
  trailing_zeros
end



# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @items = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @items.count
  end

  # returns the number of pages
  def page_count
    if item_count % @items_per_page == 0
      item_count / @items_per_page
    else
      (item_count / @items_per_page).floor + 1
    end
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    return -1 if page_index < 0 || page_index > page_count - 1
    if page_index == page_count - 1
      if item_count % @items_per_page == 0
        @items_per_page
      else
        item_count % @items_per_page
      end
    else
      @items_per_page
    end
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 if item_index < 0 || item_index > item_count - 1
    (item_index / @items_per_page).floor
  end
end



def validSolution(board)
  columns = [
    col0 = [],
    col1 = [],
    col2 = [],
    col3 = [],
    col4 = [],
    col5 = [],
    col6 = [],
    col7 = [],
    col8 = []
  ]
  squares = [
    sq0 = [],
    sq1 = [],
    sq2 = [],
    sq3 = [],
    sq4 = [],
    sq5 = [],
    sq6 = [],
    sq7 = [],
    sq8 = []
  ]
  board.each_with_index do |row, idx|
    return false if row.include?(0) || row.uniq.length != 9
    if idx == 0 || idx == 1 || idx == 2
      row[0..2].each { |num| sq0 << num}
      row[3..5].each { |num| sq1 << num}
      row[6..8].each { |num| sq2 << num}
    elsif idx == 3 || idx == 4 || idx == 5
      row[0..2].each { |num| sq3 << num}
      row[3..5].each { |num| sq4 << num}
      row[6..8].each { |num| sq5 << num}
    else
      row[0..2].each { |num| sq6 << num}
      row[3..5].each { |num| sq7 << num}
      row[6..8].each { |num| sq8 << num}
    end
    col0 << row[0]
    col1 << row[1]
    col2 << row[2]
    col3 << row[3]
    col4 << row[4]
    col5 << row[5]
    col6 << row[6]
    col7 << row[7]
    col8 << row[8]
  end
  columns.each { |col| return false if col.uniq.length != 9}
  squares.each { |square| return false if square.uniq.length != 9}
  return true
end



def rot13(string)
  alpha = ('a'..'z').to_a
  rotated_alpha = alpha.rotate(13)
  upcase_alpha = ('A'..'Z').to_a
  rotated_upcase = upcase_alpha.rotate(13)
  result = ""
  string.split('').each do |char|
    if alpha.include?(char)
      result += rotated_alpha[alpha.index(char)]
    elsif upcase_alpha.include?(char)
      result += rotated_upcase[upcase_alpha.index(char)]
    else
      result += char
    end
  end
  return result
end



def productFib(prod)
  fib = [0, 1]
  last = fib.last
  second = fib.first
  while last * second < prod do
    fib << last + second
    last = fib.last
    second = fib[fib.length - 2]
  end
  result = last * second == prod
  return [second, last, result]
end



def snail(array)
  snail = []
  until array.length == 0 do
    array.slice!(0).each { |num| snail << num}
    array.each do |arr|
      snail << arr.slice!(arr.length - 1)
    end
    return snail if array.empty?
    array.slice!(array.length - 1).reverse.each { |num| snail << num }
    array.reverse_each { |arr| snail << arr.slice!(0) }
  end
  return snail
end

snail([[1,2,3],[4,5,6],[7,8,9]])



class Bag
  def initialize
    @h = Hash.new{ 0 }
  end
  def <<(o)
    @h[o] += 1
  end
  def [](o)
    @h[o]
  end
end
bag = Bag.new


def rolldice_sum_prob(sum, num_of_dice)
  return if sum / num_of_dice > 6 || sum < num_of_dice

  die_possibilities = [1, 2, 3, 4, 5, 6]
  possible_combinations = 6 ** num_of_dice
  # times_each_number_used = possible_combinations / num_of_dice / 6


  



  # all_sums = []
  # num_of_dice.times do |die|
  #   die_possibilities.each do |num|
  #     iterations = 1
  #     sum_of_dice = num
  #     while iterations < num_of_dice do
  #
  #     end
  #   end
  # end


  # while operations_performed < possible_combinations do
  #   dice_amount.times do
  #
  #   end
  # end


end








buffer
