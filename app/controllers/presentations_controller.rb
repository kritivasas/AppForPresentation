class PresentationsController < ApplicationController
  layout 'presentation'
  # GET /presentations
  # GET /presentations.json
#  def index
#    render :text => "You should not enter in the world you dont know of!!"
#  end

  # GET /presentations/1
  # GET /presentations/1.json
  def show
    @presentation_disp = Presentation.find_by_uid(params[:uid])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @presentation }
    end
  end

  # GET /presentations/new
  # GET /presentations/new.json
  def new
    @presentation     = Presentation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @presentation }
    end
  end

  def controller
    @uid = params[:uid]
  end

  def show_ppt
    @presentation = Presentation.find_by_uid(params[:presentation_uid])
    respond_to do |format|
      format.html { render :layout => "application" }
    end
  end

  # GET /presentations/1/edit
  def edit
    @presentation = Presentation.find_by_uid(params[:uid])
    respond_to do |format|
      format.json { render :nothing => true }
    end
  end

  # POST /presentations
  # POST /presentations.json
  def create
    @presentation_disp = Presentation.new(params[:presentation])
    logger.debug @presentation_disp.inspect
    respond_to do |format|
      if @presentation_disp.save
        format.html { redirect_to "/presentations/#{@presentation.uid}", notice: 'Presentation was successfully created. Please note down your uid for future' }
        format.js
        format.json { render json: @presentation_disp, status: :created, location: @presentation_disp }
      else
        format.html { render action: "new" }
        format.js
        format.json { render json: @presentation_disp.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    respond_to do |format|
      format.html
      format.js
    end
  end

  def find
    @presentation = Presentation.find_by_uid( params[:uid_search] )

    respond_to do |format|
      if @presentation
        format.html { redirect_to "/presentations/#{@presentation.uid}" }
        format.json { render json: @presentation, status: :created, location: @presentation }
      else
        render :text => "404"
      end
    end
  end

  # PUT /presentations/1
  # PUT /presentations/1.json
  def update
    @presentation = Presentation.find_by_uid(params[:uid])

    respond_to do |format|
      if @presentation.update_attributes(params[:presentation])
        format.html { redirect_to @presentation, notice: 'Presentation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentations/1
  # DELETE /presentations/1.json
  def destroy
    @presentation = Presentation.find_by_uid(params[:uid])
    @presentation.destroy

    respond_to do |format|
      format.html { redirect_to presentations_url }
      format.json { head :ok }
    end
  end
end
