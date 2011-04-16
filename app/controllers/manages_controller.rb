class ManagesController < ApplicationController
  # GET /manages
  # GET /manages.xml
  def index
    @manages = Manage.all
    @title = "Manage Employees"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @manages }
    end
  end

  # GET /manages/1
  # GET /manages/1.xml
  def show
    @title = "View All"
  #  @manage = Manage.find(params[:id])
     @manage = Manage.paginate(:page => params[:page])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @manage }
    end
  end

  # GET /manages/new
  # GET /manages/new.xml
  def new
    @manage = Manage.new
     @title = "Add Employee"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @manage }
    end
  end

  # GET /manages/1/edit
  def edit
    @title = "Edit Employee"
    @manage = Manage.find(params[:id])
  end

  # POST /manages
  # POST /manages.xml
  def create
    @manage = Manage.new(params[:manage])

    respond_to do |format|
      if @manage.save
        format.html { redirect_to(@manage, :notice => 'Manage was successfully created.') }
        format.xml  { render :xml => @manage, :status => :created, :location => @manage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @manage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /manages/1
  # PUT /manages/1.xml
  def update
    @manage = Manage.find(params[:id])

    respond_to do |format|
      if @manage.update_attributes(params[:manage])
        format.html { redirect_to(@manage, :notice => 'Manage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @manage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /manages/1
  # DELETE /manages/1.xml
  def destroy
    @manage = Manage.find(params[:id])
    @manage.destroy

    respond_to do |format|
      format.html { redirect_to(manages_url) }
      format.xml  { head :ok }
    end
  end
end
