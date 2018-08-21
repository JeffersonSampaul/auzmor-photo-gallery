class CreatePtiLabelNames < ActiveRecord::Migration[5.2]
  def change
    create_table :pti_label_names do |t|
      t.string :label_name

      t.timestamps
    end
  end
end
