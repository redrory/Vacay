class Prompt < ActiveRecord::Base

  attr_accessible :weekPrompt, :monthPrompt,:dayPrompt,:maxVacay,:maxSick ,:user_id
  belongs_to :user

end
