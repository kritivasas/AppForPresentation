class AddEffectsDataAndNameToSlide < ActiveRecord::Migration

  def up
    add_column      :slides, :name,         :string
    add_column      :slides, :slide_class,  :string
    add_column      :slides, :position_x,   :integer
    add_column      :slides, :position_y,   :integer
    add_column      :slides, :position_z,   :integer
    add_column      :slides, :rotation_x,   :integer
    add_column      :slides, :rotation_y,   :integer
    add_column      :slides, :rotation_z,   :integer
    add_column      :slides, :scale,        :integer
    remove_column   :slides, :effects
  end

  def down
    remove_column       :slides, :name       
    remove_column       :slides, :slide_class
    remove_column       :slides, :position_x 
    remove_column       :slides, :position_y 
    remove_column       :slides, :position_z 
    remove_column       :slides, :rotation_x 
    remove_column       :slides, :rotation_y 
    remove_column       :slides, :rotation_z 
    remove_column       :slides, :scale      
    add_column          :slides, :effects, :text
  end

end
