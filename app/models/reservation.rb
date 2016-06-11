class Reservation < ActiveRecord::Base
    has_many :study_carrel
    has_many :student
    has_many :hourdate_reserved
    has_many :students_reserved
    
    #after_save :check
    
    validates_presence_of :study_carrel_id,
                  message: "no puede estar en blanco"
                 
    validates_presence_of :student_id,
                  message: "no puede estar en blanco"
                  
    validates_presence_of :reserved_day,
                  message: "no puede estar en blanco"
    
    validates_presence_of :hourdate_reserved_id,
                  message: "no puede estar en blanco" 
                  
                  
    validates :hourdate_reserved_id, length: { minimum: 5 ,
                message: "Seleccione al menos una hora para reservar"}

    after_save :check, :email_send
    
    
    def check
        
        @horas = self.hourdate_reserved_id.split(",")# las horas las separamos si son varias hace el while
        @fecha = self.reserved_day#fecha
        @horas.each do |t|# horas
            if t.gsub(/\D/, '') != 0 
               @horafecha = HourdateReserved.find_by_id(t.gsub(/\D/, '')) # esto las trasforma a integer
               if @horafecha != nil
                    if @fecha == Date.today
                        @horafecha.enable = 0
                    else #mañana
                        @horafecha.enableTomorrow = 0
                    end
                    @horafecha.save
                end
            end
        end
    end
    
#     create_table "hourdate_reserveds", force: :cascade do |t|
 #   t.time     "hora"
  #  t.datetime "created_at",                     null: false
  #  t.datetime "updated_at",                     null: false
  #  t.boolean  "enable",          default: true
  #  t.integer  "study_carrel_id"
  #  t.time     "horaFinal"
  #  t.boolean  "enableTomorrow",  default: true
  #end

 # add_index "hourdate_reserveds", ["study_carrel_id"], name: "index_hourdate_reserveds_on_study_carrel_id"

    
    def email_send
        @student = Student.find_by_id(self.student_id)
        #@student.email xD 
        @horas = self.hourdate_reserved_id.split(",")# las horas las separamos si son varias hace el while
        @fecha = self.reserved_day#fecha
        @horas.each do |t|# horas
            if t.gsub(/\D/, '') != 0 
               @horafecha = HourdateReserved.find_by_id(t.gsub(/\D/, '')) # esto las trasforma a integer
                if @horafecha != nil
                    if @fecha == Date.today
                        if @horafecha.hora.strftime('%p') == "PM"
                            @fin = @horafecha.hora.strftime('%I').to_f+12
                        end
                        if Time.current.strftime('%p') == "PM"
                           @start = Time.current.strftime('%I').to_f+12
                        end
                        @tiempoRestante = (@fin*60)-((@start*60)+Time.current.strftime('%M').to_f)
                        puts @tiempoRestante
                        if @tiempoRestante <= 15
                            UserMailer.welcome_email(@student).deliver_now
                        else
                            UserMailer.welcome_email(@student).deliver_later(wait_until: @tiempoRestante.minutes.from_now)
                        end
                    else
                        if @horafecha.hora.strftime('%p') == "PM"
                            @fin = @horafecha.hora.strftime('%I').to_f+12
                        end
                        if Time.current.strftime('%p') == "PM"
                           @start = Time.current.strftime('%I').to_f+12
                        end
                        @tiempoRestante = ((@fin+24)*60)-((@start*60)+Time.current.strftime('%M').to_f)
                        if @tiempoRestante <= 15
                            UserMailer.welcome_email(@student).deliver_now
                        else
                            UserMailer.welcome_email(@student).deliver_later(wait_until: @tiempoRestante.minutes.from_now)
                        end
                    end
                end
            end
        end
        
    
        #@tiempoRestante = @horafecha.hora.strftime('%I:%M') - Time.current # aka ocupas las horas va? solo funciona para hoy
        #if tiempoRestante <= 15min
        #UserMailer.welcome_email(@user).deliver_now
        #else
        #UserMailer.welcome_email(@user).deliver_later(wait_until: tiempoRestante.hours.from_now)
        #end
    end
end
