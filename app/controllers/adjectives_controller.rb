class AdjectivesController < ApplicationController
  
  layout 'admin'
  
  def index
    redirect_to("#{root_path}admin/adjectives")
    # list
    # render('list')
  end
  
  def list
    @adjectives = Adjective.order("adjectives.adjective ASC")
  end
  
  def show
    @adjective = Adjective.find(params[:id])
  end
  
  def new
    @adjective = Adjective.new
  end
  
  def create
    @adjective = Adjective.new(params[:adjective])
    if @adjective.save
      flash[:notice] = "Successfully Created Adjective \"#{@adjective.adjective}\""
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
    @adjective = Adjective.find(params[:id])
  end
  
  def update
    @adjective = Adjective.find(params[:id])
    if @adjective.update_attributes(params[:adjective])
      flash[:notice] = "Successfully Updated Adjective \"#{@adjective.adjective}\""
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end
  
  def delete
    @adjective = Adjective.find(params[:id])
  end
  
  def destroy
    adjective = Adjective.find(params[:id])
    flash[:notice] = "Successfully Deleted Adjective \"#{adjective.adjective}\""
    adjective.destroy
    redirect_to(:action => 'index')
  end
  
end
