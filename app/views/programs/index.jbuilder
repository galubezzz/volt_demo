json.array! @programs do |program|

  json.id program.id
  json.name program.name

  json.sport do
    if program.sport
      json.partial! program.sport
    else
      json.null!
    end
  end

  json.required_equipment do
    json.partial! 'equipments/equipment', collection: program.required_equipment, as: :equipment
  end
end