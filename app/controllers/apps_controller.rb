class AppsController < ApplicationController

  def init
    puts params
    @app = App.where(key: params[:key]).first
    puts @app
    redirect_to :action => 'start', :id => @app.id
  end

  def start
    @instance = Instance.new
    @instance.app = App.find(params[:id])
    @instance.save
  end

  def index
    @apps = App.where(user:current_user)
  end

  def new
    @app =  App.new
  end

  def show
    @app = App.find(params[:id])
    if @app.user != current_user
      head :forbidden and return
    end
  end

  def create
    @app = App.new(app_params)
    @app.user = current_user
    @app.save
    render 'show'
  end

  def update
  end

  def destroy
    @app = App.find(params[:id])
    @app.destroy
    head :ok and return
  end

  private

  def app_params
    params.require(:app).permit(:name)
  end
end
