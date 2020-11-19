def my_uniq(array)
   new_array =[]
    array.each {|el| new_array << el if !new_array.include?(el) }
    new_array
end

def two_sum(array)
    pairs =[]
    (0...array.length - 1).each do |i|
      (i + 1...array.length).each do |j|
        pairs << [i,j] if array[i] + array[j] == 0
      end
    end
    pairs
end

def my_transpose(*arrays)
    transpose =[]
    (0...arrays.length).each do |i|
        sub_arr = []
       
        arrays.each do |array|
           sub_arr << array[i]
        end
        transpose << sub_arr
    end
    transpose
end

def stock_picker(array)
    most_profit = 0
    days = nil
    array.each_with_index do |day_1, idx_1|
        array.each_with_index do |day_2, idx_2|
          profit = day_2 - day_1     
          if profit > most_profit && idx_2 > idx_1
            days = [idx_1, idx_2] 
            most_profit = profit
          end
        end
    end
days
end