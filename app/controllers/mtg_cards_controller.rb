class MtgCardsController < ApplicationController
  before_action :set_mtg_card, only: %i[ show edit update destroy ]

  # GET /mtg_cards or /mtg_cards.json
  def index
    @mtg_cards = MtgCard.all
  end

  # GET /mtg_cards/1 or /mtg_cards/1.json
  def show
  end

  # GET /mtg_cards/new
  def new
    @mtg_card = MtgCard.new
  end

  # GET /mtg_cards/1/edit
  def edit
  end

  # POST /mtg_cards or /mtg_cards.json
  def create
    @mtg_card = MtgCard.new(mtg_card_params)

    respond_to do |format|
      if @mtg_card.save
        format.html { redirect_to mtg_card_url(@mtg_card), notice: "Mtg card was successfully created." }
        format.json { render :show, status: :created, location: @mtg_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mtg_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mtg_cards/1 or /mtg_cards/1.json
  def update
    respond_to do |format|
      if @mtg_card.update(mtg_card_params)
        format.html { redirect_to mtg_card_url(@mtg_card), notice: "Mtg card was successfully updated." }
        format.json { render :show, status: :ok, location: @mtg_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mtg_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtg_cards/1 or /mtg_cards/1.json
  def destroy
    @mtg_card.destroy

    respond_to do |format|
      format.html { redirect_to mtg_cards_url, notice: "Mtg card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mtg_card
      @mtg_card = MtgCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mtg_card_params
      params.require(:mtg_card).permit(:Name, :Set, :Set_Number, :Quantity)
    end
end
