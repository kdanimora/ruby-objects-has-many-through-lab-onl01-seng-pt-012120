class Doctor
  
  attr_accessor :name 
  
  @@all = []
  
  def intilialize(name)
    @name = name 
    @@all << self 
end 
  
  def self.all
    @@all 
end 

def appointments
  Appointment.all.select{|appt| appt.doctor == self}
end 
  
  def new_appointment(patiente, date)
    Appointment.new(date, patiente, self)
end  
  
  
  def patientes
  appointments.map do |appt|
    appt.patiente
end 
end  
   
end 