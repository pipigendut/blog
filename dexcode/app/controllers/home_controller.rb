class HomeController < ApplicationController
  def index
    @testimonial = Testimonial.all
  end

  def services
  end

  def about
  end

  def people
  end

  def contact_us
    if request.post? && verify_recaptcha()
      flash[:notice] = true
      UserMailer.contact_us(params[:name], params[:email], params[:subject], params[:description]).deliver
    end
  end
end
