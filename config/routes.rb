Rxngif::Application.routes.draw do
 # CREATE
  get("/new_picture_form", { :controller => "pictures", :action => "new", :as => "new_picture" })
  post("/create_picture", { :controller => "pictures", :action => "create" })

  # READ
  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  get("/all_pictures", { :controller => "pictures", :action => "index" })

 # UPDATE
  get("/edit_picture_form/:id", { :controller => "pictures", :action => "edit" })
  get("/update_picture/:id", { :controller => "pictures", :action => "update" })

 # DELETE
  get("/delete_picture/:id", { :controller => "pictures", :action => "destroy" })

end
