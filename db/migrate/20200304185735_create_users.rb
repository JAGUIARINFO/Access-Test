class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :name
      t.string :lastname
      t.boolean :disabled

      t.timestamps
    end
  end
end
