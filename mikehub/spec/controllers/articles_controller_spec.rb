require 'rails_helper'

describe ArticlesController do 
   let!(:article) { Article.create!(title: "Title", subtitle: "Subtitle", content: "This is the content.") }

  describe 'GET #new' do
  it "creates a new Article" do
    get :new
    expect(assigns(:article).id).to eq nil
  end

    it "renders a new form" do
      get :new
      expect(response).to render_template(:new)
    end
   end

  describe 'POST #new' do
    it "creates a new Article" do
      expect { post :create, article: { title: "Title", subtitle: "Subtitle", content: "This is the content."}
        }.to change(Article, :count).by(+1)
    end
  end
end