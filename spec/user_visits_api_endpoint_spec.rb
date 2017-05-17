require 'rails_helper'

RSpec.feature "User visits api endpoint", :type => :feature do
  scenario "User types zip code into search box" do

    visit "/"

    fill_in "q", :with => "80203"
    click_button "Locate"

    expect(current_path).to eq("/search")
    expect(page).to have_content("Name: UDR")
    expect(page).to have_content("Address: 800 Acoma St")
    expect(page).to have_content("Name: Hyatt Regency Denver")
    expect(page).to have_content("Address: 65 W 12th Ave")
    expect(page).to have_content("Distance: 0.50028")
    expect(page).to have_content("Access Times: 24 hours daily")
  end
end
