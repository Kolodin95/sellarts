class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :author
      t.string :creation_date
      t.string :denomination
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
