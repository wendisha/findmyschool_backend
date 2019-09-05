class User < ApplicationRecord
    #Allow bcrypt to hash our passwords
    has_secure_password
    has_many :bookmarks, foreign_key: :user_id, class_name: "Bookmark"
    has_many :schools, through: :bookmarks
end
