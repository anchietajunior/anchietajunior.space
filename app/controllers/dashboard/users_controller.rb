module Dashboard

  class UsersController < ApplicationController

    before_action :set_user, only: [ :show, :edit, :update, :destroy ]

    layout 'dashboard'

    def index
      @users =  User.all.order('created_at DESC')
    end

    def new
      @user = User.new
    end

    def edit
    end

    def show
    end

    def create
      @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          format.html { redirect_to dashboard_users_path(@user), notice: "User has been created." }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to dashboard_user_path(@user), notice: 'User has been updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to dashboard_users_path, notice: 'User has been deleted.' }
      end
    end

    private

      def set_user
        @user = User.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:email, :password)
      end
  end
end
