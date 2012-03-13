class CartPosController < ApplicationController

  # GET /Carts/1/cart_pos
  def index
    # For URL like /Carts/1/cart_pos
    # Get the Cart with id=1
    @cart = Cart.find(params[:cart_id])

    # Access all cart_pos for that Cart
    @cart_pos = @cart.cart_pos
  end

  # GET /Carts/1/cart_pos/2
  def show
    @cart = Cart.find(params[:cart_id])

    # For URL like /Carts/1/cart_pos/2
    # Find an item in Carts 1 that has id=2
    @cart_po = @cart.cart_pos.find(params[:id])
  end

  # GET /Carts/1/cart_pos/new
  def new
    @cart = Cart.find(params[:cart_id])


    # Associate an item object with Cart 1
    @cart_po = @cart.cart_pos.build
  end

  # POST /Carts/1/cart_pos
  def create
    @cart = Cart.find(params[:cart_id])

    # For URL like /Carts/1/cart_pos
    # Populate an item associate with Cart 1 with form data
    # Cart will be associated with the item
    @cart_po = @cart.cart_pos.create(params[:cart_po])
    if @cart_po.save
      # Save the item successfully
      redirect_to cart_cart_po_url(@cart, @cart_po)
    else
      render :action => "new"
    end
  end

  # GET /Carts/1/cart_pos/2/edit
  def edit
    @cart = Cart.find(params[:cart_id])

    # For URL like /Carts/1/cart_pos/2/edit
    # Get item id=2 for Cart 1
    @cart_po = @cart.cart_pos.find(params[:id])
  end

  # PUT /Carts/1/cart_pos/2
  def update
    @cart = Cart.find(params[:cart_id])
    @cart_po = CartPo.find(params[:id])
    if @cart_po.update_attributes(params[:cart_po])
      # Save the item successfully
      redirect_to cart_cart_po_url(@cart, @cart_po)
    else
      render :action => "edit"
    end
  end

  # DELETE /Carts/1/cart_pos/2
  def destroy
    @cart = Cart.find(params[:cart_id])
    @cart_po = Item.find(params[:cart_id])
    @cart_po.destroy

    respond_to do |format|
      format.html { redirect_to Cart_cart_pos_path(@cart) }
      format.xml  { head :ok }
    end
  end

end