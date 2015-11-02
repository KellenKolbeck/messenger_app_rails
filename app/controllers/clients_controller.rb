class ClientsController < ApplicationController
  def index
    @clients = Client.all
    render :index
  end

  def new
    @client = Client.new

    render :new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to  clients_path
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
    render :edit
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to clients_path(@client)
    else
      render :edit
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end

  private
  def client_params
    params.require(:client).permit(:account_sid, :auth_token, :message_id, :name, :number)
  end
end
