<<<<<<< HEAD
class ApplicationController < ActionController::Base
  protect_from_forgery
=======
# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  include AuthenticatedSystem
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def get_ad_id
    @ad = Ad.find(params[:ad_id])
  end
  
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
end
