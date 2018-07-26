
require 'faker'


10.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Beer.style, postal_code: Faker::Number.between(75000, 95999))
end

20.times do
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

30.times do
  appointment = Appointment.create(date: Faker::Date.forward(38), doctor_id: Faker::Number.between(1, 10), patient_id: Faker::Number.between(1, 20))
end
