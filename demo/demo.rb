require 'termbox'
include Termbox

tb_init
tb_clear

20.times do |i|
  tb_change_cell i, i+2, 43, TB_MAGENTA, TB_BLACK
end

tb_present
