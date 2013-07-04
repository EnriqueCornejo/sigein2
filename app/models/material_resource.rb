class MaterialResource < ManagementObject
  validates_presence_of :date_of_purchase
  validates_presence_of :amortization_date
end