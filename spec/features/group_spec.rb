require 'rails_helper'

RSpec.describe 'Groups page', type: :system do
  describe 'Group/index page' do
    before(:each) do
      @user = User.create!(name: 'name', email: 'email@email.com',
                            password: 'password', password_confirmation: 'password')
      @group = Group.create(name: 'name', icon: 'https://icons.com/icon1', author: @user)
      @user.skip_confirmation!
      @user.save!
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      click_button 'Sign in'
      visit categories_path
    end

    it 'displays the title of the page' do
      expect(page).to have_content('Categories')
    end

    it 'displays the group name' do
      expect(page).to have_content(@group.name)
    end

    it 'displays a button to add a new category' do
      expect(page).to have_content('New category')
    end

    it 'the new category button redirects to a new page to add a category' do
      click_link 'New category'
      expect(page).to have_current_path new_category_path
    end
  end
end
