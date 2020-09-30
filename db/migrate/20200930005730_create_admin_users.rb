class CreateAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_users, id: :uuid do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :phone

      t.timestamps
    end
  end
end
