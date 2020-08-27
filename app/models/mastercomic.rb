class Mastercomic < ActiveRecord::Base

  has_many :wantcomics
  has_many :users, through: :wantcomics

  has_many :havecomics
  has_many :users, through: :havecomics
end
