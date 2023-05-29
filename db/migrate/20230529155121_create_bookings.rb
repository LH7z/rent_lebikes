class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bike, null: false, foreign_key: true
      t.integer :checkin
      t.integer :checkout
      t.integer :totalprice

      t.timestamps
    end
  end
end
