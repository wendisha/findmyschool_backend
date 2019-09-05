class User < ApplicationRecord
    #Allow bcrypt to hash our passwords
    has_secure_password
    has_many :bookmarks
    has_many :schools, through: :bookmarks
end
