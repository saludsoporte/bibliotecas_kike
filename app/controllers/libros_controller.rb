class LibrosController < ApplicationController
  def index
   @hash_n_libro = Libro.all
  end



  def show

  end

  def edit
  end

  #primer commi

  #primer commi
  
  def new
    @hash_n_libro = Libro.new
    @var_id = Autor.all
          
   end 
 
   def create
   
    @libro=Libro.new(
      titulo: params[:libro][:titulo],      
      precio: params[:libro][:precio],
      autor_id:params[:libro][:autor_id]         
      )

    if @libro.save

      UserMailer.new_libro(current_user, @libro).deliver
      redirect_to bibliotecas_path

    else
      @hash_n_libro = Libro.new
    @var_id = Autor.all
      render :new
    end 
  end


end
