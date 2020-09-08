    Breathe & Flow 


    Group
        >name
        >descrpition
        >time 
        >user_id
        >studio_id

----------------------------------------

    -belongs_to :user
    -has_many :reviews
    -has_many users, through :reviews
    ** belong_to :studios 

   
    Users
        >username
        >email
        >password_digest

----------------------------------

    -has_many :groups
    -has_many :reviews
    -has_many :group_reviews, through :reviews 
    ** has_many :studios, through :groups




    ***JOIN TABLE*** join users and classes

    Reviews
        >message
        >user_id
        >group_id
-------------------------------------------

    -belongs_to :user
    -belongs_to :group


<<>>>>>STRETCH GOAL <<<<>>>>
    Studios
        >name
        >group_id

        -has_many :posts
        -has_mnay :users, through groups



