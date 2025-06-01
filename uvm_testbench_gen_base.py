
from tkinter import *

class uvm_testbench_gen_base:
    def __init__(self, master, qt, bnr, uvm_gen_font):
        self.master = master
        self.qt = qt
        self.bnr = bnr
        self.bnr.set(1)
        self.uvm_gen_font = uvm_gen_font
        if self.master is None:
            raise Exception('Error: root is not inititalized')
        if self.qt is None: 
            raise Exception('Error: qt is not inititalized')
        if self.bnr is None: 
            raise Exception('Error: bnr is not inititalized')
        if self.uvm_gen_font is None:
            raise Exception('Error: font is not inititalized')
        self.scrollbar = None
        self.top_frame = None
        self.qtips_chkbtn = None
        self.bnr_chkbtn = None
        self.lib_frame = None
        self.lib_label = None
        self.lib_entry = None
        self.canva = Canvas(self.master)
#        self.set_up_scrollbar()

    def init_master(self):
        self.master.grid_columnconfigure((0,1), weight=1)
        self.master.title("UVM Template Generator")
        self.init_top_bar()

    def init_top_bar(self):
        self.init_top_bar_base()
        self.init_check_but()
        self.init_lib()

    def init_top_bar_base(self):
        if self.top_frame: 
            self.top_frame.grid_forget()
            self.top_frame = None
        self.top_frame = Frame(self.master, bg='gray50', highlightbackground='black', highlightthickness='2')
        self.top_frame.grid(row=0, column=0, columnspan=2,sticky='WE')
    #    self.top_frame.rowconfigure(0,weight=1)

    def init_check_but(self):
        self.qtips_chkbtn = Checkbutton(self.top_frame, bg='gray50', activebackground="gray90", highlightbackground='gray50', font=self.uvm_gen_font.MyFontH2, anchor="center", text = "User Tips", variable = self.qt, onvalue = 1, offvalue = 0) 
        self.qtips_chkbtn.grid(row=0, column=0, sticky='NW')
        self.qtips_chkbtn.rowconfigure(0,weight=1)
        self.qtips_chkbtn.columnconfigure(0,weight=1)
        
        self.bnr_chkbtn = Checkbutton(self.top_frame, bg='gray50', activebackground="gray90", highlightbackground='gray50', font=self.uvm_gen_font.MyFontH2, anchor="center", text = "Build & Run", variable = self.bnr, onvalue = 0, offvalue = 0) 
        self.bnr_chkbtn.grid(row=0, column=2, sticky='NW')
        self.bnr_chkbtn.rowconfigure(0,weight=1)
        self.bnr_chkbtn.columnconfigure(2,weight=1)

    def init_lib(self):
        #------------------------------------------------------------------------------
        # Code for taking the option for which lib type it is : 011520|WED
        #------------------------------------------------------------------------------
        if self.lib_frame: 
            self.lib_frame.grid_forget()
            self.lib_frame = None
        self.lib_frame = Frame(self.top_frame, bg='gray50',)
        self.lib_frame.grid(row=0, column=1)
        self.lib_frame.rowconfigure(0,weight=1)
        self.lib_frame.columnconfigure(1,weight=1)
        
        if not (self.lib_label):
            self.lib_label = Label(self.lib_frame, font=self.uvm_gen_font.MyFontH2, bg='gray50', highlightbackground='gray50', text="Lib")
            self.lib_label.grid(row=0, column=0)
            self.lib_label.rowconfigure(0,weight=1)
        else:
            self.lib_label.grid()
        
        if not (self.lib_entry): 
            self.lib_entry = Entry(self.lib_frame, font=self.uvm_gen_font.MyFontH2, bg='gray50', highlightbackground='gray50', width = 10)
            self.lib_entry.insert(END, 'uvm')
            self.lib_entry.grid(row=0, column=1)
            self.lib_entry.rowconfigure(0,weight=1)
        else:
            self.lib_entry.grid()
        #------------------------------------------------------------------------------

    def init_scrollbar(self):
        scrollbar = Scrollbar(self.master, command=self.canva.yview)
        self.canva.configure(yscrollcommand=scrollbar.set)
        scrollbar.grid(column=1, row= 0, sticky="NSE")

        
