class User < ApplicationRecord
	validates :email, presence: true, length: {maximum:255}, format: {with:VALID_EMAIL_REGEX}, uniqueness: {case_sensitive:false}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

end
