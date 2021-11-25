class BibliotecasController < ApplicationController
  
  before_action :authenticate_user!


  def index
    @hash_i =Biblioteca.all
  end

  def show
    @hash_s = Biblioteca.find(params[:id])    
    #@has_biblioteca_libros = RelacionLibro.where("biblioteca_id = ?", params[:id]) esta forma tipo slq
    #@has_biblioteca_libros = RelacionLibro.where("biblioteca_id = ?", @hash_s.id)  # sql con objeto...
    @has_biblioteca_libros = RelacionLibro.where(biblioteca_id:params[:id])
  end



  def edit
    @id_biblioteca = Biblioteca.find(params[:id])
  end

  def update
   @hash_e_bllioteca = Biblioteca.find(params[:id])
      
     if @hash_e_bllioteca.update(nombre: params[:biblioteca][:nombre],
      direccion: params[:biblioteca][:direccion])
      redirect_to bibliotecas_path
     else
      render :edit
     end 
  end






  def new
   @hash_n = Biblioteca.new
     
  end 

  def create
    @hash_n_bllioteca = Biblioteca.new(
      nombre: params[:biblioteca][:nombre],
      direccion: params[:biblioteca][:direccion]
    )
     if @hash_n_bllioteca.save
      redirect_to bibliotecas_path
     else
      render :new
     end 
  end
  

 def destroy
  @id_biblioteca_eliminar = Biblioteca.find(params[:id])
  @id_biblioteca_eliminar.destroy
  redirect_to bibliotecas_path
end 




end
