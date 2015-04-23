class Fixnum
  define_method(:coin_combos) do
    coin_words = ""
    counter = 0
    until counter == (self)
      puts counter.to_s + " pennies"
      counter += 1
    end
    coin_words += counter.to_s + " pennies"
  end
end
