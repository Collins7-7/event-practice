class Event < ApplicationRecord
    has_many :bookings
    has_many :users, through: :bookings
    
    validates :name, :description, presence: true
    validates :start_date, :end_date, :start_time, :end_time, presence: true 
    validates :total_tickets, :price, presence: true, numericality: true
    validates :end_date, comparison: { greater_than: :start_date,
    message: "Can't be before start date" }

#Making some helper methods to help with our front-end 
    def total_duration
        "From #{start_date} to #{end_date}"
    end

    def time_daily
        "From #{start_time} to #{end_time}"
    end
end
