class RelacionLibrosController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

   
  def new
    @hash_n_relecion = RelacionLibro.new
    @var_id_b = Biblioteca.all
    @var_id_l = Libro.all
  end
   

  def create     
    @relecion = RelacionLibro.new(
      biblioteca_id:params[:relacion_libro][:biblioteca_id],   
      libro_id:params[:relacion_libro][:libro_id]  
    )
 
    if @relecion.save
      redirect_to biblioteca_path(@relecion.biblioteca_id)
    else
      redirect_to bibliotecas_path
    end  
  end

end
