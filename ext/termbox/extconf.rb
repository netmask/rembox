require 'mkmf'
extension_name = 'termbox'

swig_cmd = find_executable "swig"
current_path = File.expand_path('../', __FILE__)

puts "Creating C wrap"

%x{#{swig_cmd} -ruby #{current_path}/termbox.i }

have_header('termbox.h')
find_library('termbox', nil)

dir_config(extension_name)
create_makefile 'termbox/termbox'
