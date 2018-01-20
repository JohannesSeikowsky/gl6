class Contact < ApplicationRecord

has_one :profile, dependent: :destroy
belongs_to :user

end
