class Appointment < ActiveRecord::Base

	def Appointment.deleteAppointment(apo_id)
		cita = Appointment.where(:id => apo_id).first
		cita.delete
	end
	
	def Appointment.modifyAppointment(appointment_id, medic_id, begin_time, end_time)
		cita = Appointment.where(:id => appointment_id).first
		if cita == nil
			puts "no existe el id para este medico"
		else
			cita.medic_id=medic_id
			nueva_cita.begin_time=begin_time
			nueva_cita.end_time=end_time
			nueva_cita.save
		end
	end
	
	def Appointment.assignAppointment(medic_id, patient_id, begin_time, end_time)
		nueva_cita = Appointment.new
		nueva_cita.medic_id=medic_id
		nueva_cita.patient_id=patient_id
		nueva_cita.begin_time=begin_time
		nueva_cita.end_time=end_time
		nueva_cita.save
	end
		
end
