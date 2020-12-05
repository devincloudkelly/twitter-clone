module SessionsHelper
    # Logs in the given user
    def log_in(user)
        session[:user_id] = user.id # 'session' here is a method provided by rails and is automatically encrypted.
    end

    # Returns the current logged-in user (if any)
    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    # Returns true is the user is logged in, false otherwise
    def logged_in?
        !current_user.nil?
    end

end
