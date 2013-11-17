class FixBusDelaysColumnName < ActiveRecord::Migration
  def change
		  rename_column :bus_delays, :routeId, :bus_route_id
  end
end
