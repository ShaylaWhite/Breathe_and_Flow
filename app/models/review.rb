class Review < ApplicationRecord
    belongs_to :user
    belongs_to :group
    
    validates :review, presence: true
    #join table, has two belongs to
end
#collection