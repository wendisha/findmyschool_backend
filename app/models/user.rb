class User < ApplicationRecord
    #Allow bcrypt to hash our passwords
    has_secure_password 
end
