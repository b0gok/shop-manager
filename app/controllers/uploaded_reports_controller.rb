class UploadedReportsController < ApplicationController
  before_action :set_uploaded_report, only: %i[ show edit update destroy ]

  # GET /uploaded_reports or /uploaded_reports.json
  def index
    @uploaded_reports = UploadedReport.all
  end

  # GET /uploaded_reports/1 or /uploaded_reports/1.json
  def show
  end

  # GET /uploaded_reports/new
  def new
    @uploaded_report = UploadedReport.new
  end

  # GET /uploaded_reports/1/edit
  def edit
  end

  # POST /uploaded_reports or /uploaded_reports.json
  def create
    @uploaded_report = UploadedReport.new(uploaded_report_params)

    respond_to do |format|
      if @uploaded_report.save
        format.html { redirect_to @uploaded_report, notice: "Uploaded report was successfully created." }
        format.json { render :show, status: :created, location: @uploaded_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uploaded_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uploaded_reports/1 or /uploaded_reports/1.json
  def update
    respond_to do |format|
      if @uploaded_report.update(uploaded_report_params)
        format.html { redirect_to @uploaded_report, notice: "Uploaded report was successfully updated." }
        format.json { render :show, status: :ok, location: @uploaded_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uploaded_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploaded_reports/1 or /uploaded_reports/1.json
  def destroy
    @uploaded_report.destroy
    respond_to do |format|
      format.html { redirect_to uploaded_reports_url, notice: "Uploaded report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uploaded_report
      @uploaded_report = UploadedReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uploaded_report_params
      params.require(:uploaded_report).permit(:file, :kind)
    end
end
