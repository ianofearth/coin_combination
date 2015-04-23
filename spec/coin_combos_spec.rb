require('rspec')
require('coin_combos')

describe('Fixnum#coin_combos') do
  it('for a given number of cents returns correct number of pennies') do
    expect(1.coin_combos).to(eq("1 pennies"))
  end


end
