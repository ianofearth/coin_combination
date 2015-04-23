require('rspec')
require('coin_combos')

describe('Fixnum#coin_combos') do
  it('for a given number of cents returns correct number of pennies') do
    expect(2.coin_combos).to(eq(" 2 pennies"))
  end
  it('for a given number of cents returns correct number of nickles and pennies') do
    expect(5.coin_combos).to(eq(" 1 nickle"))
  end
  it('for a given number of cents returns correct number of dimes, nickles, and pennies') do
    expect(20.coin_combos).to(eq(" 2 dimes"))
  end
  it('for a given number of cents returns correct number of quarters, dimes, nickles, and pennies') do
    expect(50.coin_combos).to(eq(" 2 quarters"))
  end
end
