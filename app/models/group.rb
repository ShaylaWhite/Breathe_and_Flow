class Group < ApplicationRecord
  belongs_to :user
  belongs_to :type
  has_many :reviews
  has_many :users, through: :reviews

  #scope methods
    scope :order_by_reviews -> { left_joins(:reviews).group(:id).order("size desc")}

    def self.filter_by_title(value)
      where("title like ?" , "%#{value}%")
    end  

    def self.order_by_size
      order(comments: :desc)
    end   

    def self.by_user(user_id)
      where(user: user_id)
    end


end
