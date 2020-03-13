class MylistController < ApplicationController
    before_action :authenticate_user!

    # view all products created by current user
    def index
        @products = current_user.products
    end

    # edit item - only if created by current user
    def edit
        @my_list = MyList.find(MyList.my_list_id(current_user,params[:id]))
    end

    # update item - only if created by current user
    def update
        @my_list = MyList.find(params[:id])
        if @my_list_item.save
            flash[:notice] = "Updated"
            redirect_to my_list_path
        end
    end
    
end
