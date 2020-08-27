class Wantcomic < ActiveRecord::Base
  belongs_to :mastercomic
  belongs_to :user
end
