require 'rails_helper'

RSpec.describe 'Expense page', type: :system do
  describe 'Group/show page' do
    before(:each) do
      @user = User.create!(name: 'name', email: 'email@email.com',
                           password: 'password', password_confirmation: 'password')
      @group = Group.create(name: 'travel', icon: 'https://icons.com/icon1', author_id: @user.id)
      @user.skip_confirmation!
      @user.save!
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      click_button 'Sign in'
      visit category_path(id: @group.id)
    end

    it 'displays the name of group' do
      expect(page).to have_content(@group.name)
    end

    it 'displays a button to add a new expense' do
      expect(page).to have_content('New expense')
    end

    it 'the new expense button redirects to a page to add new expense' do
      click_button 'New expense'
      expect(page).to have_current_path new_category_expense_path(category_id: @group.id)
    end
  end
end
