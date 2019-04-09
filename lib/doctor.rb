class Doctor

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
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map{|appointment| appointment.patient}
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

end


# - The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new Appointment. That Appointment should know that it belongs to the doctor
# -  The Doctor class needs an instance method, #appointments, that iterates through all Appointments and finds those belonging to this doctor.
# - The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
