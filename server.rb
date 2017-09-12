# encoding: UTF-8

require 'sinatra'
require 'slim'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

@@pdf_icon = "files/common/pdf_icon.png"
@@doc_icon = "files/common/doc_icon.png"
@@zip_icon = "files/common/zip_icon.png"

get '/' do
  slim :home
end

get '/school-mediation' do
  basedir = "./public/files/school-mediation"
  @dir = "files/school-mediation"
  @pdf_files = Dir.chdir(basedir) { Dir.glob("*.pdf") }
  @doc_files = Dir.chdir(basedir) { Dir.glob("*.doc*") }
  @zip_files = Dir.chdir(basedir) { Dir.glob("*.*z*") }
  slim :school_mediation
end

get '/anti-corruption-activity' do
  basedir = "./public/files/anti-corruption-activity"
  @dir = "files/anti-corruption-activity"
  @pdf_files = Dir.chdir(basedir) { Dir.glob("*.pdf") }
  @doc_files = Dir.chdir(basedir) { Dir.glob("*.doc*") }
  @zip_files = Dir.chdir(basedir) { Dir.glob("*.*z*") }
  slim :anti_corruption_activity
end

get '/material-base-development' do
  basedir = "./public/files/material-base-development"
  @dir = "files/material-base-development"
  @pdf_files = Dir.chdir(basedir) { Dir.glob("*.pdf") }
  @doc_files = Dir.chdir(basedir) { Dir.glob("*.doc*") }
  @zip_files = Dir.chdir(basedir) { Dir.glob("*.*z*") }
  slim :material_base_development
end

get '/labor-union' do
  slim :labor_union
end