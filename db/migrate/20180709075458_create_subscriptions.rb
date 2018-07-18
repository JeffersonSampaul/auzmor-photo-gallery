class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :subscriber_name
      t.references :article
      t.string :subscriber_mail

      t.timestamps
    end
  end
end
