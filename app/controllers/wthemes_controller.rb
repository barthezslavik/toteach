class WthemesController < ApplicationController
  # GET /wthemes
  # GET /wthemes.json
  def index
    @wthemes = Wtheme.by_course

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wthemes }
    end
  end

  # GET /wthemes/1
  # GET /wthemes/1.json
  def show
    @wtheme = Wtheme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wtheme }
    end
  end

  # GET /wthemes/new
  # GET /wthemes/new.json
  def new
    @wtheme = Wtheme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wtheme }
    end
  end

  # GET /wthemes/1/edit
  def edit
    @wtheme = Wtheme.find(params[:id])
  end

  # POST /wthemes
  # POST /wthemes.json
  def create
    @wtheme = Wtheme.new(params[:wtheme])

    respond_to do |format|
      if @wtheme.save
        format.html { redirect_to wthemes_url }
        format.json { head :no_content }
      end
    end
  end

  # PUT /wthemes/1
  # PUT /wthemes/1.json
  def update
    @wtheme = Wtheme.find(params[:id])

    respond_to do |format|
      if @wtheme.update_attributes(params[:wtheme])
        format.html { redirect_to @wtheme, notice: 'Wtheme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wtheme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wthemes/1
  # DELETE /wthemes/1.json
  def destroy
    @wtheme = Wtheme.find(params[:id])
    @wtheme.destroy

    respond_to do |format|
      format.html { redirect_to wthemes_url }
      format.json { head :no_content }
    end
  end
end
