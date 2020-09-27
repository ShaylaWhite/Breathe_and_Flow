class Group < ApplicationRecord
  belongs_to :type
  belongs_to :user
  has_many :reviews
  has_many :users, through: :reviews
  accepts_nested_attributes_for :type

  def type_attributes=(attributes)
    type = Type.find_or_create_by(attributes) if 
      !attributes['name'].empty?
  end 
end
