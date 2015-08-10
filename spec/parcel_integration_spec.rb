require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes the user entry') do
    visit('/')
    fill_in('length', :with => '10')
    fill_in('width', :with => '10')
    fill_in('height', :with => '20')
    fill_in('weight', :with => '100')
    fill_in('days', :with => '3')
    fill_in('distance', :with => '100')
    click_button('Go')
    expect(page).to have_content('2000 cubic centimeters')
    expect(page).to have_content('$32')
  end
end
