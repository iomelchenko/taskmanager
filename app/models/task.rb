class Task < ActiveRecord::Base
  belongs_to :progect
  attr_accessible :name, :progect_id, :status
  validates :name, :progect_id, :status, :presence => true
end
