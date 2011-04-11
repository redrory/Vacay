class Manage < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :doe, :on => :create, :message => "can't be blank"
  validates_presence_of :dob, :on => :create, :message => "can't be blank"
  validates_presence_of :vacayAllot, :on => :create, :message => "can't be blank"
  validates_presence_of :vacayUsed, :on => :create, :message => "can't be blank"
  validates_presence_of :sickAllot, :on => :create, :message => "can't be blank"
  validates_presence_of :sickHave, :on => :create, :message => "can't be blank"
end
