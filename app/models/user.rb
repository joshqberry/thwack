class User < ActiveRecord::Base

has_secure_password

has_many :wantcomics
has_many :mastercomics, through: :wantcomics

has_many :havecomics
has_many :mastercomics, through: :havecomics

end
