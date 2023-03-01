require 'rails_helper'

RSpec.describe Group, type: :model do
  subject do
    @user = User.create!(name: 'someone', email: 'user@user.com', password: 'password', id: 1)
    @group = Group.create(name: 'sports', icon: 'https://awesomeicons.com/icon1', author_id: @user.id)
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid if any empty attribute' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should not be too short' do
    subject.name = 'a'
    expect(subject).to_not be_valid
  end

  it 'name should not be too long' do
    subject.name = 'a' * 51
    expect(subject).to_not be_valid
  end

  it 'name should not be empty' do
    subject.name = ' '
    expect(subject).to_not be_valid
  end

  it 'name should have valid value' do
    expect(subject.name).to eql 'sports'
  end

  it 'user should be present' do
    subject.author = nil
    expect(subject).to_not be_valid
  end

  it 'user_id should be present' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

  it 'user_id not be empty' do
    subject.author_id = ' '
    expect(subject).to_not be_valid
  end
end
