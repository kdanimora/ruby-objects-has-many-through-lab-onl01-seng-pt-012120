class Appointment 

  attr_reader :date, :patiente, :doctor
  
  @@all = []
  
  def initialize(date, patiente, doctor)
    @date = date
    @patiente = patiente
    @doctor = doctor 
    @@all << self 
  end 
  
  
  def self.all
    @@all  
end 
   
end 