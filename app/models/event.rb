class Event < ApplicationRecord
    validates :name, :description, presence: true
    validates :start_date, :end_date, :start_time, :end_time, presence: true 
    validates :total_tickets, :price, presence: true, numericality: true
    validates :end_date, comparison: { greater_than: :start_date,
    message: "Can't be before start date" }
end
