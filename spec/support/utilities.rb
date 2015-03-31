def sign_in(user)
  visit root_path
  click_on "Login"
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Log in"
end

def new_post(post)
  visit root_path
  click_on "New Post"
  fill_in "Body", with: post.body
  click_button "Submit"
end
