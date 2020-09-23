class CreateClientUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :client_users do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true, index: true
      t.string :password
      t.string :password_digest
      t.string :phone
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
