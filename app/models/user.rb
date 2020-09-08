class User < ApplicationRecord
    has_many :groups
    has_many :reviews
    has_many :reviewed_groups, through: :reviews, source: :group
    has_secure_password #authenicate, validate password &/or password confirmation
    ##has_many :studios, through :groups
end
