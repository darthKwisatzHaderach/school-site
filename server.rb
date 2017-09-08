require 'sinatra'
require 'slim'

get '/' do
  slim :home
end

get '/school-mediation' do
  @files = Dir.entries("./public/files/school-mediation").select {|f| !File.directory? f}
  slim :school_mediation
end