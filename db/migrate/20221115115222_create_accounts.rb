class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.integer :country_code
      t.string :user_name
      t.string :full_phone_number

      t.timestamps
    end
  end
end
