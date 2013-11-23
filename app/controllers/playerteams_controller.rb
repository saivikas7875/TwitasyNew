class PlayerteamsController < ApplicationController
  # GET /playerteams
  # GET /playerteams.json
  def index
    @playerteams = Playerteam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @playerteams }
    end
  end

  # GET /playerteams/1
  # GET /playerteams/1.json
  def show
    @playerteam = Playerteam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @playerteam }
    end
  end

  # GET /playerteams/new
  # GET /playerteams/new.json
  def new
    @playerteam = Playerteam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @playerteam }
    end
  end

  # GET /playerteams/1/edit
  def edit
    @playerteam = Playerteam.find(params[:id])
  end

  # POST /playerteams
  # POST /playerteams.json
  def create
    @playerteam = Playerteam.new(params[:playerteam])

    respond_to do |format|
      if @playerteam.save
        format.html { redirect_to @playerteam, notice: 'Playerteam was successfully created.' }
        format.json { render json: @playerteam, status: :created, location: @playerteam }
      else
        format.html { render action: "new" }
        format.json { render json: @playerteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /playerteams/1
  # PUT /playerteams/1.json
  def update
    @playerteam = Playerteam.find(params[:id])

    respond_to do |format|
      if @playerteam.update_attributes(params[:playerteam])
        format.html { redirect_to @playerteam, notice: 'Playerteam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @playerteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playerteams/1
  # DELETE /playerteams/1.json
  def destroy
    @playerteam = Playerteam.find(params[:id])
    @playerteam.destroy

    respond_to do |format|
      format.html { redirect_to playerteams_url }
      format.json { head :no_content }
    end
  end
end
