require 'rails_helper'

RSpec.describe Expense, type: :model do
  subject do
    @user = User.create!(name: 'name', email: 'mail@mail.com', password: 'password', id: 1)
    @expense = Expense.create(name: 'Tahiti', amount: 468.55, author: @user, author_id: 1, id: 1)
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

  it 'name should not be empty' do
    subject.name = ' '
    expect(subject).to_not be_valid
  end

  it 'amount should be present' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'amount should not be less than 0' do
    subject.amount = -1.1
    expect(subject).to_not be_valid
  end

  it 'amount should be a decimal' do
    expect(subject.amount).to be_within(0.0001).of(468.55)
  end

  it 'amount should have a decimal point' do
    expect(subject.amount.to_s).to include('.')
  end

  it 'user should be present' do
    subject.author = nil
    expect(subject).to_not be_valid
  end

  it 'user_id should be present' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end
end