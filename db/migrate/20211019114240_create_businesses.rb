class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :b_id
      t.string :b_name
      t.string :b_type
      t.string :b_lng
      t.string :b_lat

      t.timestamps
    end
  end
end
