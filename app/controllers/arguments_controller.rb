class ArgumentsController < ApplicationController
  def index
    @arguments = Argument.all
  end

  def new
    @argument = Argument.new
  end

  def create
    @argument = Argument.new(argument_params)
    @argument.user_id = current_user.id
    @argument.relationship_id = current_relationship.id
    if !Argument.today.find_by(relationship_id: current_relationship.id)
      if @argument.save
        redirect_to "relationships"
      else
        redirect_to "new"
      end
    else
        puts "YOU CANNOT POST MORE THAN ONE FIGHT PER RELATIONSHIP PER DAY!"
        redirect_to "/", notice: "You cannot post more than one fight daily!"
        
    end
  end

  def show
  end

  def update
  end
  
  private

  def argument_params
    params.require(:argument).permit(:owner_description,:second_description,:owner_response,:second_response) #TODO Add correct params
  end
end
