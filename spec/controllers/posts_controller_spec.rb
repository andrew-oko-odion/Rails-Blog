require 'rails_helper'

RSpec.describe PostsController, type: :controller do    
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  it "renders the index template" do
      get :index
      expect(response).to render_template("index")
  end
  
  # it "loads all of the posts into @posts" do
  #   post1, post2 = Post.create!, Post.create!
  #   get :index    
  #   expect(assigns(:posts)).to match_array([post1, post2])
  # end
  
  
  describe "GET #show" do
    it "returns http success" do
      params = { id: 2 }
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
