class SnacksController < ApplicationController

  before_action :find_snack, only: [:show, :edit, :update, :destroy]

  def index
    @snacks = Snack.all
  end

  def show
  end

  def new
    @snack = Snack.new
    @retailers = Retailer.all
  end

  def create 
    @snack = Snack.create(snack_params)
    if @snack.errors.any?
      render :new
    else
      redirect_to snack_path(@snack)
    end 
  end 

  def edit
  end

  def update
    @snack.update(snack_params)
      redirect_to snack_path(@snack)
  end

  def destroy
    @snack.destroy
      redirect_to snacks_path
  end


  private

  def snack_params
    params.require(:snack).permit(:name, :calories, :deliciousness, :retailer_id)
  end

  def find_snack
    @snack = Snack.find(params[:id])
  end


end
