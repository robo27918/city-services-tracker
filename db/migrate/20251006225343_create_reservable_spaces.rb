class CreateReservableSpaces < ActiveRecord::Migration[8.0]
  def change
    create_table :reservable_spaces do |t|
      t.references :facility, null: false, foreign_key: true
      t.string :name
      t.integer :capacity
      t.decimal :hourly_rate
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
