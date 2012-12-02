class Progect < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  attr_accessible :name
  validates :name, :presence => true
end
