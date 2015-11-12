require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #login" do
    let(:user) {User.new}
    it "returns http success" do
      get :login
      expect(response).to have_http_status(:success)
    end
  end




 describe "POST create"  do
  let!(:user) {User.create(first_name: "josue", last_name: "aceves", email: "josueaceves@gmail.com", password: "password") }

  context "when valid credencials are passed" do
      it "redirects to the index page"  do
        post :create, {user: {email: "josueaceves@gmail.com", password: "password"}}
        expect(response).to redirect_to '/'
      end
    end
  end

  context "when invalid credencials are passed" do
      it "renders login"  do
        post :create, {user: {email: "josue@gmail.com", password: "password"}}
        expect(response).to render_template(:login)
      end
    end


  describe "logout" do
    context "when user logs out"do
      it "it redirects to the home page" do
        get :logout
        expect(response).to redirect_to '/'
      end
    end
  end
end