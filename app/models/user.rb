class User < ApplicationRecord

has_many :contacts, dependent: :destroy
has_many :reminders

end
