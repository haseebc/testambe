class ResultsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show new create edit update]

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

  def edit
    @result = Result.find(params[:id])
  end

  def update
    @result = Result.find(params[:id])

    if @result.update(result_params)
      redirect_to @result
    else
      render :edit
    end
  end  

  def destroy
    @result = Result.find(params[:id])
    @result.destroy

    redirect_to root_path
  end


  private
  def result_params
    params.require(:result).permit(:clientref, :firstname, :lastname, :dni, :clientemail, :result)
  end

end
