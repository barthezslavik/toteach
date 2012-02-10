class WwordsController < ApplicationController
  # GET /wwords
  # GET /wwords.json
  def index
    @wthemes = Wtheme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: Wword.all }
    end
  end

  # GET /wwords/1
  # GET /wwords/1.json
  def show
    @wword = Wword.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wword }
    end
  end

  # GET /wwords/new
  # GET /wwords/new.json
  def new
    @wword = Wword.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wword }
    end
  end

  # GET /wwords/1/edit
  def edit
    @wword = Wword.find(params[:id])
  end

  # POST /wwords
  # POST /wwords.json
  def create
    @wword = Wword.new(params[:wword])

    respond_to do |format|
      if @wword.save
        format.html { redirect_to "/wwords/new?course=#{@wword.course_id}&theme=#{@wword.theme_id}" }
        format.json { head :no_content }
      end
    end
  end

  # PUT /wwords/1
  # PUT /wwords/1.json
  def update
    @wword = Wword.find(params[:id])

    respond_to do |format|
      if @wword.update_attributes(params[:wword])
        format.html { redirect_to wwords_url }
        format.json { head :no_content }
      end
    end
  end

  # DELETE /wwords/1
  # DELETE /wwords/1.json
  def destroy
    @wword = Wword.find(params[:id])
    @wword.destroy

    respond_to do |format|
      format.html { redirect_to wwords_url }
      format.json { head :no_content }
    end
  end

  def theme 
    @wwords = Wword.where(:theme_id => params[:id])
  end
end
