class AddDateOfPurchaseToManagementObject < ActiveRecord::Migration
  def change
    add_column :management_objects, :date_of_purchase, :date
  end
end
