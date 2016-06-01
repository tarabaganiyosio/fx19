class Answer < ActiveRecord::Base
    belongs_to :user
    belongs_to :question, counter_cache: :answers_count
end