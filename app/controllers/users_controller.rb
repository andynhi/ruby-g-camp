class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def set_user
      @user = User.find(params[:id])
    end

    def index
      @users = User.all
    end

    def show
    end

    def new
      @user = User.new
    end

    def edit
    end

    def create
      @user = User.new(params.require(:user).permit(
                                                      :first_name,
                                                      :last_name,
                                                      :email_address,
                                                      :password,
                                                      :password_confirmation))

        if @user.save
          session[:user_id] = @user.id
          redirect_to root_path, notice: 'User was successfully created.'
        else
          @error_messages = @user.errors.full_messages
          render :new
        end
    end

    def update
      respond_to do |format|
        if @user.update(params.require(:user).permit(
                                                      :first_name,
                                                      :last_name,
                                                      :email_address,
                                                      :password,
                                                      :password_confirmation))

          format.html { redirect_to users_path, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end


end
