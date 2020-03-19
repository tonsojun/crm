class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone, :limit => 8
      t.string :street_address
      t.string :city_address
      t.string :state_address
      t.integer :zip_code
      t.datetime :birthdate

      t.timestamps
    end
  end
end
