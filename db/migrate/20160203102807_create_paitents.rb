class CreatePaitents < ActiveRecord::Migration
  def change
    create_table :paitents do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
