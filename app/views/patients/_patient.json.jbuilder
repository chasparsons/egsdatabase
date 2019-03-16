json.extract! patient, :id, :firstname, :lastname, :mrn, :dob, :created_at, :updated_at
json.url patient_url(patient, format: :json)
