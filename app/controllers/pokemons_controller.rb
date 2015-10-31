class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to root_path
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.trainer = current_trainer
    @pokemon.health = 100
    @pokemon.dead = false
    @pokemon.level = 1
    @pokemon.save
    if @pokemon.save
      redirect_to trainer_path(current_trainer)
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to new_pokemon_path
    end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
