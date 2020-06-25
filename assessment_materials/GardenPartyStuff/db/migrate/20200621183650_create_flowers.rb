class CreateFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :flowers do |t|
      t.string :flower_type
      t.integer :gardener_id, null: false
      t.integer :garden_id, null: false

      t.timestamps
    end
    add_index :flowers, :garden_id
    add_index :flowers, :gardener_id
  end
end
