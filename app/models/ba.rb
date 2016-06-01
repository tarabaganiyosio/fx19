class Ba < ActiveRecord::Base
    belongs_to :user, counter_cache: :bas_count
    belongs_to :question
    belongs_to :answer
    has_many :replies
end
