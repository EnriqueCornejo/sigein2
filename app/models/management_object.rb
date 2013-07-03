class ManagementObject < ActiveRecord::Base
  attr_accessible :name, :object_type, :object_type_id, :magnitudes_attributes

  validates_presence_of :name
  validates_presence_of :object_type

  belongs_to :object_type
  has_many :magnitudes

  accepts_nested_attributes_for :magnitudes

  def to_s
    "#{self.name}"
  end
end
