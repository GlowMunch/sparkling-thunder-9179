class CreateUnion < ActiveRecord::Migration[7.0]
  def change
    create_table :unions do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :actor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
