class CreatePhonemes < ActiveRecord::Migration
  def change
    create_table :phonemes do |t|
      t.string :base
      t.string :actual
      t.string :diacritic
      t.integer :sequence
      t.references :speaker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
