class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :group, foreign_key: true
      t.string :name
      t.float :price
      t.text :description
      t.string :address
      t.time :time
      t.string :status

      t.timestamps
    end
  end
end
