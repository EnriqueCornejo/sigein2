class ManagementObject < ActiveRecord::Base
  attr_accessible :name, :object_type

  validates_presence_of :name
  validates_presence_of :object_type

  belongs_to :object_type
  has_many :magnitudes
end
