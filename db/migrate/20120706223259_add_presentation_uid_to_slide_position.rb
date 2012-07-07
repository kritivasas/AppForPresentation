class AddPresentationUidToSlidePosition < ActiveRecord::Migration
  def up
    add_column :slide_positions, :presentation_uid, :string
  end
  def down
    remove_column :slide_positions, :presentation_uid
  end
end
