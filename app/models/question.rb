class Question < ActiveRecord::Base
    belongs_to :user
    has_many :answers
    has_many :bas
    has_many :replies
end
