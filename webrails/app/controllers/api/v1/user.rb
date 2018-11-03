module API  
    module V1
      class User < Grape::API
        include API::V1::Defaults
  
        resource :User do
        #obteniendo los datos de un usuario en especifico de la bd donde me pasen el id y comparo que el id sea igual al que me pasaron
          desc "Return data from an specific user"
          params do
            requires :id, type: String, desc: "ID of the 
              user"
          end
          get ":id", root: "user" do
            User.where(id: permitted_params[:id]).first!
          end
          #enviando ala bd los datos de un usuario del juego
          desc "Post user data to an specific user"
          params do
            requires :id, type: String, desc: "ID of the user"
          end
          post ":id", root: "user" do
            User.where(id: permitted_params[:id]).first!
          end
          #este es para la meta del niño la busca por ahi 
          desc "Return the objective from an specific user"
          params do
            requires :id, type: String, desc: "ID of the user"
          end
          get ":id", root: "user" do
            User.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
  end  