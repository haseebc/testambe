class ResultsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index ]

  def index
    @results = Result.all
  end
end
