module ApplicationHelper
    def session_link
        if (logged_in?)
           link_to "logout", logout_path, method: :delete 
        else
           link_to "login", login_path
        end
    end

    def require_user
        if !logged_in?
            flash[:notice] = "You must be logged in to perform that action"
            redirect_to login_path
        end
    end
end
