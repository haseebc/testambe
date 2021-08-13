class ResultsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show new create]

  def index
    @results = Result.all
  end

  def show
    @result = Result.find(params[:id])
  end

  def new
    @result = Result.new
  end

  def create
    @result = Result.new(clientref: "...", firstname: "...")

    if @result.save
      redirect_to @result
    else
      render :new
    end
  end

  private
  def result_params
    params.require(:result).permit(:clientref, :firstname, :lastname, :dni, :clientemail, :result)
  end

end
