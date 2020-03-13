class ProductController < ApplicationController
    before_action :authenticate_user!

    def index
        @product = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        @product.user_id = current_user.id
        @product.brand_id = params[:product][:brand]
        @product.category_id = params[:product][:category]
        @product.picture.attach(params[:product][:picture])
        
        respond_to do |format|
          if @product.save
            format.html { redirect_to @product, notice: 'Product was successfully created.' }
            format.json { render :show, status: :created, location: @product }
          else
            format.html { render :new }
            format.json { render json: @product.errors, status: :unprocessable_entity }
          end
        end
      end

      def edit
        @product = Product.find(params[:id])
      end

      

      def destroy
        Product.destroy(params[:id])
        respond_to do |format|
          format.html { redirect_to product_path, notice: 'This product was successfully removed' }
          format.json { head :no_content }
        end
      end


    private
    def product_params 
        params.require(:product).permit(:name, :condition, :description, :price)
    end


end
