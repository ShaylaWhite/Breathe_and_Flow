class Review < ApplicationRecord
    belongs_to :user
    belongs_to :group
    
    
    #join table, has two belongs to
end
#collection