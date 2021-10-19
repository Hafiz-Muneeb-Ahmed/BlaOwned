class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :p_id
      t.string :p_name
      t.string :p_quantity

      t.timestamps
    end
  end
end
