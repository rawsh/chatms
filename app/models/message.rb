class Message < ActiveRecord::Base
	
	belongs_to :user
	
	def self.search(search)
	  where("LOWER(title) LIKE ? OR LOWER(description) LIKE ?", "%#{search}%", "%#{search}%")
	end
		
	has_attached_file :image,
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
	
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
