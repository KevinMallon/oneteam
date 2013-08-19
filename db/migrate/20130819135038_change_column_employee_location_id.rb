class ChangeColumnEmployeeLocationId < ActiveRecord::Migration
	def change
	  change_column :employees, :location_id, :integer
	end
end
