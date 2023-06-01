class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :bike, null: false, foreign_key: true
      t.date :checkin
      t.date :checkout
      t.integer :totalprice

      t.timestamps
    end
  end
end
