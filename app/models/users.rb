class Users < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "doit être une adresse mail valide"}
end
