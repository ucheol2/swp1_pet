class ProfileController < ApplicationController
    # 프로필 페이지가 로그인한 유저에게만 보이도록
    before_action :authenticate_user!
    
    def index #index 페이지
        unless current_user.pets.empty?
        redirect_to '/profile/pet_list'
        end
    end
    
    def create #create 페이지
    end
    
    def pet_list #pet_list 페이지
    end
    
    def create_pet
        Pet.create(user: current_user, name: params[:name], gender: params[:gender], age: params[:age], about: params[:about], img: params[:img])
        redirect_to '/profile/pet_list'
    end
    
end
