class CreateFacilities < ActiveRecord::Migration[8.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.datetime :founded
      t.string :address
      t.string :type
      t.string :status
      t.string :operating_hours
      t.text :rules
      t.boolean :is_reservable
      t.integer :capacity
      t.string :phone_contact
      t.string :image_url

      t.timestamps
    end
  end
end
