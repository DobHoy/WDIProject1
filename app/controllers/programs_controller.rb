class ProgramsController < ApplicationController
  

  def index
    @programs = Program.all

    
  end


  def show
    @program = Program.find(params[:id])

    
  end

   def new
    @program = Program.new

    
  end

  def edit
   
    @program = Program.find(params[:id])
    authorize! :destroy, @program

  end


  def create
    @program = Program.new(params[:program])

    
  end


  def update
    @program = Program.find(params[:id])
  end


      def destroy
        @program = Program.find(params[:id])
         authorize! :destroy, @program
        @program.destroy
        redirect_to programs_path

      end

end
