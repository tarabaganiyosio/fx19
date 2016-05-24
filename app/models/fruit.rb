class Fruit < ActiveRecord::Base
    
    mount_uploader :image, ImageUploader
end
