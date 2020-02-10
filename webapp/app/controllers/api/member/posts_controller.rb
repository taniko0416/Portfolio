class Api::Member::PostsController < Api::Member::Base
  ### TODO: auth by authorize!

  def show
    page = params[:page].to_i
    size = params[:size].to_i
    posts = current_user.role.posts.not_reply
    @posts = posts.offset(size * page).limit(size)
  end

  def create
    content = params[:post][:content]
    post = current_user.role.posts.build(content: content)

    if post.save
      render json: nil, status: :ok
    else
      render json: nil, status: :internal_server_error
    end
  end

end
