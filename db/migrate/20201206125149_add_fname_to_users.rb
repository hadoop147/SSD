class AddFnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :phonenumber, :string
    add_column :users, :date_of_birth, :date

  end
end
