class AddDefaultAgeAndGenderFieldsToFillData < ActiveRecord::Migration[6.0]
  def change
    change_column :actors, :age, :integer, default: rand(14..100)
    change_column :actors, :gender, :string, default: "Unknown"
  end
end
