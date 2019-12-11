class RunsController < ApplicationController
  def index
    @q = Run.ransack(params[:q])
    @runs = @q.result(:distinct => true).includes(:workout).page(params[:page]).per(10)

    render("run_templates/index.html.erb")
  end

  def show
    @run = Run.find(params.fetch("id_to_display"))

    render("run_templates/show.html.erb")
  end

  def new_form
    @run = Run.new

    render("run_templates/new_form.html.erb")
  end

  def create_row
    @run = Run.new

    @run.workout_id = params.fetch("workout_id")
    @run.distance = params.fetch("distance")
    @run.time = params.fetch("time")
    @run.comments = params.fetch("comments")

    if @run.valid?
      @run.save

      redirect_back(:fallback_location => "/runs", :notice => "Run created successfully.")
    else
      render("run_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @run = Run.find(params.fetch("prefill_with_id"))

    render("run_templates/edit_form.html.erb")
  end

  def update_row
    @run = Run.find(params.fetch("id_to_modify"))

    @run.workout_id = params.fetch("workout_id")
    @run.distance = params.fetch("distance")
    @run.time = params.fetch("time")
    @run.comments = params.fetch("comments")

    if @run.valid?
      @run.save

      redirect_to("/runs/#{@run.id}", :notice => "Run updated successfully.")
    else
      render("run_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @run = Run.find(params.fetch("id_to_remove"))

    @run.destroy

    redirect_to("/runs", :notice => "Run deleted successfully.")
  end
end
