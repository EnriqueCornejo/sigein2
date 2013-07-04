class ManagementObject < ActiveRecord::Base
  attr_accessible :name, :magnitudes_attributes, :photo, :date_of_purchase, :amortization_date

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_presence_of :name

  has_many :magnitudes, :dependent => :destroy

  accepts_nested_attributes_for :magnitudes

  def to_s
    "#{self.name}"
  end
end
