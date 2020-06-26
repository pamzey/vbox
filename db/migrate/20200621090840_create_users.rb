
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string    :email, null: false, uniq: true
      t.string    :password_digest, null: false
      t.boolean   :active, null: false, default: 1

      t.timestamps
    end
  end

  def down
    drop_table :users
  end

end
