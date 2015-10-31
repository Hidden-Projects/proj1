class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def damage
    @pokemon = Pokemon.find(params[:pid])
    @pokemon.damage! 10
    redirect_to trainer_path(params[:id])
  end

  def heal
    @pokemon = Pokemon.find(params[:pid])
    @pokemon.heal! 10
    redirect_to trainer_path(params[:id])
  end

end
