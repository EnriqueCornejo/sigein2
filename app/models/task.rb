class Task < ActiveRecord::Base
  attr_accessible :description, :name
  attr_accessible :task_material_resources_attributes

  validates_presence_of :name
  validates_presence_of :description

  has_many :task_material_resources
  has_many :material_resources, :through => :task_material_resources

  accepts_nested_attributes_for :task_material_resources
end
