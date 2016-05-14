class PostImage < ActiveRecord::Base
  belongs_to :post
  has_attached_file :image,
                    :path => ':rails_root/public/attachments/:class/:id/:basename.:extension',
                    :url => '/attachments/:class/:id/:basename.:extension'
  validates_attachment :image,
                       :presence => true,
                       :content_type => { :content_type => /image/ }

end
