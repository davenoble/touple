class User < ActiveRecord::Base
    has_secure_password
    has_and_belongs_to_many :relationships
    has_many :arguments
    has_many :surveys
    has_many :comments
    has_many :milestones
    
    validates_presence_of :password, on: :create
    validates :email, uniqueness: true
end
