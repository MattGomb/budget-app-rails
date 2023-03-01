require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  describe 'Without logged in user' do
    it 'redirects to login page' do
      get :index
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe 'With logged in user' do
    login_user
    it 'returns http success when logged in' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'can create a new category' do
      post :create, params: { group: { name: 'test', icon: 'https://example.com/icon' } }
      expect(response).to redirect_to(category_url(Group.last))
      expect(response).to have_http_status(302)
    end

    it 'can delete a category' do
      @user = User.create(name: 'test', email: 'mail@mail.com', password: 'password',
                          password_confirmation: 'password')
      group = Group.create!(name: 'test', icon: 'https://example.com/icon', author: @user)
      delete :destroy, params: { id: group.id }
      expect(response).to redirect_to(categories_url)
      expect(response).to have_http_status(302)
    end
  end
end