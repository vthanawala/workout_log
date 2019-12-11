Rails.application.routes.draw do
  root :to => "workouts#index"
  # Routes for the Climb resource:

  # CREATE
  get("/climbs/new", { :controller => "climbs", :action => "new_form" })
  post("/create_climb", { :controller => "climbs", :action => "create_row" })

  # READ
  get("/climbs", { :controller => "climbs", :action => "index" })
  get("/climbs/:id_to_display", { :controller => "climbs", :action => "show" })

  # UPDATE
  get("/climbs/:prefill_with_id/edit", { :controller => "climbs", :action => "edit_form" })
  post("/update_climb/:id_to_modify", { :controller => "climbs", :action => "update_row" })

  # DELETE
  get("/delete_climb/:id_to_remove", { :controller => "climbs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Lift resource:

  # CREATE
  get("/lifts/new", { :controller => "lifts", :action => "new_form" })
  post("/create_lift", { :controller => "lifts", :action => "create_row" })

  # READ
  get("/lifts", { :controller => "lifts", :action => "index" })
  get("/lifts/:id_to_display", { :controller => "lifts", :action => "show" })

  # UPDATE
  get("/lifts/:prefill_with_id/edit", { :controller => "lifts", :action => "edit_form" })
  post("/update_lift/:id_to_modify", { :controller => "lifts", :action => "update_row" })

  # DELETE
  get("/delete_lift/:id_to_remove", { :controller => "lifts", :action => "destroy_row" })

  #------------------------------

  # Routes for the Run resource:

  # CREATE
  get("/runs/new", { :controller => "runs", :action => "new_form" })
  post("/create_run", { :controller => "runs", :action => "create_row" })

  # READ
  get("/runs", { :controller => "runs", :action => "index" })
  get("/runs/:id_to_display", { :controller => "runs", :action => "show" })

  # UPDATE
  get("/runs/:prefill_with_id/edit", { :controller => "runs", :action => "edit_form" })
  post("/update_run/:id_to_modify", { :controller => "runs", :action => "update_row" })

  # DELETE
  get("/delete_run/:id_to_remove", { :controller => "runs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Workout resource:

  # CREATE
  get("/workouts/new", { :controller => "workouts", :action => "new_form" })
  post("/create_workout", { :controller => "workouts", :action => "create_row" })

  # READ
  get("/workouts", { :controller => "workouts", :action => "index" })
  get("/workouts/:id_to_display", { :controller => "workouts", :action => "show" })

  # UPDATE
  get("/workouts/:prefill_with_id/edit", { :controller => "workouts", :action => "edit_form" })
  post("/update_workout/:id_to_modify", { :controller => "workouts", :action => "update_row" })

  # DELETE
  get("/delete_workout/:id_to_remove", { :controller => "workouts", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
