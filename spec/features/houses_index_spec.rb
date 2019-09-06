require 'rails_helper'

describe 'I visit /houses' do
  it 'I can see a list of all the houses' do
    visit houses_path

    expect(page).to have_content("5 Houses")
    expect(page).to have_css(".house", count: 5)
    expect(page).to have_content('House Stark')
    expect(page).to have_content('House Tyrell')
  end
end
