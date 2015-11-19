class HealthnoteController < ApplicationController
      # 건강수첩 페이지가 로그인한 유저에게만 보이도록
    before_action :authenticate_user!
    
    def index #index 페이지
        @healthnote = Healthnote.all
    end
  

end
