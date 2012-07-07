class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.references  :presentation
      t.text        :html_content
      t.text        :effects

      t.timestamps
    end
    add_index :slides, :presentation_id
  end
end
