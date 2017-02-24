class TypesController < ApplicationController
    before_action :find_type, only: [:show, :edit, :destroy, :update]

  def index
    @types = Type.all
  end

  def show
  end


  def new
    @pokemons = Pokemon.all
    @types = Type.all
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    if @type.save
    redirect_to type_path(@type)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @type.update(type_params)
      redirect_to type_path(@type)
    else
      render :edit
    end
  end

  def destroy
    @type.destroy
    redirect_to type_path(@type)
  end

  private

  def find_type
    @type = Type.find(params[:id])
  end

  def type_params
    # *Strong params*: You need to *whitelist* what
    # can be updated by the user
    # Never trust user data!
    params.require(:type).permit(:name, :weakness)
  end
end
