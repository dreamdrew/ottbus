class AddRouteIdIndexToBusRoutes < ActiveRecord::Migration
  def change
		  add_index :bus_routes, :routeId
  end
end
