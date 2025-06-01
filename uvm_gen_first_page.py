from uvm_testbench_gen_base import uvm_testbench_gen_base
from uvm_testbench_gen_content import uvm_testbench_gen_content
import uvm_testbench_gen_font

class uvm_gen_first_page:
    def __init__(self, master, qt, bnr, uvm_gen_font) -> None:
        self.uvm_gen_font = uvm_gen_font
        self.uvm_gen_base = uvm_testbench_gen_base(master, qt, bnr, uvm_gen_font)
        self.uvm_gen_content = uvm_testbench_gen_content(master, uvm_gen_font)

    def gen_page(self):
        self.uvm_gen_base.init_master()
        self.uvm_gen_content.init_content() 
        self.uvm_gen_content.greeting_widget_window()