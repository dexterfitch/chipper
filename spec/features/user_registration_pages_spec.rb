require 'rails_helper'

describe 'Registering a user' do
  it 'registers a new user' do
    visit root_path
    click_on 'Sign up'
    fill_in 'Email', with: "thedoc@lollipop.com"
    fill_in 'Name', with: "Doc Lollipop"
    fill_in 'Password', with: "12345678"
    fill_in 'Password confirmation', with: "12345678"
    click_button "Sign up"
    expect(page).to have_content "Welcome!"
  end
end
