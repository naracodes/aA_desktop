class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.string :status, null: false, default: "INCOMPLETE"

      t.timestamps
    end

    add_index :goals, :user_id
  end
end
