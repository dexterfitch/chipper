require 'rails_helper'

describe 'the sessions action' do
  it 'signs in a user' do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    expect(page).to have_content "Signed in successfully."
  end

  it 'signs out a user' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on 'Logout'
    expect(page).to have_content "Signed out successfully."
  end

end
