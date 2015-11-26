class HealthnoteController < ApplicationController
      # 건강수첩 페이지가 로그인한 유저에게만 보이도록
    before_action :authenticate_user!
    
    def index #index 페이지
        @healthnote = Healthnote.all
    end
    
    def input #건강 수첩 내용 작성 페이지
    end
    
    def create
        Healthnote.create(order: params[:order], content: params[:content], date: params[:date], hospital: params[:hospital], etc: params[:etc])
        redirect_to "/healthnote/index"
    end
    
    def delete
        Healthnote.find(params[:id].to_i).destroy
        redirect_to "/healthnote/index"
    end

    def edit
        @Healthnote=Healthnote.find(params[:id].to_i)
    end
    
    def update
        Healthnote.update(order: params[:order], content: params[:content], date: params[:date], hospital: params[:hospital], etc: params[:etc])
        redirect_to "/healthnote/index"
    end
  


end
