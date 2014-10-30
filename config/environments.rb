Sinatra::Base.configure :production, :development do
  # if ENV["DATABASE_URL"]
    # db = URI.parse(ENV["DATABASE_URL"] || "postgres://localhost/backlogg_development")

    # ActiveRecord::Base.establish_connection(
    #   :adapter  => db.scheme == "postgres" ? "postgresql" : db.scheme,
    #   :host     => db.host,
    #   :username => db.user,
    #   :password => db.password,
    #   :database => db.path[1..-1],
    #   :encoding => "utf8"
    # )
  # end
  ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"] || "postgres://localhost/backlogg_development")
end