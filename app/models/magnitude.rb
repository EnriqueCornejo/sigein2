class Magnitude < ActiveRecord::Base
  attr_accessible :management_object_id, :name, :management_object, :unit_id, :unit, :magnitude_method_id, :magnitude_method

  belongs_to :management_object
  belongs_to :unit
  belongs_to :magnitude_method

  validates_presence_of :name
  validates_presence_of :management_object
  validates_presence_of :unit
  validates_presence_of :magnitude_method

  def to_s
    "#{self.name}"
  end
end
