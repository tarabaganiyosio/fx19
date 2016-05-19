class Broker < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
    
    include FriendlyId # extend FriendlyId でもよい(違いはない)
    friendly_id :name  # idカラムの代わりにnameカラムをURLのIDとする
    
    belongs_to :user
    has_many :evas
    
    mount_uploader :image, ImageUploader
end
