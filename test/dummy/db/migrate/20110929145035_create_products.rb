class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name_ru
      t.string :name_en
      t.timestamps
    end
  end
end