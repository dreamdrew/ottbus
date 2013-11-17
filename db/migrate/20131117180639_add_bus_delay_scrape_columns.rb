class AddBusDelayScrapeColumns < ActiveRecord::Migration
  def change
		  add_column :bus_delays, :routeId, :string
		  add_column :bus_delays, :direction, :string
		  add_column :bus_delays, :originalTime, :string
		  add_column :bus_delays, :delayedMins, :integer
		  add_column :bus_delays, :reason, :string
  end
end
