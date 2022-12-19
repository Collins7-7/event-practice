class User < ApplicationRecord
    has_many :bookings
    has_many :events, through: :bookings

    validates :full_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phone_number, presence: true
end
