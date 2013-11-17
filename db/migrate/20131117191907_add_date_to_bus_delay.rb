class AddDateToBusDelay < ActiveRecord::Migration
  def change
		  add_column :bus_delays, :date, :date
  end
end
