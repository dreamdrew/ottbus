class CreateBusRoutes < ActiveRecord::Migration
  def change
    create_table :bus_routes do |t|
	  t.column "routeId", :string
	  t.column "routeName", :string
	  t.column "routeDirection", :string
	  t.column "busCompany", :string
      t.timestamps
    end
  end
end
