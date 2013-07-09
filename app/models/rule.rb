class Rule < ActiveRecord::Base
  attr_accessible :name, :source
  attr_accessible :rule_values_attributes
  attr_accessible :valoration_category, :valoration_category_id

  has_many :rule_values, :dependent => :destroy

  accepts_nested_attributes_for :rule_values

  belongs_to :valoration_category

  validates_presence_of :name, :valoration_category
end
