class ResumesController < ApplicationController
  def index
  end

  def show
    @resume = Resume.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        html = render_to_string(:layout => false , :action => "show.html")
        kit = PDFKit.new(html)
        kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/application.css"
        kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/resumes.css.scss"
        send_data(kit.to_pdf, :filename => "kyle-partridge-resume.pdf", :type => 'application/pdf')
        return # to avoid double render call
      end
    end
  end

end
