class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.references :teacher
      t.references :student
      # t.references :teacher, foreign_key: true
      # t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
