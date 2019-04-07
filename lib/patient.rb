require 'pry'
require_relative '../lib/patient.rb'
require_relative '../lib/doctor.rb'

class Patient

  attr_accessor :name, :all, :appointment, :doctor, :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end

end
