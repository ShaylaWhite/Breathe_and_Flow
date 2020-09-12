class Group < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :reviews
  has_many :users, through: :reviews

end
