require('rspec')
require('coin_combos')

describe('Fixnum#coin_combos') do
  it('for a given number of cents returns correct number of pennies') do
    expect(1.coin_combos).to(eq("1 pennies"))
  end
  it('for a given number of cents returns correct number of nickles and pennies') do
    expect(5.coin_combos).to(eq("1 nickles "))
  end
  it('for a given number of cents returns correct number of dimes, nickles, and pennies') do
    expect(10.coin_combos).to(eq("1 dimes "))
  end
  it('for a given number of cents returns correct number of quarters, dimes, nickles, and pennies') do
    expect(25.coin_combos).to(eq("1 quarters "))
  end
end
