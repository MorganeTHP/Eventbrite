class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      #t.string :Event
      #t.string :Attendance
      t.string :email
      # t. :encrypted_password
      t.text :description
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
