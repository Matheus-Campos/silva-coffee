class CreateClientUsers < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto'

    create_table :client_users, id: :uuid do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true, index: true
      t.string :password
      t.string :password_digest
      t.string :phone
      t.boolean :active, null: false, default: true
      t.boolean :verified, null: false, default: false

      t.timestamps
    end
  end
end
