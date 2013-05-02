class ContactCategoriesController < ApplicationController
  # GET /contact_categories
  # GET /contact_categories.json
  def index
    @contact_categories = ContactCategory.find(:all, :conditions => {:client_id => session[:client_id]})

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_categories }
    end
  end

  # GET /contact_categories/new
  # GET /contact_categories/new.json
  def new
    @contact_category = ContactCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_category }
    end
  end

  # GET /contact_categories/1/edit
  def edit
    @contact_category = ContactCategory.find(params[:id])
  end

  # POST /contact_categories
  # POST /contact_categories.json
  def create
    @contact_category = ContactCategory.new(params[:contact_category])
    @contact_category.client_id = session[:client_id]

    respond_to do |format|
      if @contact_category.save
        format.html { redirect_to contact_categories_url, notice: 'Contact category was successfully created.' }
        format.json { render json: @contact_category, status: :created, location: @contact_category }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_categories/1
  # PUT /contact_categories/1.json
  def update
    @contact_category = ContactCategory.find(params[:id])

    respond_to do |format|
      if @contact_category.update_attributes(params[:contact_category])
        format.html { redirect_to contact_categories_url, notice: 'Contact category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_categories/1
  # DELETE /contact_categories/1.json
  def destroy
    @contact_category = ContactCategory.find(params[:id])
    @contact_category.destroy

    respond_to do |format|
      format.html { redirect_to contact_categories_url }
      format.json { head :no_content }
    end
  end
end
