class LocationsController < ApplicationController
  # Middleware
  before_action :logged_users_only, only: [:create, :new]

  def index

  end

  def new
      @location = Location.new(name: "")
  end

  def create
      new_location = params.require(:location).permit(:name)
      @location = Location.new(new_location)


      if !@location.valid?
          flash[:danger] = "Error the location name is not valid"
          render 'new'
      elsif @location.duplicate?
          flash[:danger] = "The location name already exists!"
          render 'new'
      else
          @location.save
          redirect_to root_path, flash:
          { success: 'Successfully created location. ' + @location.name }
      end
  end

  def show
    @location = Location.find(params[:id])
    @courses = @location.courses
  end
end