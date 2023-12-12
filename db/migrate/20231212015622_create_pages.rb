class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :url
      t.datetime :last_scanned
      t.boolean :indexed
      t.belongs_to :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
