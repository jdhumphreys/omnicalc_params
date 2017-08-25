Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "square_form" })

  get("/square/new",                 { :controller => "calculations", :action => "square_form" })
  get("/square/results",             { :controller => "calculations", :action => "square" })

  get("/sqrt/new",               { :controller => "calculations", :action => "sqrt_form" })
  get("/sqrt/results",           { :controller => "calculations", :action => "sqrt" })

  get("/time_between/new",               { :controller => "calculations", :action => "time_between_form" })
  get("/time_between/results",           { :controller => "calculations", :action => "time_between" })

  get("/descriptive_statistics/new",     { :controller => "calculations", :action => "descriptive_statistics_form" })
  get("/descriptive_statistics/results", { :controller => "calculations", :action => "descriptive_statistics" })
  mount WebGit::Engine, at: "/rails/git"
end
