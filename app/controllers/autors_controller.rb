class AutorsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  
  def new
    @hash_n_a = Autor.new
      
   end 
 
   def create
     #@hash_n_autor = Autor.new(
     #  nom: params[:autor][:nom],
     #  apellido_p: params[:autor][:apellido_p]     
     #)
      
     @hash_n_autor = Autor.new(parametro_muestra)


      if @hash_n_autor.save
       redirect_to bibliotecas_path
      else
       render :new
      end 
   end 

  private 
  def parametro_muestra
    params.require(:autor).permit(:nom, :apellido_p, :apellido_m, :nacionalidad, :fecha_nac, :sexo)
  end


end
