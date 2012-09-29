class SlidesController < ApplicationController
  # GET /slides
  # GET /slides.json
  def index
    @slides = Slide.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @slides }
    end
  end

  # GET /slides/1
  # GET /slides/1.json
  def show
    @slide = Slide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @slide }
    end
  end

  # GET /slides/new
  # GET /slides/new.json
  def new
    @slide_new = Slide.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @slide }
    end
  end

  # GET /slides/1/edit
  def edit
    @slide = Slide.find(params[:id])
  end

  # POST /slides
  # POST /slides.json
  def create
    @presentation     = Presentation.find_by_uid(params[:presentation_uid])
    last_slide_x      = (@presentation.slides.last) ? @presentation.slides.last.position_x : 0
    @slide            = @presentation.slides.create(params[:slide])
    @slide.position_x = last_slide_x + 1000
    @slide.name       = "#{@slide.name}_#{@slide.id}"
    @slide.save!
    # redirect_to presentation_path(@presentation.uid)
    respond_to do |format|
      format.js
      format.json
    end
  end

  # PUT /slides/1
  # PUT /slides/1.json
  def update
    @slide = Slide.find(params[:id])
    respond_to do |format|
      if @slide.update_attributes(params[:slide])
        format.html { redirect_to @slide, notice: 'Slide was successfully updated.' }
        format.json { head :ok }
        format.js
      else
        format.html { render action: "edit" }
        format.json { render json: @slide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slides/1
  # DELETE /slides/1.json
  def destroy
    @slide = Slide.find(params[:id])
    @slide.destroy

    respond_to do |format|
      format.js { head :ok }
      format.json { head :ok }
    end
  end
end
