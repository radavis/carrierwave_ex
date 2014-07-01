require 'rails_helper'

feature 'visit user index' do

  let(:user) { FactoryGirl.create(:user) }

  scenario 'visit user index, see info' do
    user
    visit users_path
    expect(page).to have_content(user.email)
    expect(page).to have_css("img[src='#{user.thumbnail}']")
  end
end
