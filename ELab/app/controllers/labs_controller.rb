class LabsController < ApplicationController
  before_action :set_lab, only: [:show, :edit, :update, :destroy]
  before_action :set_lessons, only: [:edit]
  before_action :set_companies, only: [:edit]

  # GET /labs
  # GET /labs.json
  def index
    #@labs = Lab.search(params[:search])
    #@labs = Lab.joins(:people).merge(Person.where(id: 1))
    #在籍人数で検索
    if params[:search].nil?
      @labs = Lab:all
      @labslabname = nil
    end
	
    min = params[:minmember]
    logger.debug(params[:minmember])
    @labs = Lab.where("name LIKE ?", "%#{params[:search]}%")
    #if @labs.count < 1
    #  @labs = Lab.all
    #end

    @labslabname = Lab.where("name LIKE ?", "%#{params[:search]}%")
    logger.debug(@labslabname.inspect)
    @labspersonname = Person.where("name LIKE ?", "%#{params[:search]}%") 
    @labstheme = Lab.where("theme LIKE ?","%#{params[:search]}%" )
    @labsmessages = Lab.where("message LIKE ?","%#{params[:search]}%")
    @labslessons = Lesson.where("name LIKE ?" , "%#{params[:search]}%")
    @labscompanies = Company.where("name LIKE ?", "%#{params[:search]}%")
    @labscolleges = College.where("name LIKE ?","%#{params[:search]}%")
    @labscategories = SmallCategory.where("name LIKE ?","%#{params[:search]}%")
  
    @count = 0    

    @count += @labslabname.count
    @count += @labspersonname.count
    @count += @labstheme.count
    @count += @labsmessages.count
    @labslessons.each do |lesson|
      @count += lesson.labs.count
    end
    @labscompanies.each do |company|
      @count += company.labs.count
    end
    @labscolleges.each do |college|
      @count += college.labs.count
    end
    @labscategories.each do |category|
      @count += category.labs.count
    end
    logger.debug("カウント：" + @count.to_s)

    #@labs = @labs.where(id: Person.select(:lab_id).group(:lab_id).having("count(lab_id) <= ?", 10).having("count(lab_id) >= ?" ,params[:minmember].to_i));
    #@labs = Lab.where("name LIKE ?", "%#{params[:search]}%").where(id: Person.select(:lab_id).group(:lab_id).having(Person.arel_table[:lab_id].count.gteq(params[:minmember].to_i)).having(Person.arel_table[:lab_id].count.lteq(params[:maxmember].to_i)))
    logger.debug(@labs.inspect)
    #logger.debug(@labs.count)
    #@labs = @labs.where("name LIKE ?", "%#{params[:search]}%")
    logger.debug(@labs.inspect)
    #if @labs.count > 0
    #  @labs = Lab.all.where("name LIKE ?", "%#{params[:search]}%")
    #  logger.debug(@labs.inspect)
    #  logger.debug("aru")
    #else
    #  logger.debug("nuthing!!")
    #end
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
    logger.debug("GetWild")
    logger.debug(@lab.inspect)
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
    logger.debug("AndTough")
    logger.debug(params.inspect)


    respond_to do |format|
      if @lab.update(lab_params)
        logger.debug("GetWildAndTough")
        if !params[:lab][:people_attributes].nil?
          logger.debug("一人では解けない愛のパズルを抱いて")
          params[:lab][:people_attributes].each do |per,pval|
            
            @person = Person.new(lab_id: @lab.id ,name: pval["name"], grade: pval["grade"])
            @person.save
            @peoplelab = PeopleLab.new(people_id: @person.id, labs_id: @lab.id)
            @peoplelab.save
          end
        end

        if !params[:group].nil?
        if !params[:group][:lesson_ids].nil?
        params[:group][:lesson_ids].each do |lesson|
          @lessonlab = LessonLab.new(lesson_id: lesson, lab_id: @lab.id)
          @lessonlab.save
          logger.debug(lesson.to_s)
        end
        end
        end

        if !params[:group].nil?
        if !params[:group][:company_id].nil?
        params[:group][:company_ids].each do |company|
          @companylab = CompanyLab.new(company_id: company, lab_id: @lab.id)
          @companylab.save
        end
        end
        end
	
	sleep(1)
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

    def set_lessons
      @lessons = Lesson.all
    end

    def set_companies
      @companies = Company.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_params
      #params.fetch(:lab, {})
      p = params.require(:lab).permit(:name, :teacher, :theme_detail, :lesson_ids => [])
      p[:lesson_ids] = [] if p[:lesson_ids].nil?
      p
    end
end
