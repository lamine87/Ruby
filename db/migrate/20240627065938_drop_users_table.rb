class DropUsersTable < ActiveRecord::Migration[7.1]
  def up
    drop_table :users
  end

  def down
    create_table :users do |t|
      t.string :prenom, null: false
      t.string :nom, null: false
      t.string :email, null: false
      t.string :password_digest
      t.timestamps
    end
  end
end
