class CreatePlasmids < ActiveRecord::Migration[5.2]
  def change
    create_table :plasmids do |t|
      t.string :name
      t.string :source
      t.string :method
      t.string :reference
      t.string :sequence_validated

      t.timestamps
    end
  end
end
