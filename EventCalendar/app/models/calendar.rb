class Calendar < ApplicationRecord
    validates :event_name, presence: true
    validates :event_description, presence: true
    # validates :start_date, presence: true
    # validates :end_date, presence: true
end
