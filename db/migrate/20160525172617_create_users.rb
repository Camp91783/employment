class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :lastname
      t.date :birthdate
      t.string :email
      t.boolean :active

      t.timestamps null: false
    end
  end
end
