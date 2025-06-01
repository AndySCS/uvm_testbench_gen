from tkinter import *
from tkinter import font

class uvm_gen_quick_tips:
    def __init__(self, uvm_gen_font) -> None:
        self.acqt = None
        self.mcqt = None
        self.scbqt = None
        self.ifqt = None
        self.uvm_gen_font = uvm_gen_font
        if self.uvm_gen_font is None:
            raise Exception('Error: font is not inititalized')
        self.tips_type = {
            'agent_drv': {
                'window':self.acqt, 
                'title':'How To Create Driver~Sequencer Components'
                },
            'agent_mon': {
                'window':self.mcqt, 
                'title':'How To Create Monitor Components'
                },
            'scb': {
                'window':self.scbqt, 
                'title':'How To Create ScoreBorad Components'
                },
            'interface': {
                'window':self.ifqt, 
                'title':'How To Create Interface Components'
                }
        }
        self.fl_dir = './quick_tips/'
        self.fl_suffix = '_quick_tips.txt'
        self.check_type_fl_init()


    def gen_quick_tips(self, type):
        ##********************initialize tip window********************##
        self.check_type_valid(type)
        self.tips_type[type]['window'] = Toplevel()
        tip_window = self.tips_type[type]['window']
        tip_title = self.tips_type[type]['title']
        tip_window.wm_title('UVM TEMPLATE GENERATE QUICK TIP')
        type_label = Label(tip_window, tip_title, font=self.uvm_gen_font.MyFontH1)
        type_label.pack()
        ##*************************************************************##

        ##***************************wrap tips content*****************##
        tips_text = Text(tip_window, font=self.uvm_gen_font.MyFontQT)
        tips_content = self.read_tips_fl(type)
        tips_text.insert(INSERT, tips_content)
        tips_text.pack()
        ##*************************************************************##

        ##********************close button*****************************##
        close_but = Button(tip_window, text='CLOSE', command= lambda: self.quick_tips_close_window(type))
        close_but.pack()
        ##*************************************************************##

    def read_tips_fl(self, type):
        fl_dir = self.fl_dir + type + self.fl_suffix
        with open(fl_dir, 'r') as fl:
            return fl.read()
    
    def quick_tips_close_window(self, type):
        self.tips_type[type]['window'].destroy()
        self.tips_type[type]['window'] = None

    def check_type_valid(self, type):
        if type not in self.tips_type:
            raise Exception('Error: tips typs invalid, %s is not valid tips type'%type)

    def check_type_fl_init(self):
        for tips_type in self.tips_type:
            fl_name = tips_type + self.fl_suffix
            fl_dir = self.fl_dir + fl_name
            try:
                print('//'+'*'*10+'begin checking template file %s'%(fl_name)+'*'*10+'//')
                tmp_fl = open(fl_dir)
                tmp_fl.close()
                print('//'+'*'*10+'template file %s is found'%(fl_name)+'*'*10+'//')
            except:
                print('Error: %s not found'%(type + self.fl_suffix))
            finally:
                print('//'+'*'*10+'finish checking template file %s'%(fl_name)+'*'*10+'//')

