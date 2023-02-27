class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_expenses, dependent: :destroy
  has_many :groups, through: :group_expenses, dependent: :destroy

  validates :name, presence: true, length: { minimum: 1, maximum: 50 }
end
