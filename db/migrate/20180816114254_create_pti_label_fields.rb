class CreatePtiLabelFields < ActiveRecord::Migration[5.2]
  def change
    create_table :pti_label_fields do |t|
      t.integer :pti_label_name_id
      t.integer :box_location_x
      t.integer :box_location_y
      t.integer :scale_x
      t.integer :scale_y
    end
  end
end
