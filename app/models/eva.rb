class Eva < ActiveRecord::Base
    belongs_to :user
    belongs_to :broker
end
