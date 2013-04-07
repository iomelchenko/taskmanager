class Progect < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  belongs_to :user
  attr_accessible :name
  validates :name, :presence => true
end
