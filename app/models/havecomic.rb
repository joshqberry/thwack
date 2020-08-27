class Havecomic < ActiveRecord::Base
  belongs_to :mastercomic
  belongs_to :user
end
