class Rule < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :rule_values_attributes

  validates_presence_of :name

  has_many :rule_values, :dependent => :destroy

  accepts_nested_attributes_for :rule_values
end
