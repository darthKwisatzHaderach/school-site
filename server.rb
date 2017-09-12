# encoding: UTF-8

require 'sinatra'
require 'slim'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

@@pdf_icon = "files/common/pdf_icon.png"
@@doc_icon = "files/common/doc_icon.png"
@@zip_icon = "files/common/zip_icon.png"
@@html_icon = "files/common/html_icon.png"

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

get '/strategy-of-development-of-education' do
  basedir = "./public/files/strategy-of-development-of-education"
  @dir = "files/strategy-of-development-of-education"
  @pdf_files = Dir.chdir(basedir) { Dir.glob("*.pdf") }
  @doc_files = Dir.chdir(basedir) { Dir.glob("*.doc*") }
  @zip_files = Dir.chdir(basedir) { Dir.glob("*.*z*") }
  slim :strategy_of_development_of_education
end

get '/patriotic-education' do
  basedir = "./public/files/patriotic-education"
  @dir = "files/patriotic-education"
  @pdf_files = Dir.chdir(basedir) { Dir.glob("*.pdf") }
  @doc_files = Dir.chdir(basedir) { Dir.glob("*.doc*") }
  @zip_files = Dir.chdir(basedir) { Dir.glob("*.*z*") }
  slim :patriotic_education
end

get '/culture-of-healthy-lifestyle' do
  basedir = "./public/files/culture-of-healthy-lifestyle"
  @dir = "files/culture-of-healthy-lifestyle"
  @pdf_files = Dir.chdir(basedir) { Dir.glob("*.pdf") }
  @doc_files = Dir.chdir(basedir) { Dir.glob("*.doc*") }
  @zip_files = Dir.chdir(basedir) { Dir.glob("*.*z*") }
  @html_files = Dir.chdir(basedir) { Dir.glob("*.htm*") }
  slim :culture_of_healthy_lifestyle
end

get '/labor-union' do
  slim :labor_union
end