class User < ApplicationRecord
    has_secure_password
	validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "must be a valid email address" }
	validates :prenom, presence: true
	validates :nom, presence: true
end
