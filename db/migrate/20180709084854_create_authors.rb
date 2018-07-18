class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :string
      t.references :article

      t.timestamps
    end
  end
end
