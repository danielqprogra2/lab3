class Patient < ActiveRecord::Base
  
  def Patient.showAppointments(pati_id)
    primera_cita = Appointment.where(:patient_id => pati_id).first
		if primera_cita == nil
			puts "NO EXISTE ESE ID"
		else
			puts "hora #{primera_cita.begin_time}"
		end
  end
  
end
