class Review < ApplicationRecord
    belongs_to :users
    belongs_to :groups
    
    
    #join table, has two belongs to
end
