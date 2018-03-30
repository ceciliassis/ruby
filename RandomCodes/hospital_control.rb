# Crie um programa (com um menu de interação com o usuário) que manipule
# uma lista contendo informações sobre vinte pacientes (nome do paciente, nome
# do médico, idade e sexo). Esse programa deve realizar: (10,0)
# - Cadastro de pacientes
# - Apresentar lista de todos os pacientes (nome do paciente e do médico)
# - Excluir um paciente (à partir do nome do paciente)

def register_patient(patients)
  patient = Patient.new
  puts "\nPatient's Name?"
  patient.name = gets.strip
  puts "Patient's Doctor?"
  patient.doctor = gets.strip
  puts "Patient's Age?"
  patient.age = gets.to_i
  puts "Patient's Gender?"
  patient.gender = gets.strip
  patients[patient.name.to_sym] = patient
  puts
end

def show_patients(patients)
  if patients.empty?
    puts "\nNo patients yet.\n\n"
  else
    puts "\n**Patients **"
    patients.each_value do |patient|
      puts "Name: #{patient.name}, Doctor: #{patient.doctor}"
    end
    puts
  end
end

def delete_patient(patients)
  puts "\nWhat patient's name?"
  name = gets.strip
  patients.delete(name.to_sym) { puts "\nPatient not found.\n\n" }
end

def show_options
  puts 'Type:'
  puts '1 - Register Patient', '2 - Show Patients'
  puts '3 - Delete Patient', '0 - Exit'
  gets.to_i
end

# "classes"
# como Patient é uma constante, por começar com letra maiuscula, a mesma
# pode ser acessada de qualquer lugar
Patient = Struct.new(:name, :doctor, :age, :gender)

# variables
patients = {}
option = 0

# main
until option.nil?
  # option = 1
  option = show_options
  case option
  when 1
    register_patient(patients)
  when 2
    show_patients(patients)
  when 3
    delete_patient(patients)
  else
    puts 'OK! Bye then.'
    option = nil
  end
end
