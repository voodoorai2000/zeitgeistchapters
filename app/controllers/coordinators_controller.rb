class CoordinatorsController < ApplicationController
  # GET /coordinators
  # GET /coordinators.xml
  def index
    @coordinators = Coordinator.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coordinators }
    end
  end

  # GET /coordinators/1
  # GET /coordinators/1.xml
  def show
    @coordinator = Coordinator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @coordinator }
    end
  end

  # GET /coordinators/new
  # GET /coordinators/new.xml
  def new
    @coordinator = Coordinator.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @coordinator }
    end
  end

  # GET /coordinators/1/edit
  def edit
    @coordinator = Coordinator.find(params[:id])
  end

  # POST /coordinators
  # POST /coordinators.xml
  def create
    @coordinator = Coordinator.new(params[:coordinator])

    respond_to do |format|
      if @coordinator.save
        flash[:notice] = 'Coordinator was successfully created.'
        format.html { redirect_to(@coordinator) }
        format.xml  { render :xml => @coordinator, :status => :created, :location => @coordinator }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @coordinator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coordinators/1
  # PUT /coordinators/1.xml
  def update
    @coordinator = Coordinator.find(params[:id])

    respond_to do |format|
      if @coordinator.update_attributes(params[:coordinator])
        flash[:notice] = 'Coordinator was successfully updated.'
        format.html { redirect_to(@coordinator) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @coordinator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinators/1
  # DELETE /coordinators/1.xml
  def destroy
    @coordinator = Coordinator.find(params[:id])
    @coordinator.destroy

    respond_to do |format|
      format.html { redirect_to(coordinators_url) }
      format.xml  { head :ok }
    end
  end
end
