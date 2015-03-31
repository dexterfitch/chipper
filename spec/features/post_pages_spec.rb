require 'rails_helper'

describe 'the post action' do
  it 'adds a new post' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on 'New Post'
    fill_in 'Body', with: "Being a unicorn doctor sure is tough!"
    click_on 'Submit'
    expect(page).to have_content 'Being a unicorn doctor sure is tough!'
  end

  it 'throws an error if there is no body' do
    user = FactoryGirl.create(:user)
    sign_in(user)
    click_on 'New Post'
    click_on 'Submit'
    expect(page).to have_content 'blank'
  end

  it 'deletes an existing post' do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    sign_in(user)
    new_post(post)
    click_on 'Delete'
    expect(page).to have_content 'deleted'
  end
end
