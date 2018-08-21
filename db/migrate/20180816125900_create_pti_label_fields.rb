class CreatePtiLabelFields < ActiveRecord::Migration[5.2]
  def change
    drop_table :pti_label_fields
    create_table :pti_label_fields do |t|
      t.string :label_name
      t.string :string
      t.string :box_location_x
      t.string :integer
      t.string :box_location_y
      t.string :integer
      t.string :description
      t.string :string
      t.string :box_size_x
      t.string :integer
      t.string :box_size_y
      t.string :integer
      t.string :font_size
      t.string :integer
      t.string :output_type
      t.string :string
      t.string :data_paramater_name
      t.string :string
      t.string :wrap_field
      t.string :string
      t.string :barcode_height
      t.string :integer
      t.string :barcode_width
      t.string :decimal
      t.string :show_readable_code
      t.string :boolean
      t.string :created_at
      t.string :datetime
      t.string :updated_at
      t.string :datetime
      t.string :pti_label_name_id
      t.string :integer
      t.string :font_name
      t.string :string
      t.string :font_style
      t.string :string
      t.string :horizontal_align
      t.string :string
      t.string :vertical_align
      t.string :string
      t.string :line_thickness
      t.string :integer
      t.string :text_prefix
      t.string :string
      t.string :captialize
      t.string :boolean
      t.string :barcode_type
      t.string :string
      t.string :current_data_value
      t.string :text
      t.string :scale_x
      t.string :decimal
      t.string :scale_y
      t.string :decimal
      t.string :color
      t.string :string
      t.string :mandate
      t.string :boolean
      t.string :image
      t.string :string

      t.timestamps
    end
  end
end
