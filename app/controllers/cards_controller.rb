class CardsController < ApplicationController
    before_action :set_card, only: [:show, :edit, :update, :destroy]
  
    def index
      @cards = Card.all
    end
  
    def show
    end
  
    def new
      @card = Card.new
    end
  
    def edit
    end
  
    def create
      @card = Card.new(card_params)
  
      if @card.save
        redirect_to @card, notice: 'Card was successfully created.'
      else
        render :new
      end
    end
  
    def update
      if @card.update(card_params)
        redirect_to @card, notice: 'Card was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @card.destroy
      redirect_to cards_url, notice: 'Card was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_card
        @card = Card.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def card_params
        params.require(:card).permit(:name, :description, :attack_value, :defense_value, :effect)
      end
  end
  