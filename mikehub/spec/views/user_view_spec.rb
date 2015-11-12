require 'rails_helper'

feature 'User visits profile' do
  before :each do
    user_params = {first_name: "Joe",
                  last_name: "Jefferson",
                  email: "joe@thejeffersons.org",
                  img_url: "http://www.rainforest-alliance.org/sites/default/files/uploads/4/capybara-family_15762686447_f9f8a0684a_o.jpg",
                  password: "password"
    }


    @user = User.create(user_params)
    @article = @user.articles.create(title:" This is great", content: "Yep, yep.", subtitle: "Wonderful.")
  end

  scenario "sees a certain number of articles" do
    visit "/users/#{@user.id}"

    page.assert_selector('li.article', :count => 1)
  end

  scenario "sees content reflecting the article title" do
    visit "/users/#{@user.id}"

    expect(page).to have_content("This is great")

  end
end
