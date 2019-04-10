require 'pry'
require_relative '../lib/doctor.rb'
require_relative '../lib/patient.rb'

class Appointment

  attr_accessor :name, :all, :patient, :doctor, :date

  @@all = []

  def self.all
    @@all
  end


##There is some sort of error in the test files.
##If we put 'binding.pry' just before the end of the following method and check for 'self' we can see that
# @patient and @date are switched.

  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

end
