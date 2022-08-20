class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
    validates :email, presence: true, uniqueness: true #, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { in: 6..25 }
end
