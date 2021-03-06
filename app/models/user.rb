# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :text
#  username        :text
#  email           :text
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean          default(FALSE)
#  image           :text
#

class User < ApplicationRecord
  has_secure_password
  has_many :toasters
  has_many :favourites
  has_many :comments
  has_many :customs
  has_many :wallposts
  has_many :upvotes

  validates :email, :presence => true, :uniqueness => true
end
