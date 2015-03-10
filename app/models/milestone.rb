class Milestone < ActiveRecord::Base
    belongs_to :user
    belongs_to :relationship
    has_many :comments, :as => :commentable
end
