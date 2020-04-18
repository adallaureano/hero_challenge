class WeaponsController < ApplicationController

  def index
    @weapons = Weapon.all
  end

  # def create
  #   @weapon = Weapon.create(weapon_params)

  #   if @weapon.save
  #     redirect_to weapons_path
  #   else 
  #     render 'new'
  #   end
  # end

  def create
    @user = Weapon.create(weapon_params)
    redirect_to weapons_path
  end

  def delete
    @weapon = Weapon.find(weapon_params[:id])
    @weapon.destroy

    redirect_to weapons_path
  end

  def show
    @weapons = Weapon.find(weapon_params[:id])
  end

  private
  def weapon_params
    params.require(:weapon).permit(:name, :descripton, :power_base, :power_step, :level)
  end
end