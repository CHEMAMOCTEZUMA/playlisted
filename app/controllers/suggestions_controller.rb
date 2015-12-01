class SuggestionsController < ApplicationController
  def index
    @suggestions = Suggestion.all
  end

  def show
    @suggestion = Suggestion.find(params[:id])
  end

  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.new
    @suggestion.url = params[:url]
    @suggestion.aritst = params[:aritst]
    @suggestion.song_name = params[:song_name]

    if @suggestion.save
      redirect_to "/suggestions", :notice => "Suggestion created successfully."
    else
      render 'new'
    end
  end

  def edit
    @suggestion = Suggestion.find(params[:id])
  end

  def update
    @suggestion = Suggestion.find(params[:id])

    @suggestion.url = params[:url]
    @suggestion.aritst = params[:aritst]
    @suggestion.song_name = params[:song_name]

    if @suggestion.save
      redirect_to "/suggestions", :notice => "Suggestion updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @suggestion = Suggestion.find(params[:id])

    @suggestion.destroy

    redirect_to "/suggestions", :notice => "Suggestion deleted."
  end
end
