class UsersController < ApplicationController
  def index
    @icons = Icon.all
  end
 end
 