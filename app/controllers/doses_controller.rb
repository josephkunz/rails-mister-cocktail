class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # finding the restaurant from the form
    @cocktail = Cocktail.find(params[:cocktail_id])
    # creating a new review from the form input field
    @dose = Dose.new(dose_params)
    # assigning the restaurant id to the review
    @dose.cocktail = @cocktail
    # writing the new review to the db
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end


