require ('pry')


class Fixnum
  define_method(:coin_combos) do
    coin_words = ""
    total_coins=self
    counter = 0

    until total_coins.div(25) == counter
        counter += 1
    end
    if counter > 0
      coin_words += counter.to_s + " quarters "
    end
    total_coins -= counter*25
    counter = 0

    until total_coins.div(10) == counter
        counter += 1
    end
    if counter > 0
      coin_words += counter.to_s + " dimes "
    end
    total_coins -= counter*10
    counter = 0

    until total_coins.div(5) == counter
        counter += 1
    end
    if counter > 0
      coin_words += counter.to_s + " nickles "
    end
    total_coins -= counter*5

    if total_coins > 0
      coin_words += total_coins.to_s + " pennies"
    end
    coin_words
  end
end
