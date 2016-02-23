class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.references :city, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.references :country, index: true, foreign_key: true
      t.references :native_language, index: true, foreign_key: true
      t.integer :other_languages
      t.integer :age
      t.integer :gender
      t.integer :english_onset
      t.integer :learning_method
      t.references :english_country_residence, index: true, foreign_key: true
      t.integer :length_english_residence
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
