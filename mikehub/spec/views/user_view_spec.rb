require 'rails_helper'

describe "User View" do
  @user_params = {
    first_name: "Joe",
    last_name: "Jefferson",
    email: "joe@thejeffersons.org",
    img_url: "http://a-z-animals.com/media/animals/images/original/capybara3.jpg",
    password: "password"
  }
  @user = User.new(@user_params)
  expect(page).to have_content('Joe')
end

