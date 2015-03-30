FactoryGirl.define do
  factory :user do
    name("Doc Lollipop")
    email("thedoc@lollipop.com")
    password("12345678")
    password_confirmation("12345678")
  end

  factory :post do
    body("Ennui or whatever.")
    user
  end
end
