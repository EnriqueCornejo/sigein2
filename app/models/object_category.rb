class ObjectCategory < ActiveRecord::Base
  attr_accessible :management_object_id, :valoration_category_id, :management_object, :valoration_category

  belongs_to :management_object
  belongs_to :valoration_category

  validates :valoration_category_id, :uniqueness => {:scope => :management_object_id}

end
