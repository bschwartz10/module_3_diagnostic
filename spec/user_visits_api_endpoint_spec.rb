require 'rails_helper'

RSpec.feature "User visits api endpoint", :type => :feature do
  scenario "User types zip code into search box" do

    visit "/"

    fill_in "Search", :with => "80203"
    click_button "Locate"

    expect(current_path).to be("/search")
  end
end
