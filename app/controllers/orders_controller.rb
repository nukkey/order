class OrdersController < ApplicationController
  
  def index
    @user_food = UserFood.new

    @user_foods = UserFood.all
    price = UserFood.sum(:price)
    quantity = UserFood.sum(:quantity)
    @total =  price
  end

  def new
  end

  def create
    user_food = UserFood.find_by(food: params[:food])
    if user_food.nil?
      user_food = UserFood.new(user_food_params)
    
      if user_food.save
        redirect_to root_path
      else
        render oders: :index
      end

    else
      user_food.increment(quantity:1);
    end
  end

  def destroy
    order = UserFood.find(params[:id])
    order.destroy
    redirect_to root_path
  end

  def destroy_all
     UserFood.destroy_all
    redirect_to root_path
  end

  private
  def user_food_params
    params.require(:user_food).permit(:food, :price, :quantity)
  end

end
