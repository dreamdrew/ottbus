class CreateBusDelays < ActiveRecord::Migration
  def change
    create_table :bus_delays do |t|
      t.timestamps
    end
  end
end
