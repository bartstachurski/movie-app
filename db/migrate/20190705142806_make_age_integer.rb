class MakeAgeInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :actors, :age, :integer, using: 'age::integer'
  end
end
