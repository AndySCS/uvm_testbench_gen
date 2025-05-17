from tkinter import *
import tkinter as tk

class CustomLabel(tk.Frame):
    def __init__(self, parent, label1, label2, **kwargs):
        tk.Frame.__init__(self, parent, **kwargs)

        self.canvas = tk.Canvas(self, borderwidth=0, highlightbackground='black', highlightthickness=2, background=self.cget("background"))
        self.canvas.pack(fill="both", expand=True)

        l1 = tk.Label(self.canvas, text=label1, background=self.cget("background"))
        l2 = tk.Label(self.canvas, text=label2, background=self.cget("background"))

        l1.place(relx=.75, rely=.25, anchor="c")
        l2.place(relx=.25, rely=.75, anchor="c")

        # arrange for the line to be redrawn whenever the canvas
        # changes size
        self.canvas.bind("<Configure>", self.handle_configure)

        # set the default size to be relative to the requested size
        # of the labels plus some margin
        width  = l1.winfo_reqwidth()  + l2.winfo_reqwidth() + 4
        height = l1.winfo_reqheight() + l2.winfo_reqheight() + 4
        self.canvas.configure(width=width, height=height)

    def handle_configure(self, event):
        self.canvas.delete("line")
        self.canvas.create_line(0,0,event.width, event.height, tags=("line",))
