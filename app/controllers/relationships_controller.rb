class RelationshipsController < ApplicationController
  
  def index
    if current_user
      @relationship = current_relationship
      render 'show'
    else
      redirect_to "/login" #Why doesnt "sessions#new" work here?
    end
  end
 
  def new
    @relationship = Relationship.new
  end

  def create
    @relationship = Relationship.new(relationship_params)
    #add save/err code
    
    redirect_to "relationships#show"
  end

  def show
    @relationship = current_relationship
  end

  def update
    @relationship = current_relationship
  end


  private

  def relationship_params
    params.require(:relationship).permit(:status)
  end
  def current_relationship
    @relationship = current_user.relationships.first
  end
  
end