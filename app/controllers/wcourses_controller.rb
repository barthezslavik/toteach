class WcoursesController < ApplicationController
  # GET /wcourses
  # GET /wcourses.json
  def index
    @wcourses = Wcourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wcourses }
    end
  end

  # GET /wcourses/1
  # GET /wcourses/1.json
  def show
    @wcourse = Wcourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wcourse }
    end
  end

  # GET /wcourses/new
  # GET /wcourses/new.json
  def new
    @wcourse = Wcourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wcourse }
    end
  end

  # GET /wcourses/1/edit
  def edit
    @wcourse = Wcourse.find(params[:id])
  end

  # POST /wcourses
  # POST /wcourses.json
  def create
    @wcourse = Wcourse.new(params[:wcourse])

    respond_to do |format|
      if @wcourse.save
        format.html { redirect_to wcourses_url }
        format.json { head :no_content }
      end
    end
  end

  # PUT /wcourses/1
  # PUT /wcourses/1.json
  def update
    @wcourse = Wcourse.find(params[:id])

    respond_to do |format|
      if @wcourse.update_attributes(params[:wcourse])
        format.html { redirect_to wcourses_url }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wcourse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wcourses/1
  # DELETE /wcourses/1.json
  def destroy
    @wcourse = Wcourse.find(params[:id])
    @wcourse.destroy

    respond_to do |format|
      format.html { redirect_to wcourses_url }
      format.json { head :no_content }
    end
  end
end
