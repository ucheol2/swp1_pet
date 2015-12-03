class HealthnoteController < ApplicationController
      # 건강수첩 페이지가 로그인한 유저에게만 보이도록
    before_action :authenticate_user!
    
    def index #index 페이지 # 진료기록 검색기능 추가
        if params[:irum]
           @healthnote = [] 
           Healthnote.all.each do |item|
               if item.content.include? params[:irum] # 아이템이 검색어를 포함한다면
                   @healthnote << item # 아이템을 healthnote 어레이에 담는당
               end
           end
        else
            @healthnote = Healthnote.all # 아이템이 검색어를 포함하지 않으면 그냥 전체 진료기록 출력
        end

        @healthnote = current_user.healthnotes # 로그인한 이용자 계정에 해당하는 진료기록만 출력

    end
    
    def input #건강 수첩 내용 작성 페이지
    end
    
    def create
        Healthnote.create(user: current_user, order: current_user.healthnotes.count+1, content: params[:content], date: params[:date], hospital: params[:hospital], etc: params[:etc])
        redirect_to "/healthnote/index"
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

        Healthnote.update(content: params[:content], date: params[:date], hospital: params[:hospital], etc: params[:etc])

        redirect_to "/healthnote/index"
    end
    

  


end
