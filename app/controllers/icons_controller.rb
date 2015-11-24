class IconsController < ApplicationController
  def index
    @icons = Icon.all
  end

  def show
    @icon = Icon.find(params[:id])
  end

  def new
    @icon = Icon.new
  end

  def create
    @icon = Icon.new
    @icon.icon_name = params[:icon_name]
    @icon.image = params[:image]

    if @icon.save
      redirect_to "/icons", :notice => "Icon created successfully."
    else
      render 'new'
    end
  end

  def edit
    @icon = Icon.find(params[:id])
  end

  def update
    @icon = Icon.find(params[:id])

    @icon.icon_name = params[:icon_name]
    @icon.image = params[:image]

    if @icon.save
      redirect_to "/icons", :notice => "Icon updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @icon = Icon.find(params[:id])

    @icon.destroy

    redirect_to "/icons", :notice => "Icon deleted."
  end
end
