class PostImage < ActiveRecord::Base
  belongs_to :post
  has_attached_file :image,
                  :path => ':rails_root/public/attachments/:class/:id/:basename-:style.:extension',
                  :url => '/attachments/:class/:id/:basename-:style.:extension'
  validates_attachment :image,
                     :content_type => { :content_type => /image/ }

end
