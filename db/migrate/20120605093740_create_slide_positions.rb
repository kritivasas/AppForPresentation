class CreateSlidePositions < ActiveRecord::Migration
  def change
    create_table :slide_positions do |t|
      t.integer :step
      t.string :last_update_ip

      t.timestamps
    end
  end
end
