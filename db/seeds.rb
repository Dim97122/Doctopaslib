
require 'faker'


10.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Number.between(75000, 95999))
end

20.times do
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

30.times do
  appointment = Appointment.create(date: Faker::Date.forward(38), doctor_id: Faker::Number.between(1, 20), patient_id: Faker::Number.between(1, 40))
end

10.times do
  speciality = Speciality.create(speciality_name: Faker::Food.dish)
end

Speciality.all.each do |speciality|
  speciality.doctors.push(Doctor.all.sample)
  speciality.save
end

# give each assembly a random part
Doctor.all.each do |doctor|
  doctor.specialities.push(Speciality.all.sample)
  doctor.save
end
