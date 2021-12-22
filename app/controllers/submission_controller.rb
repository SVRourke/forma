class SubmissionController < ApplicationController
    def new
        @survey = Survey.find(params[:survey_id])
        # @submission = @survey.submissions.new()

    end

    def create
    end
end
