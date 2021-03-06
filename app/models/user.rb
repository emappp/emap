class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true,uniqueness: true
  validates :user_role, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true



end
