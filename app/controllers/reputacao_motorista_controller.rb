class ReputacaoMotoristaController < ApplicationController
  # GET /reputacao_motorista
  # GET /reputacao_motorista.xml
  def index
    @reputacao_motorista = ReputacaoMotoristum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reputacao_motorista }
    end
  end

  # GET /reputacao_motorista/1
  # GET /reputacao_motorista/1.xml
  def show
    @reputacao_motoristum = ReputacaoMotoristum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reputacao_motoristum }
    end
  end

  # GET /reputacao_motorista/new
  # GET /reputacao_motorista/new.xml
  def new
    @reputacao_motoristum = ReputacaoMotoristum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reputacao_motoristum }
    end
  end

  # GET /reputacao_motorista/1/edit
  def edit
    @reputacao_motoristum = ReputacaoMotoristum.find(params[:id])
  end

  # POST /reputacao_motorista
  # POST /reputacao_motorista.xml
  def create
    @reputacao_motoristum = ReputacaoMotoristum.new(params[:reputacao_motoristum])

    respond_to do |format|
      if @reputacao_motoristum.save
        format.html { redirect_to(@reputacao_motoristum, :notice => 'Reputacao motoristum was successfully created.') }
        format.xml  { render :xml => @reputacao_motoristum, :status => :created, :location => @reputacao_motoristum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reputacao_motoristum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reputacao_motorista/1
  # PUT /reputacao_motorista/1.xml
  def update
    @reputacao_motoristum = ReputacaoMotoristum.find(params[:id])

    respond_to do |format|
      if @reputacao_motoristum.update_attributes(params[:reputacao_motoristum])
        format.html { redirect_to(@reputacao_motoristum, :notice => 'Reputacao motoristum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reputacao_motoristum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reputacao_motorista/1
  # DELETE /reputacao_motorista/1.xml
  def destroy
    @reputacao_motoristum = ReputacaoMotoristum.find(params[:id])
    @reputacao_motoristum.destroy

    respond_to do |format|
      format.html { redirect_to(reputacao_motorista_url) }
      format.xml  { head :ok }
    end
  end
end
