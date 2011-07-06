class ViagemsController < ApplicationController
  # GET /viagems
  # GET /viagems.xml
  def index
    @viagems = Viagem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @viagems }
    end
  end

  # GET /viagems/1
  # GET /viagems/1.xml
  def show
    @viagem = Viagem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @viagem }
    end
  end

  # GET /viagems/new
  # GET /viagems/new.xml
  def new
    @viagem = Viagem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @viagem }
    end
  end

  # GET /viagems/1/edit
  def edit
    @viagem = Viagem.find(params[:id])
  end

  # POST /viagems
  # POST /viagems.xml
  def create
    @viagem = Viagem.new(params[:viagem])

    respond_to do |format|
      if @viagem.save
        format.html { redirect_to(@viagem, :notice => 'Viagem was successfully created.') }
        format.xml  { render :xml => @viagem, :status => :created, :location => @viagem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @viagem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /viagems/1
  # PUT /viagems/1.xml
  def update
    @viagem = Viagem.find(params[:id])

    respond_to do |format|
      if @viagem.update_attributes(params[:viagem])
        format.html { redirect_to(@viagem, :notice => 'Viagem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @viagem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /viagems/1
  # DELETE /viagems/1.xml
  def destroy
    @viagem = Viagem.find(params[:id])
    @viagem.destroy

    respond_to do |format|
      format.html { redirect_to(viagems_url) }
      format.xml  { head :ok }
    end
  end
end
