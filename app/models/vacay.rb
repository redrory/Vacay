class Vacay < ActiveRecord::Base

	attr_accessible :brought_forward, :dateFrom, :dateUntil, :user_id, :sumVacay
	belongs_to :user

end
