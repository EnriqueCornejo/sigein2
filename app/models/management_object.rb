class ManagementObject < ActiveRecord::Base
  attr_accessible :name, :magnitudes_attributes, :photo, :date_of_purchase, :amortization_date, :object_categories_attributes

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_presence_of :name

  has_many :magnitudes, :dependent => :destroy
  has_many :object_categories, :dependent => :destroy
  has_many :valoration_categories, :through => :object_categories

  accepts_nested_attributes_for :magnitudes
  accepts_nested_attributes_for :object_categories

  def to_s
    "#{self.name}"
  end
end
