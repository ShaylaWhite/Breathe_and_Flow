class Group < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  has_many :reviews
  has_many users, through :reviews

end
