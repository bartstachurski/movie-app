class AddMovieIdToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :movie_id, :integer
  end
end


# 1 - 13, 15, 16, 18