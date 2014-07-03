class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => {:original =>"1024x1024", :medium =>"300x300>", :thumb => "100x100>"}
	#do_not_validate_attachment_file_type :image
	validates_attachment :image, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
	#validates_attachment_size :image, :less_than=>1.megabyte

end