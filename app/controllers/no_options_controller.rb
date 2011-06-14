class NoOptionsController < ApplicationController
  
  def index
    list
    render('list')
  end
  
  def list
    @no_options = NoOption.order("no_options.id ASC")
  end
  
  def show
    @no_option = NoOption.find(params[:id])
  end
  
  def new
    @no_option = NoOption.new
  end
  
  def create
    @no_option = NoOption.new(params[:no_option])
    if @no_option.save
      flash[:notice] = "Successfully Created No-Option \"#{@no_option.no_option}\""
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
    @no_option = NoOption.find(params[:id])
  end
  
  def update
    @no_option = NoOption.find(params[:id])
    if @no_option.update_attributes(params[:no_option])
      flash[:notice] = "Successfully Updated No-Option \"#{@no_option.no_option}\""
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end
  
  def delete
    @no_option = NoOption.find(params[:id])
  end
  
  def destroy
    no_option = NoOption.find(params[:id])
    flash[:notice] = "Successfully Deleted No-Option \"#{no_option.no_option}\""
    no_option.destroy
    redirect_to(:action => 'index')
  end
  
end
