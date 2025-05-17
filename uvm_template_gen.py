import os

#------------------------------------------------------------------
# read uvm components templates and gen conrresponding files
#------------------------------------------------------------------
class uvm_template_gen:
    def __init__(self) -> None:
        self.uvm_type = [
            'sequence_item',
            'sequence',
            'sequencer',
            'driver',
            'monitor',
            'scoreboard',
            'test',
            'interface',
            'env',
            'env_cfg',
            'env_macro',
            'interface_wrapper',
            'env_monitor',
            'pkg',
            'top_mc',
            'com_fl',
            'env_fl',
            'tbt_fl',
            'agent_alone_mc',
            'agent_cfg',
            'env_setup'
        ]
        self.template_dir = './template/'
        self.check_uvm_template_exit()

    #------------------------------------------------------------------------------
    # get classname suffix and template name
    #------------------------------------------------------------------------------
    def check_uvm_template_exit(self):
        for uvm_template in self.uvm_type:
            template_fl_name = uvm_template + '_template.sv'
            template_fl_dir = self.template_dir + template_fl_name
            try:
                print('//'+'*'*10+'begin checking template file %s'%(template_fl_name)+'*'*10+'//')
                open(template_fl_dir)
                print('//'+'*'*10+'template file %s is found'%(template_fl_name)+'*'*10+'//')
            except:
                print('Error: %s not found'%(template_fl_name))
            finally:
                print('//'+'*'*10+'finish checking template file %s'%(template_fl_name)+'*'*10+'//')

    #------------------------------------------------------------------------------
    # get classname suffix and template name
    #------------------------------------------------------------------------------
    def get_uvm_type(self, uvm_component):
        class_name_suffix = ''
        template_name = ''

        if uvm_component not in self.uvm_type:
            pass
        else:
            class_name_suffix = '_{uvm_component}'.format(uvm_component = uvm_component)
            template_name    = '{uvm_component}_template.sv'.format(uvm_component = uvm_component)

        return class_name_suffix, template_name

    #------------------------------------------------------------------------------
    # generate from template
    #------------------------------------------------------------------------------
    def generate_from_template(self, class_name, pkg_name, uvm_component):
        template_stg = ''

        if class_name == "":
            print("ERROR: Please Specify Class Name. Exiting The Tool!\n")
            return None
        
        if pkg_name == "":
            print("ERROR: Please Specify Package Name. Exiting The Tool!\n")
            return None

        class_name_suffix, template_name = self.get_uvm_type(uvm_component)

        if class_name_suffix == '' or template_name == '':
            print("ERROR: Please Specify uvm component Name. Exiting The Tool!\n")
            return None
        
        template_dir = self.template_dir + template_name

        class_name_org = class_name
        class_name = class_name + class_name_suffix
        print("INFO: Generating class %s"%(class_name))

        if (os.path.isfile('%s.sv'%class_name)):
            print("WARNING: %s.sv does exist, backing it up to %s.bak"%(class_name, class_name))
            os.rename('%s.sv %s.bak'%(class_name, class_name))

        try:
            with open(template_dir, 'r') as file:
                template_stg = file.read()
        except:
            print('Error: template file %s not found'%(template_dir)) 
            return None
        
        if template_stg == '':
            print("ERROR: Seqeunce template read error. Exiting The Tool!\n")
            return None

        template_stg = template_stg.replace("<CLASS_NAME>", class_name)
        template_stg = template_stg.replace("<INTERFACE_NAME>", class_name)
        template_stg = template_stg.replace("<INTERFACE_WRAPPER_NAME>", class_name)
        template_stg = template_stg.replace("<ENV_MACRO_NAME>", class_name)
        template_stg = template_stg.replace("<PREFIX_NAME>", class_name_org)
        template_stg = template_stg.replace("<PACKAGE_NAME>", pkg_name)
        template_stg = template_stg.replace("<INC_GUARD>", "INC_" + class_name.upper() + "_SV")
        template_stg = template_stg.replace("<CREATE_NAME>", self.rtn_usr_name())
        template_stg = template_stg.replace("<CREATE_DATE>", self.rtn_date_time_for_files())

        template_stg_file = open("%s.sv"%(class_name), "w")
        template_stg_arr = template_stg.split('µ')
        for lines in template_stg_arr:
            template_stg_file.write(lines)
        template_stg_file.close()
        
        # Cleaning Local Variables
        template_stg = ''
        template_stg_arr = ''
    #------------------------------------------------------------------------------
