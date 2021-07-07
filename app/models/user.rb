class User < ApplicationRecord
    has_many :closets
    has_many :clothings, through: :closets
    has_many :outfits

    has_one_attached :avatar
    has_secure_password 

    validates :password, length: { minimum: 6 }
    validates :email, presence: true
    validates :name, presence: true
end
