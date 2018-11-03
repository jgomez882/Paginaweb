class GeolocationsController < ApplicationController

	#GET /geolocations
	# Trae todos los registros 
	def index
		@geolocations=Geolocation.all
	end


	#GET geolotaions/:id
	def show
		#find encuentra un registro por su id
		#variable de tipo geolocation
		#params recibe todos los parametros que tiene id
		@geolocation = Geolocation.find(params[:id])
		# Geolocation.where(" body = ")
		# Geolocation.where("  id = ?, params[:id]")
		#Geolocation.where.not("id = ?", params[:id])
	end

	#GET /articles/new y todavia no esta en la bd
	def new
		@geolocation = Geolocation.new
		@userdata = UserDatum.all
	end

	def contactanos
		@geolocation = Geolocation.new
		@userdata = UserDatum.all
	end

	def nosotros
		@geolocation = Geolocation.new
		@userdata = UserDatum.all
	end

	def graficas
		@geolocation = Geolocation.new
		@userdata = UserDatum.all
	end

	def formulario
		@geolocation = Geolocation.new
		@userdata = UserDatum.all
	end

	def informaciongeneral
		@geolocation = Geolocation.new
		@userdata = UserDatum.all
	end

	def especialistas
		@geolocation = Geolocation.new
		@userdata = UserDatum.all
	end

	def padres
		@geolocation = Geolocation.new
		@userdata = UserDatum.all
	end


	def edit
		#encuentro el location que voy a editar
		@geolocation = Geolocation.find(params[:id])
	end

	#POST /geolocations
	def create
		@geolocation = Geolocation.new(geolocation_params)
	
    	#si el articulo pudo guardarse es por que las validaciones pasaron
		if @geolocation.save
			redirect_to @geolocation
		else
		   	render :new
		end
	end


	def destroy
		#elimina el objeto de la bd
		@geolocation = Geolocation.find(params[:id])
		@geolocation.destroy
		redirect_to geolocation_path
	end

	#si el objeto ya esta en la bd lo manda a update
	#PUT
	def update
		# @geolocation.update_attributes({title: 'Nuevo titulo'})
		@geolocation = Geolocation.find(params[:id])
		if @geolocation.update(geolocation_params)
			redirect_to @geolocation
		else
			render :edit
		end
	end

	#METODOS PRIVADOS DE LAS CLASES
	private
	def geolocation_params

		params.require(:geolocation).permit(:title,:body)
	
	end



end