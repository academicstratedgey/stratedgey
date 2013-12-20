require 'debugger'
class HomeController < ApplicationController
    def index

    end

    def about

    end

    def services
        if params[:type]
            render params[:type]
        end
    end

    def resources

    end

    def success

    end

    def contact

    end
end
