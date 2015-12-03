class ProfileController < ApplicationController
    # 프로필 페이지가 로그인한 유저에게만 보이도록
    before_action :authenticate_user!
    
    def index #index 페이지
        if current_user.pets.count > 0    
            redirect_to '/profile/pet_list'
        end
    end
    
    def create #create 페이지
        @prev_uri = request.referrer
    end
    
    def pet_list #pet_list 페이지
    end
    
    def create_pet
        Pet.create(user: current_user, name: params[:name], gender: params[:gender], birth: params[:birth], about: params[:about], img: params[:img])
        redirect_to params[:prev_uri]
    end
    
    def edit
        @pet = Pet.find(params[:id].to_i)
    end
    
    def update
        pp = Pet.find(params[:id])
        pp.name = params[:name]
        pp.gender = params[:gender]
        pp.birth = params[:birth]
        pp.about = params[:about]
        pp.img =params[:img]
        pp.save
        redirect_to '/profile/pet_list'
    end
    
    def destroy
        pp = Pet.find(params[:id].to_i)
        pp.destroy
        redirect_to '/profile/pet_list'
    end    
    
end
