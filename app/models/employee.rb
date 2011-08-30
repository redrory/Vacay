class Employee < ActiveRecord::Base
  attr_accessible :name, :doe, :dob, :vacayTotal, :vacayUsed, :sickTotal, :sickUsed, :department
  belongs_to :user
  
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :doe, :on => :create, :message => "can't be blank"
  validates_presence_of :dob, :on => :create, :message => "can't be blank"
  validates_presence_of :vacayTotal, :on => :create, :message => "can't be blank"
  validates_presence_of :vacayUsed, :on => :create, :message => "can't be blank"
  validates_presence_of :sickTotal, :on => :create, :message => "can't be blank"
  validates_presence_of :sickUsed, :on => :create, :message => "can't be blank"
  validates_presence_of :department, :on => :create, :message => "can't be blank"
  
  
  
  #default_scope :order => 'employees.created_at DESC'
end
