require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the triangle path", {:type => :feature}) do
  # code
end
