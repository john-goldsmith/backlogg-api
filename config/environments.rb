# configure :development do
#   # set :database, 'postgres://localhost/backlogg_development'
#   set :database, 'postgres://postgres@localhost/backlogg_development'
#   set :show_exceptions, true
# end

# configure :production do
#   db = URI.parse(ENV['DATABASE_URL'] || 'postgres://postgres@localhost/backlogg_production')

#   ActiveRecord::Base.establish_connection(
#     :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
#     :host     => db.host,
#     :username => db.user,
#     :password => db.password,
#     :database => db.path[1..-1],
#     :encoding => 'utf8'
#   )
# end