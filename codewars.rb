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



 # not finished
def zero
  0
end
def one
  1
end
def two
  2
end
def three
  3
end
def four
  4
end
def five
  5
end
def six
  6
end
def seven
  7
end
def eight
  8
end
def nine
  9
end
def plus
  +
end
def minus
  -
end
def times
  *
end
def divided_by
  /
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
  col1 = []
  col2 = []
  col3 = []
  col4 = []
  col5 = []
  col6 = []
  col7 = []
  col8 = []
  col9 = []
  sq1 = []
  sq2 = []
  sq3 = []
  sq4 = []
  sq5 = []
  sq6 = []
  sq7 = []
  sq8 = []
  sq9 = []
  board.each_with_index do |row, idx|
    return false if row.include?(0) || row.uniq.length != 9
    col1 << row[0]
    col2 << row[1]
    col3 << row[2]
    col4 << row[3]
    col5 << row[4]
    col6 << row[5]
    col7 << row[6]
    col8 << row[7]
    col9 << row[8]
  end
end









buffer
