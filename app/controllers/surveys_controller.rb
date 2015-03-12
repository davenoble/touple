class SurveysController < ApplicationController
  def new
      @survey = Survey.new()
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.user_id = current_user.id
    @survey.relationship_id = current_user.relationships.last.id #TODO add releationship selection feature to new view?
    if @survey.save
      redirect_to "/relationships"
    else
      render 'new'
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:happy_sad, :lonely_crowded, :horny_pressured, :janitor_nagged, :journal_entry) #TODO add allowed params
  end
end