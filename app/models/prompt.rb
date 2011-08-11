class Prompt < ActiveRecord::Base

  attr_accessible :onyear, :anniversary, :max
  belongs_to :user

end
