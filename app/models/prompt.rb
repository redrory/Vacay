class Prompt < ActiveRecord::Base

  attr_accessible :onyear, :anniversary, :max, :user_id
  belongs_to :user

end
