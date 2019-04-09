class Doctor
  @@all = []

  attr_accessor :name ,:patient, :date

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    @patient = patient
    @date = date
    Appointment.new(@date,@patient,self)
    #Appointment.all << self
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end

  def patients
    appointments.collect{|appt| appt.patient}
  end


end
