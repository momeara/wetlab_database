class CreatePrimers < ActiveRecord::Migration[5.2]
  def change
    create_table :primers do |t|
      t.string :name
      t.text :sequence

      t.timestamps
    end
  end
end
