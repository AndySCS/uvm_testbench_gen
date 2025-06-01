from tkinter import *
from tkinter import font

class uvm_testbench_gen_font:
    def __init__(self, master) -> None:
        self.MyFontH = font.Font(family='courier', size=25, weight=font.BOLD)
        self.MyFontH1 = font.Font(family='courier', size=22, weight=font.BOLD)
        self.MyFontH2 = font.Font(family='courier', size=20, weight=font.BOLD)
        self.MyFontBtn = font.Font(family='courier', size=20, weight=font.BOLD)
        self.MyFontQT = font.Font(family='courier', size=20)