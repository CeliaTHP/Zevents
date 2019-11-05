class Event < ApplicationRecord

has_many :attendances
has_many :users, through: :attendances
belongs_to :creator, class_name: "User" 

validates :start_date, presence: true
validate :is_start_date_past? #adef

validates :duration, presence: true
validate :is_duration_ok? #adef

validates :title, presence: true, length: {in: 5..140}

validates :description, presence: true, length: {in: 20..1000}

validates :price, presence: true, numericality: {greater_than: 0, less_than: 1001}

validates :location, presence: true 

def is_start_date_past?
 if start_date < Time.new
	errors.add(:start_date, "can't change a past event")
   end
end

def is_duration_ok?
 if (duration <= 0) || (duration % 5 != 0)
	errors.add(:duration, "duratino can't be negative and must be multiple of 5")
  end
end
end
