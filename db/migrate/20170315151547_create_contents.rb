class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.integer :index
      t.references :article, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
