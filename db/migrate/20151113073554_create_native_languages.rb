class CreateNativeLanguages < ActiveRecord::Migration
  def change
    create_table :native_languages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
