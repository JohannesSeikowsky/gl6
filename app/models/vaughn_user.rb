class VaughnUser < ApplicationRecord

	# Image uploading with Carrierwave
	mount_uploader :picture, PictureUploader
	mount_uploader :background_img, PictureUploader

end
