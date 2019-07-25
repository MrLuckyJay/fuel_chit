class User < ApplicationRecord
    has_many :fuel_types
    validate :username, presence :true,uniqueness:{case_sensitive:false}, length: {minimum:3, maximum:25}

    VALID_EMAIL_REGGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validate :email, presence :true,uniqueness:{case_sensitive:false}, length: {maximum:150},
    format: { with: VALID_EMAIL_REGGEX }
end
