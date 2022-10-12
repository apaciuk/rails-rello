# frozen_string_literal: true

class BoardsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_board, only: %i[show edit update destroy]

  # GET /boards or /boards.json
  def index
    @boards = Board.all
  end

  # GET /boards/1 or /boards/1.json
  def show
    @board = Board.find(params[:id])
    # @lists = @board.lists
    # @list = List.new
    #@pagy, @cards = pagy(@board.cards)
  end

  # GET /boards/new
  def new
    @board = Board.new
  end

  # GET /boards/1/edit
  def edit
    @board = Board.find(params[:id])
  end

  # POST /boards or /boards.json
  def create
    @board = Board.new(board_params.merge(user: current_user))

    respond_to do |format|
      if @board.save
        format.html { redirect_to board_url(@board), notice: 'Board was successfully created.' }
        format.json { render :show, status: :created, location: @board }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boards/1 or /boards/1.json
  def update
    respond_to do |format|
      if @board.update(board_params)
        format.html { redirect_to board_url(@board), notice: 'Board was successfully updated.' }
        format.json { render :show, status: :ok, location: @board }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boards/1 or /boards/1.json
  def destroy
    @board.destroy

    respond_to do |format|
      format.html { redirect_to boards_url, notice: 'Board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def sort
    # Get the new col sort
    sorted_cols = JSON.parse(board_params['boardIds'])['columns']
    sorted_cols.each do |col|
      # Look at each of its cards
      col['itemIds'].each do |card_id|
        # Find the card in the DB and update its col and position
        Card.find(card_id).update(
          board_column: BoardColumn.find(col['id']),
          position: col['itemIds'].find_index(card_id)
        )
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_board
    @board || Board.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def board_params
    params.require(:board).permit(:name, :description, :boardIds)
  end
  
end
