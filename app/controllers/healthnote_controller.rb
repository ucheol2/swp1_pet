class HealthnoteController < ApplicationController
      # 건강수첩 페이지가 로그인한 유저에게만 보이도록
    before_action :authenticate_user!
    
    def index #index 페이지 # 진료기록 검색기능 추가
        @my_pets = current_user.pets
    end
    
    def index #index 페이지
        @my_pets = current_user.pets
    end
    
    def input #건강 수첩 내용 작성 페이지
    end
    
    def create
        pet = Pet.find(params[:pet_id].to_i)
        Healthnote.create(pet: pet, order: pet.healthnotes.count+1, content: params[:content], date: params[:date], hospital: params[:hospital], etc: params[:etc])
        redirect_to "/healthnote/note_detail/#{pet.id}"
    end
    
    def delete 
        Healthnote.find(params[:id].to_i).destroy
        i = 1
        Healthnote.all.each do |item|
            item.update(order: i)
            i = i + 1;
        end
        redirect_to "/healthnote/index"
    end

    def edit
        @Healthnote=Healthnote.find(params[:id].to_i)
    end
    
    def update
        Healthnote.find(params[:id].to_i).update(order: params[:order], content: params[:content], date: params[:date], hospital: params[:hospital], etc: params[:etc])
        redirect_to "/healthnote/index"
    end
    
    def note_detail
        if Pet.find(params[:id].to_i).user != current_user
            redirect_to :back
        else
            if params[:irum]
                @healthnote = []
                Healthnote.all.each do |item|
                    if item.content.include? params[:irum] 
                        @healthnote << item
                    end
                end
            else
                @healthnote = Pet.find(params[:id].to_i).healthnotes
            end
        end
    end
end
