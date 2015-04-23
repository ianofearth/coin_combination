require ('pry')


class Fixnum
  define_method(:coin_combos) do
    coin_words = ""
    total_coins=self
    counter = 0
    indexcounter = 0
    coin_values = [25,10,5]
    coin_values_words = ["quarter","dime","nickle"]
    while total_coins > 4
      until total_coins.div(coin_values[indexcounter]) == counter
        counter+= 1
      end
      if counter > 1
        coin_words += " " + counter.to_s + " " + coin_values_words[indexcounter] + "s"
      elsif counter > 0
        coin_words += " " + counter.to_s + " " + coin_values_words[indexcounter]
      end
      total_coins -= counter * coin_values[indexcounter]
      indexcounter += 1
      counter = 0
    end
    if total_coins > 1
      coin_words += " " + total_coins.to_s + " pennies"
    elsif total_coins == 1
      coin_words += total_coins.to_s + " penny"
    end
    coin_words
  end
end


# class Fixnum
#   define_method(:coin_combos) do
#     coin_words = ""
#     total_coins=self
#     counter = 0
#     until total_coins.div(25) == counter
#         counter += 1
#     end
#     if counter > 0
#       coin_words += counter.to_s + " quarters "
#     end
#     total_coins -= counter*25
#     counter = 0
#
#     until total_coins.div(10) == counter
#         counter += 1
#     end
#     if counter > 0
#       coin_words += counter.to_s + " dimes "
#     end
#     total_coins -= counter*10
#     counter = 0
#
#     until total_coins.div(5) == counter
#         counter += 1
#     end
#     if counter > 0
#       coin_words += counter.to_s + " nickles "
#     end
#     total_coins -= counter*5
#
#     if total_coins > 1
#       coin_words += " " + total_coins.to_s + " pennies"
#     elsif total_coins == 1
#       coin_words += total_coins.to_s + " penny"
#     end
#     coin_words
#   end
# end
