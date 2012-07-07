class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :uid, :unique => true
      t.string :name

      t.timestamps
    end
  end
end
