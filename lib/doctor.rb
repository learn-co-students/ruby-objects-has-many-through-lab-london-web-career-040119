class Doctor
  attr_accessor:name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date,patient,self)
    #new_app = Appoitment.new(date,patient,self) #declare new variable called new-app, assign each appoitment (instanite from
                                                  #from class Appointment) to the new_app, add it to appointmens array under
                                                  #class Doctor
    #appointments << new_app
    #patient.appointmens << new_appn              # add each appointment to appointments under class Patient
  end

   def appointments
     Appointment.all.select {|app| app.doctor ==self }
   end

   def patients
     appointments.map{|app| app.patient}
   end

end
