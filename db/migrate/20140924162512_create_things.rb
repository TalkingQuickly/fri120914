class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :something

      t.timestamps
    end
  end
end
