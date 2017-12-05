class Contact < ApplicationRecord

has_one :profile
belongs_to :user

end
