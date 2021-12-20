class SurveyInputController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @inputs = @survey.survey_inputs
    @types = SurveyInput.available_types
    @newInput = SurveyInput.new()
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @survey.survey_inputs.create(new_input_params)
    redirect_to new_survey_input_path(@survey)
  end

  def destroy
    SurveyInput.find(params[:id]).destroy
    redirect_back(fallback_location: new_survey_input_path(params[:survey_id]))
  end

  private

  def new_input_params
    params.require(:survey_input).permit(:input_type, :label, :name)
  end
end
