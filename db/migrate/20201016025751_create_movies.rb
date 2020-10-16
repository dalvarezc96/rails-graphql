class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.text :plot
      t.integer :year

      t.timestamps
    end
    add_index :movies, :title
  end
end
