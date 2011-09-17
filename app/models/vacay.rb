class Vacay < ActiveRecord::Base

	attr_accessible :brought_forward, :dateFrom, :dateUntil, :user_id, :sumVacay, :employee_id
	belongs_to :user

	#validates_presence_of :dateFrom, :on => :create, :message => "Please enter value"

	#validates_presence_of :dateUntil, :on => :create, :message => "Please enter value"
end
