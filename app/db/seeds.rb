# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
    { en: 'Astellas'},
    { en: 'Merck'},
    { en: 'J&J'},
    { en: 'Lupin'},
    { en: 'Fresenius'},
    { en: 'Leo'},
    { en: 'Edwards'},
].each do |name|
  project = Project.find_or_initialize_by(name: name[:en])
  project.update_attributes({
                                name: name[:en]
                            })
end