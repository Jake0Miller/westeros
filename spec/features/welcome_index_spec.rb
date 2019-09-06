require 'rails_helper'

describe 'I visit the root path' do
  it 'I can select a house from a dropdown' do
    visit root_path

    within ".dropdown-select" do
      select "Greyjoy", :from => "House"
    end

    click_on 'Get Members'

    expect(current_path).to eq(search_path)
    expect(current_url).to include("house=greyjoy")

    expect(page).to have_content("7 Members")
    expect(page).to have_css(".member", count: 7)
    expect(page).to have_content('Theon')
  end
end
