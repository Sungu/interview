class PostController < ApplicationController
  before_action:authenticate_user!, only: [:new,:create]
  
  def index
    @post = Post.find(params[:id])
  end
    
  def new
  end
    
  def create
    a = Post.create(writer: params[:writer], 
                    photo_writer: params[:photo_writer], 
                    interviewee: params[:interviewee],
                    content: params[:content],
                    front_img: params[:front_img],
                    main_img: params[:main_img],
                    word_cloud: params[:word_cloud])
    flash[:notice] = "글이 작성 되었습니다"
    redirect_to "/post/index/#{a.id}"
  end
  
  def add_lib
    if User.find(current_user.id).libs.find_by(post_id: params[:post_id]) ==nil
      Lib.create(user_id: current_user.id,
                post_id: params[:post_id])
      flash[:notice] = "라이브러리에 등록 되었습니다"
      redirect_to :back
    else
      flash[:notice] = "이미 라이브러리에 등록 되어있습니다"
      redirect_to :back
    end
    
  end
end
