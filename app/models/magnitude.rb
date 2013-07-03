class Magnitude < ActiveRecord::Base
  attr_accessible :management_object_id, :name, :management_object, :unit_id, :unit

  belongs_to :management_object

  belongs_to :unit

  belongs_to :magnitude_method

  def to_s
    "#{self.name}"
  end
end
