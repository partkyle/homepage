module Admin
  class PropertiesController < BaseController
    # GET /admin/properties
    # GET /admin/properties.json
    def index
      @properties = Property.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @properties }
      end
    end

    # GET /admin/properties/1
    # GET /admin/properties/1.json
    def show
      @property = Property.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @property }
      end
    end

    # GET /admin/properties/new
    # GET /admin/properties/new.json
    def new
      @property = Property.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @property }
      end
    end

    # GET /admin/properties/1/edit
    def edit
      @property = Property.find(params[:id])
    end

    # POST /admin/properties
    # POST /admin/properties.json
    def create
      @property = Property.new(params[:property])

      respond_to do |format|
        if @property.save
          format.html { redirect_to [:admin, @property], notice: 'Property was successfully created.' }
          format.json { render json: @property, status: :created, location: @property }
        else
          format.html { render action: "new" }
          format.json { render json: @property.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /admin/properties/1
    # PUT /admin/properties/1.json
    def update
      @property = Property.find(params[:id])

      respond_to do |format|
        if @property.update_attributes(params[:property])
          format.html { redirect_to [:admin, @property], notice: 'Property was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @property.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/properties/1
    # DELETE /admin/properties/1.json
    def destroy
      @property = Property.find(params[:id])
      @property.destroy

      respond_to do |format|
        format.html { redirect_to admin_properties_url }
        format.json { head :ok }
      end
    end
  end
end