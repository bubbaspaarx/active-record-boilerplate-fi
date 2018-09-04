require 'faker'

puts 'Creating Students...'
arr = %w(Jo Kay Katy Irum Ciaran Billie Bobby Cam Ali)
arr.each do |student|
  new_student = Student.new(
    name:    student,
    norris_quote: "#{Faker::ChuckNorris.fact}"
  )
  new_student.save!
end
puts 'Finished adding students with awesome quotes'
