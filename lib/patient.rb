class Patient

  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all << self
  end

  def new_appointment(doctor,date)
    Appointment.new(date,self,doctor)
      #new_app=Appoitment.new(date,self,doctor)  #declare variable called new_app, assign each appointment object to new_app
      #appointments << new_app                   # add each appointment object/instant to appointments array under class Patient
      #doctor.appointments << new_app            # add each appointment object/instant to appointments array under class Doctor
  end

  def appointments
    Appointment.all.select {|app| app.patient == self}

  end

  def doctors
    appointments.map{|app| app.doctor}
  end
end
