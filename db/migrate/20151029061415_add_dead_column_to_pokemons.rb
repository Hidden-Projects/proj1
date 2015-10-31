class AddDeadColumnToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :dead, :boolean
  end
end
