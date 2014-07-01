require 'rails_helper'

feature 'create a profile' do

  scenario 'user creates a profile with a photo' do
    visit new_user_path
    fill_in 'First name', with: 'Richard'
    fill_in 'Last name', with: 'Davis'
    fill_in 'Email', with: 'richard.davis@launchacademy.com'
    attach_file 'Photo', 'lib/assets/images/richard.jpg'
    click_on 'Create'

    user = User.last
    expect(page).to have_content('richard.davis@launchacademy.com')
    expect(page).to have_css("img[src='#{user.thumbnail}']")
  end
end
