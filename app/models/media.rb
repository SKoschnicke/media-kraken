class Media < ActiveRecord::Base
  mount_uploader :file, MediaUploader
end
