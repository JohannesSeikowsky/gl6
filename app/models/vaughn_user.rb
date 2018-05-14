class VaughnUser < ApplicationRecord

	# Image uploading with Carrierwave
	mount_uploader :picture, PictureUploader

end
