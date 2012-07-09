class User < ActiveRecord::Base

  has_many :media, :class_name => 'Media'

  before_validation do
    self.name = User.sanitize_name(name)
  end

  def self.sanitize_name(name)
    name.strip
  end
end
