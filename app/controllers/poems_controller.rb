class PoemsController < ApplicationController

def index
  @poems = Poem.all
end

def my_poems
  @poems = @current_user.poems
  @poem = Poem.new
  # render :my_poems
  @favourites = @current_user.favourites
end

def new
  @poem = Poem.new
end

def create
  poem = Poem.create poem_params
  @current_user.poems << poem
  redirect_to poem
end

def edit
  @poem = Poem.find params[:id]
end

def update
  poem = Poem.find params[:id]
  poem.update poem_params
  redirect_to poem
end

def show
  @poem = Poem.find params[:id]

end

def destroy
  poem = Poem.find params[:id]
  poem.destroy
  redirect_to poems_path
end

private
def poem_params
  params.require(:poem).permit(:title, :content, :user_id, :catergory_id)

end

end
