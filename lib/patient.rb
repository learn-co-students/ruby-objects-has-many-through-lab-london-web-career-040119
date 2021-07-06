class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map{|appointment| appointment.doctor}
  end

  def new_appointment(date, doctor)
    Appointment.new(doctor, self, date)
  end

end

#
# The Patient class needs an instance method, #new_appointment, that takes in an argument of a doctor and a date and creates a new Appointment. The Appointment should know that it belongs to the patient.
