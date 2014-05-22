class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all

    
  end

  def show
    @cohort = Cohort.find(params[:id])

    
  end

  def new
    @cohort = Cohort.new

    
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end


  def create

    puts "LOOKING AT PARAMS"
    puts "#{params.to_s}"
render :text => "hello"
    @cohort = Cohort.new(params[:cohort])
 
  end

  def update
    @cohort = Cohort.find(params[:id])

    
  end


  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy

    
  end


end
