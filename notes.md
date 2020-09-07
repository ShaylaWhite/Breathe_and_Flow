    Breathe & Flow 


    Classes
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

    -has_many :classes
    -has_many :reviews
    -has_many :class_reviews, throught :reviews 
    ** has_many :studios, through :classes 




    ***JOIN TABLE*** join users and classes

    Reviews
        >message
        >user_id
        >class_id
-------------------------------------------

    -belongs_to :user
    -belongs_to :class


<<>>>>>STRETCH GOAL <<<<>>>>
    Studios
        >name
        >class_id

        -has_many :posts
        -has_mnay :users, through classes 



