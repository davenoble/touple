class Relationship < ActiveRecord::Base
    has_and_belongs_to_many :users
    has_many :arguments
    has_many :surveys
    has_many :milestones
end
