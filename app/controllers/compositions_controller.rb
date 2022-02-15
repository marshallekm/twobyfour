class CompositionsController < ApplicationController
  before_action :find_composition, only: [:show, :edit, :update, :destroy]

  def index
    @compositions = Composition.all
  end

  def new
    @composition = Composition.new
  end

  def create
    @composition = Composition.new(composition_params)
    @composition.user = current_user
    if @composition.save
      redirect_to composition_path(@composition)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @composition.update(composition_params)
      redirect_to composition_path, notice: "Composition created!"
    else
      render :edit
    end
  end

  def destroy
    @composition.destroy
  end

  private

  def composition_params
    params.require(:composition).permit(:memory_list)
  end

  def find_composition
    @composition = Composition.find(params[:id])
  end
end
