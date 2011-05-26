class CandidateController < ApplicationController
  def index
    @interviews = Interview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @interviews }
  end
  end
  def redirect_new_interview
    @interviews = Interview.all

    respond_to do |format|
      format.html
      format.xml {render:xml => @interviews}
    end
  end
def search
    @search = Interview.search(params[:search])
    @interviews = @search.all.paginate(:per_page=>8,:page=>params[:page])
    respond_to do |format|
      format.csv do
        generate_csv_headers("Interview-#{Time.now.strftime("%Y%m%d")}")
        render :action=>:index
      end
      format.html { render :action=>:index }
    end
  end 
end
