class ShowSlideController < ApplicationController
  def index
    respond_to do |format|
      format.html {render :layout => "presentation.rb"}
    end
  end

  def index_temp
    respond_to do |format|
      format.html {render :layout => "presentation.rb"}
    end
  end

  def update_slide
    step              = params["step"]
    presentation_uid  = params["presentation_uid"]

    @sp = SlidePosition.find_by_presentation_uid( presentation_uid )
    if (presentation_uid.length > 0)
      if @sp != nil
        @sp.update_attribute :step, step
      else
        SlidePosition.create(
          :step             => step,
          :presentation_uid => presentation_uid
        )
      end
    else

      SlidePosition.create(
        :step => step
      )
    end
    respond_to do |format|
      format.js {render :nothing => true }
    end
  end

  def get_slide
    presentation_uid = params["presentation_uid"]
    if presentation_uid.length == 0
      @step = (SlidePosition.where(:presentation_uid, nil).last == nil)? 1 : SlidePosition.where(:presntation_uid, nil).last.step
    else
      @step = (SlidePosition.find_by_presentation_uid(presentation_uid) == nil)? 1 : SlidePosition.find_by_presentation_uid(presentation_uid).step
    end
      
    respond_to do |format|
      format.js
    end
  end
end
