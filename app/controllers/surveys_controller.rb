class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
  end

  def create
    survey = current_user.surveys.create(new_params)
    redirect_to new_survey_input_path(survey)
  end

  private

  def new_params
    params.require(:survey).permit(:title)
  end
end
