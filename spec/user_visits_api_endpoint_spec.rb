require 'rails_helper'

RSpec.feature "User visits api endpoint", :type => :feature do
  scenario "User types zip code into search box" do

    visit "/"

    fill_in "q", :with => "80203"
    click_button "Locate"

    expect(current_path).to eq("/search")
    expect(page).to have_content("Station Name: UDR")
    expect(page).to have_content("Street Address": "800 Acoma St")
    expect(page).to have_content("Hyatt Regency Denver")
  end
end
