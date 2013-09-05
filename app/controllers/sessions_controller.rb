class SessionsController < ApplicationController

def action
  @lat_lng = cookies[:lat_lng].split("|")
end

def create
  employee = Employee.find_by_email(params[:session][:email].downcase)
  if employee && employee.authenticate(params[:session][:password])
      sign_in employee
      redirect_to requests_path
  else
      flash.now[:error] = 'Invalid email/password combination' 
      render 'new'
  end
end

def destroy
	sign_out
    redirect_to root_url
end


end
