require 'rails_helper'

feature 'User visits profile' do
  scenario "sees a list of article titles" do
    user_params = {first_name: "Joe",
                  last_name: "Jefferson",
                  email: "joe@thejeffersons.org",
                  img_url: "http://www.rainforest-alliance.org/sites/default/files/uploads/4/capybara-family_15762686447_f9f8a0684a_o.jpg",
                  password: "password"
    }

    @user = User.create(user_params)
    visit '/users/1'

    page.assert_selector('li.article', :count => 2)



  end
end
