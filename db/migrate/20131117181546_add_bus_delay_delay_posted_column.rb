class AddBusDelayDelayPostedColumn < ActiveRecord::Migration
  def change
		  add_column :bus_delays, :posted, :datetime
  end
end
