class FlashcardsController < ApplicationController
  before_action :find_flashcard, only: :show

  def index
    @flashcard = Flashcard.all
  end

  # def new
  #   @flashcard = Flashcard.new
  # end

  # def create
  #   @flashcard = Flashcard.new(flashcard)
  #   if @flashcard.save
  #     redirect_to flashcard(@flashcard)
  #   else
  #     render :new
  #   end
  # end

  def show; end

  # def edit; end

  # def update
  #   if @flashcard.update(flashcard)
  #     redirect_to flashcard, notice: "flashcard created!"
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @flashcard.destroy
  # end

  private

  # def flashcard
  #   params.require(:flashcard).permit(:english_word, :japanese_word, :category)
  # end

  def find_flashcard
    @flashcard = Flashcard.find(params[:id])
  end
end