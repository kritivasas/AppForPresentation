class ShowSlideController < ApplicationController
  def update_slide
    step = params["step"]
    SlidePosition.create(
      :step => step,
      :last_update_ip => request.remote_ip
    )
    respond_to do |format|
      format.js {render :nothing => true}
    end
  end

  def get_slide
    @step = SlidePosition.last.step
    respond_to do |format|
      format.js
    end
  end
end
