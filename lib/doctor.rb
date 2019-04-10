require 'pry'
require_relative '../lib/patient.rb'
require_relative '../lib/appointment.rb'

class Doctor

  attr_accessor :name, :all, :patient, :appointment, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor = self}
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}
  end

end
