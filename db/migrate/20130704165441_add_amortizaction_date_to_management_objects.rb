class AddAmortizactionDateToManagementObjects < ActiveRecord::Migration
  def change
    add_column :management_objects, :amortization_date, :date
  end
end
