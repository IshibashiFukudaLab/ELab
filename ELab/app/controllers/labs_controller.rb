class LabsController < ApplicationController
  before_action :set_lab, only: [:show, :edit, :update, :destroy]

  # GET /labs
  # GET /labs.json
  def index
    #@labs = Lab.search(params[:search])
    #@labs = Lab.joins(:people).merge(Person.where(id: 1))
    #在籍人数で検索	
    min = params[:minmember]
    logger.debug(params[:minmember])
    #@labs = Lab.where(id: Person.select(:lab_id).group(:lab_id).having("count(lab_id) <= ?", 10).having("count(lab_id) >= ?" ,"%#{params[:minmember]}"));
    @labs = Lab.where(id: Person.select(:lab_id).group(:lab_id).having(Person.arel_table[:lab_id].count.gteq(params[:minmember].to_i)).having(Person.arel_table[:lab_id].count.lteq(params[:maxmember].to_i))).where("name LIKE ?", "%#{params[:search]}%")
    #@labs = Lab.where("name LIKE ?", "%#{params[:search]}%")

  end

  # GET /labs/1
  # GET /labs/1.json
  def show
  end

  # GET /labs/new
  def new
    @lab = Lab.find(1)
    #@lesson = Lesson.create(name: "OS")
    #@lab.groups << Lesson.find(1)
    #@lab.save
    #@lab = Lab.find(1)
    #@lesson_lab = LessonLab.new(lesson_id: 1,lab_id: 1)
    #@lesson_lab.save
  end

  # GET /labs/1/edit
  def edit
  end

  # POST /labs
  # POST /labs.json
  def create
    @lab = Lab.new(lab_params)

    respond_to do |format|
      if @lab.save
        format.html { redirect_to @lab, notice: 'Lab was successfully created.' }
        format.json { render :show, status: :created, location: @lab }
      else
        format.html { render :new }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /labs/1
  # PATCH/PUT /labs/1.json
  def update
    respond_to do |format|
      if @lab.update(lab_params)
        format.html { redirect_to @lab, notice: 'Lab was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab }
      else
        format.html { render :edit }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labs/1
  # DELETE /labs/1.json
  def destroy
    @lab.destroy
    respond_to do |format|
      format.html { redirect_to labs_url, notice: 'Lab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab
      @lab = Lab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_params
      params.fetch(:lab, {})
    end
end
