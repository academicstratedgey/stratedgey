class HomeController < ApplicationController
    def index

    end

    def about
        @current_page = :about
    end

    def services
        @current_page = :services
        if params[:type]
            render params[:type]
        end
    end

    def resources
        @current_page = :resources

    end

    def contact
        @current_page = :contact
    end

    def send_contact
        HomeMailer.enquiry(params[:full_name],
            params[:email],
            params[:grade],
            params[:message]).deliver
        redirect_to root_path
    end
end
