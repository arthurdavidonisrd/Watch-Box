class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.float :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
