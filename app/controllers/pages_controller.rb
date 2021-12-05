class PagesController < ApplicationController

    before_action :set_page, only: [:edit, :update, :destroy, :show]

    def index
        @pages = Page.all 
    end

    def new
        @page = Page.new
    end

    def edit
    end

    def show
    end

    def create
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end

    def update
        @page.update(page_params)
        redirect_to @page 
    end

    def destroy
        @page.destroy
        redirect_to pages_path
    end

    private

    def set_page
        @page = Page.find(params[:id])
    end

    def page_params
        params.require(:page).permit(:title, :body, :slug)
    end

end
