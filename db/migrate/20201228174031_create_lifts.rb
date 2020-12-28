class CreateLifts < ActiveRecord::Migration[6.0]
  def change
    create_table :lifts do |t|
      t.string :name
      t.integer :weight
      t.integer :repetitions
      t.string :ROM
      t.datetime :date
      t.text :notes

      t.timestamps
    end
  end
end
