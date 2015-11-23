class SelectionsController < ApplicationController
  def index
    @selections = Selection.all
    @icon = Icon.all
    @song = Song.all
  end

  def show
    @selection = Selection.find(params[:id])
  end

  def new
    @selection = Selection.new
  end

  def create
    @selection = Selection.new
    @selection.icon_id = params[:icon_id]
    @selection.song_id = params[:song_id]

    if @selection.save
      redirect_to "/selections", :notice => "Selection created successfully."
    else
      render 'new'
    end
  end

  def edit
    @selection = Selection.find(params[:id])
  end

  def update
    @selection = Selection.find(params[:id])

    @selection.icon_id = params[:icon_id]
    @selection.song_id = params[:song_id]

    if @selection.save
      redirect_to "/selections", :notice => "Selection updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @selection = Selection.find(params[:id])

    @selection.destroy

    redirect_to "/selections", :notice => "Selection deleted."
  end
end
