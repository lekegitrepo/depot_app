class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.references :product, null: true, foreign_key: true
      t.belongs_to :cart, null: true, foreign_key: true

      t.timestamps
    end
  end
end
