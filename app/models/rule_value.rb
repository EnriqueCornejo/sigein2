class RuleValue < ActiveRecord::Base
  attr_accessible :categorical_value, :category, :numerical_value, :rule_id, :rule

  belongs_to :rule

  validates_presence_of :category
  validates_presence_of :categorical_value
  validates_presence_of :numerical_value
end
