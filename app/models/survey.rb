class Survey < ActiveRecord::Base
    belongs_to :user
    belongs_to :relationship
    scope :today, -> { where(:created_at => (Time.now.beginning_of_day..Time.now.end_of_day)) }

end
