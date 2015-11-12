require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "should have a intance of User var" do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end




 describe "POST create"  do
  context "when valid credencials are passed" do
      it "redirects to the index page"  do
        post :create, {user: {first_name: "josue", last_name: "aceves", email: "josueaceves@gmail.com", password: "password"}}
        expect(response).to redirect_to '/'
      end
    end
  end

  context "when invalid credentials are passed" do
    it "renders new"  do
     post :create, {user: {first_name: "josue", last_name: "aceves"}}
      expect(response).to render_template(:new)
    end
  end


end