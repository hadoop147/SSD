class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.string :phonenumber
      t.date :date_of_birth
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
