class CicCtrl():
    """
    CIC Filter Controler driver class.

    :param ip_handle: PYNQ cic_ctrl instance.
    :param rate_min: Minimum decimation/interpolation rate (IP instantiation parameter).
    :param rate_max: Maximum decimation/interpolation rate (IP instantiation parameter).
    """
    def __init__(self, ip_handle, rate_min, rate_max):
        self._ip_handle = ip_handle
        self._rate_min = rate_min
        self._rate_max = rate_max
        self._addr_dict = {
            "send_config" : 0x40,
            "config" : 0x44
        }      

    def set_rate(self, val):
        """
        Define CIC rate.

        :param val: Interpolation/decimation rate
        """
        if val < self._rate_min or val > self._rate_max:
            raise Exception("CIC rate value {} is out of range [{}, {}].".format(val, self._rate_min, self._rate_max))
        
        #Set config
        self._ip_handle.write(self._addr_dict["config"], val)
        
        #Send config
        self._ip_handle.write(self._addr_dict["send_config"], 1)
        self._ip_handle.write(self._addr_dict["send_config"], 0)
        
  