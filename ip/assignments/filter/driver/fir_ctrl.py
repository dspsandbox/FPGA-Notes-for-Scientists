import numpy as np

class FirCtrl():
    """
    FIR Filter Control driver class. 
    
    NOTE: This driver only supports coefficient quantization mode: *Quantize Only*.


    :param ip_handle: PYNQ fir_ctrl instance.
    :param coef_width: FIR coefficient bit width (IP instantiation parameter).
    :param coef_fract: Number of fractional bits in FIR coefficient representation (IP instantiation parameter).
    :param reload_order: List of coefficient indices describing the reload order, including zero paddings (IP instantiation parameter).

    """
    def __init__(self, ip_handle, taps, coef_width, coef_fract, reload_order):
        self._ip_handle = ip_handle
        self._coef_width = coef_width
        self._coef_fract = coef_fract
        self._reload_order = reload_order
    
        self._addr_dict = {
            "send_config" : 0x40,
            "send_coef" : 0x44,
            "config" : 0x48,
            "coef" : 0x4C,
        }
        
    def set_coefficients(self, val_list):
        """
        Define FIR filter coefficients.

        :val_list: List of FIR coefficients.
        """        
        coef_lim_neg = - (2 ** (self._coef_width -  self._coef_fract - 1))
        coef_lim_pos =  (2 ** (self._coef_width -  self._coef_fract - 1)) - 2**(-self._coef_fract) 
        for i in range(len(val_list)):
            if val_list[i] < coef_lim_neg or val_list[i] > coef_lim_pos:
                raise Exception("FIR coefficient at index {} with value {} is out of range [{}, {}].".format(i, val_list[i], coef_lim_neg, coef_lim_pos))

        val_list = np.copy(np.array(val_list))
        val_list *= 2**(self._coef_fract)
            
        for i in range(len(self._reload_order)):
            #Set coef
            idx = self._reload_order[i]
            if idx < len(val_list):
                val = int(val_list[idx])
            else: 
                val = 0 #Zero padding (if required)
            self._ip_handle.write(self._addr_dict["coef"], val)
            
            #Send coef
            last_coef = int(i == (len(self._reload_order) - 1))
            self._ip_handle.write(self._addr_dict["send_coef"], 1 | (last_coef << 1))
            self._ip_handle.write(self._addr_dict["send_coef"], 0)

        #Set config
        self._ip_handle.write(self._addr_dict["config"], 0)
        
        #Send config
        last_config = 1
        self._ip_handle.write(self._addr_dict["send_config"], 1 | (last_config << 1))
        self._ip_handle.write(self._addr_dict["send_config"], 0)