class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  belongs_to :role
end
