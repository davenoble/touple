class User < ActiveRecord::Base
    has_secure_password
    has_and_belongs_to_many :relationships
    has_many :arguments
    has_many :surveys
    has_many :comments
    has_many :milestones
    
    validates_presence_of :password, on: :create
    validates :email, uniqueness: true
    
    def today
      where(:created_at => (Time.now.beginning_of_day..Time.now))
    end

    def this_week
      where(:created_at => (Time.now.beginning_of_week..Time.now))
    end
end
