class AddDefaultAgeFieldSecondTry < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:actors, :age, from: nil, to: rand(14..100))
  end
end
