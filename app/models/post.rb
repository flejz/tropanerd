class Post < ActiveRecord::Base
  has_many :post_images
  validates :title, presence: true
  validates :text, presence: true

  has_attached_file :image,
                    :path => ':rails_root/public/attachments/:class/:id/:basename.:extension',
                    :url => '/attachments/:class/:id/:basename.:extension'
  validates_attachment :image,
                       :presence => true,
                       :content_type => { :content_type => /image/ }
end
