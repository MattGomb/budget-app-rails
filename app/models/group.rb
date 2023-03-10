class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_expenses, dependent: :destroy
  has_many :expenses, through: :group_expenses, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :icon, presence: true, length: { minimum: 2, maximum: 200 }

  def total_expenses
    expenses.sum(:amount)
  end
end
