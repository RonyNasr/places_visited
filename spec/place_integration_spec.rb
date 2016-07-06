require("capybara/rspec")
require("launchy")
require("./app")

Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe('the place path',{:type => :feature}) do
  it("fills the name of the place and saves it") do
    visit("/")
    fill_in("place_name", :with => "Portland")
    click_button("submit")
    expect(page).to have_content("The place has been successfully submitted!")
    click_link('Back')
    expect(page).to have_content("Portland")
  end
end
