class ChangeColumnRequestsLocationId < ActiveRecord::Migration
	def change
	  change_column :requests, :location_id, :integer
	end
end
