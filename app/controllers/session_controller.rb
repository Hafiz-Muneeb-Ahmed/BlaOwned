class SessionController<ApplicationController

  def new

  end

  def create
    user =User.find_by(email:params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id]=user.id
      redirect_to root_path,notice: "Logged In Succesfully"
      # flash[:info] = "Logged In Succesfully"
    else
      #flash is working but how
      flash[:alert] = "Invalid email or password"
      # render :new
      redirect_to sign_in_path
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_path,notice: "logged out"
  end
end