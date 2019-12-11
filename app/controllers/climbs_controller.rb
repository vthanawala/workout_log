class ClimbsController < ApplicationController
  def index
    @q = Climb.ransack(params[:q])
    @climbs = @q.result(:distinct => true).includes(:workout).page(params[:page]).per(10)

    render("climb_templates/index.html.erb")
  end

  def show
    @climb = Climb.find(params.fetch("id_to_display"))

    render("climb_templates/show.html.erb")
  end

  def new_form
    @climb = Climb.new

    render("climb_templates/new_form.html.erb")
  end

  def create_row
    @climb = Climb.new

    @climb.workout_id = params.fetch("workout_id")
    @climb.routes = params.fetch("routes")
    @climb.comments = params.fetch("comments")

    if @climb.valid?
      @climb.save

      redirect_back(:fallback_location => "/climbs", :notice => "Climb created successfully.")
    else
      render("climb_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @climb = Climb.find(params.fetch("prefill_with_id"))

    render("climb_templates/edit_form.html.erb")
  end

  def update_row
    @climb = Climb.find(params.fetch("id_to_modify"))

    @climb.workout_id = params.fetch("workout_id")
    @climb.routes = params.fetch("routes")
    @climb.comments = params.fetch("comments")

    if @climb.valid?
      @climb.save

      redirect_to("/climbs/#{@climb.id}", :notice => "Climb updated successfully.")
    else
      render("climb_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @climb = Climb.find(params.fetch("id_to_remove"))

    @climb.destroy

    redirect_to("/climbs", :notice => "Climb deleted successfully.")
  end
end
