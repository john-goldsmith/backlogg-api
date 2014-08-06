# This file should contain all the record creation needed to seed the
# database with its default values. The data can then be loaded with
# the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# Note that files located in /db/seeds are prefixed with a 2-digit number,
# which is needed to determine the order in which seed files are loaded
# and executed.  If one seed file has a dependency on another seed file,
# this ensures that they are executed in the correct order.

Dir[File.join(APP_ROOT, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }