class AddThemeToParties < ActiveRecord::Migration[7.0]
  def change
    add_column :parties, :theme, :string
  end
end
