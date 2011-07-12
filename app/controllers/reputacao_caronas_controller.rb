class ReputacaoCaronasController < ApplicationController
  # GET /reputacao_caronas
  # GET /reputacao_caronas.xml
  def index
    @reputacao_caronas = ReputacaoCarona.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reputacao_caronas }
    end
  end

  # GET /reputacao_caronas/1
  # GET /reputacao_caronas/1.xml
  def show
    @reputacao_carona = ReputacaoCarona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reputacao_carona }
    end
  end

  # GET /reputacao_caronas/new
  # GET /reputacao_caronas/new.xml
  def new
    @reputacao_carona = ReputacaoCarona.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reputacao_carona }
    end
  end

  # GET /reputacao_caronas/1/edit
  def edit
    @reputacao_carona = ReputacaoCarona.find(params[:id])
  end

  # POST /reputacao_caronas
  # POST /reputacao_caronas.xml
  def create
    @reputacao_carona = ReputacaoCarona.new(params[:reputacao_carona])

    respond_to do |format|
      if @reputacao_carona.save
        format.html { redirect_to(@reputacao_carona, :notice => 'Voce reputou o carona com sucesso!') }
        format.xml  { render :xml => @reputacao_carona, :status => :created, :location => @reputacao_carona }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reputacao_carona.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reputacao_caronas/1
  # PUT /reputacao_caronas/1.xml
  def update
    @reputacao_carona = ReputacaoCarona.find(params[:id])

    respond_to do |format|
      if @reputacao_carona.update_attributes(params[:reputacao_carona])
        format.html { redirect_to(@reputacao_carona, :notice => 'Voce alterou a reputacao do carona com sucesso!') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reputacao_carona.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reputacao_caronas/1
  # DELETE /reputacao_caronas/1.xml
  def destroy
    @reputacao_carona = ReputacaoCarona.find(params[:id])
    @reputacao_carona.destroy

    respond_to do |format|
      format.html { redirect_to(reputacao_caronas_url) }
      format.xml  { head :ok }
    end
  end
end
