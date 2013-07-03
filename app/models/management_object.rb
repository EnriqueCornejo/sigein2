class ManagementObject < ActiveRecord::Base
  attr_accessible :name, :object_type, :object_type_id, :magnitudes_attributes, :photo

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_presence_of :name
  validates_presence_of :object_type

  belongs_to :object_type
  has_many :magnitudes, :dependent => :destroy

  accepts_nested_attributes_for :magnitudes

  def to_s
    "#{self.name}"
  end
end
