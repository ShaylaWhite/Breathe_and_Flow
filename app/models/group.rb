class Group < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_many :reviews
  has_many :users, through: :reviews

end
