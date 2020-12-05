module SessionsHelper
    def log_in(user)
        session[:user_id] = user.id # 'session' here is a method provided by rails and is automatically encrypted.
    end

    def current_user
        @current_user = @current_user || User.find_by(id: session[:user_id])
    end
end
