from tkinter import *

class uvm_testbench_gen_content:
    def __init__(self, master, uvm_gen_font) -> None:
        self.master = master
        self.frame = None
        self.canvas = None
        self.uvm_gen_font = uvm_gen_font
        self.scrollbar = None
        if self.master is None:
            raise Exception('Error: master not initialized')
        
    def init_content(self):
        self.init_frame()
        self.init_scrollbar()
        
    def init_frame(self):
        if self.canvas:
            self.canvas.grid_forget()
            self.canvas = None
        self.canvas = Canvas(self.master)
        self.canvas.grid(row = 1, column= 0, sticky='nswe')
        if self.frame:
            self.frame.grid_forget()
            self.frame = None
        self.frame = Frame(self.canvas, bg='gray50', highlightbackground='black', highlightthickness='2')
        self.frame.grid(row = 0, column = 0, sticky = 'nwse')

    def greeting_widget_window(self):
        self.initial_screen_label = Label(self.frame, font=self.uvm_gen_font.MyFontH1, text="Hello! Choose What You Want To Create")
        self.initial_screen_label.grid(row=0, column=0, sticky='ew')
        self.initial_screen_label.rowconfigure(0,weight=1)

    def init_scrollbar(self):
        self.scrollbar = Scrollbar(self.master, command=self.canvas.yview)
        self.scrollbar.grid(row=1, column=1, sticky="nse")
        self.canvas.configure(yscrollcommand=self.scrollbar.set)
       # frame_id = self.canvas.create_window((0, 0), window=self.frame, anchor="nw")
        # Bind the function to the Frame's size change
        self.frame.bind("<Configure>", self.update_scroll_region)

    def update_scroll_region(self, event):
        self.canvas.configure(scrollregion=self.canvas.bbox("all"))





