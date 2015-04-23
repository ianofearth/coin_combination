require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('The coin combo program calculation path', {:type => :feature}) do
  it ('Receives a coin amount and returns the smallest combination of coins') do
    visit('/')
    fill_in('coin_amount', :with => 67)
    click_button("Submit")
    expect(page).to have_content(' 2 quarters 1 dime 1 nickle 2 pennies')
  end
end
