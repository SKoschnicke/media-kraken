class Media < ActiveRecord::Base

  belongs_to :user

  mount_uploader :file, MediaUploader, :mount_on => 'filename'

  PICTURE_FILE_SUFFIXES = %w(png gif jpg jpeg)

  def picture?
    return false if filename.nil?
    PICTURE_FILE_SUFFIXES.any?{|s| filename.downcase[-s.length..-1] == s.downcase}
  end
end
