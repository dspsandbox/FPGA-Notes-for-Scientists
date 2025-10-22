# FIR Control 
## Description
IP to configure Xilinx FIR Filter instance. 

NOTE: Python driver only supports coefficient quantization mode: *Quantize Only*.

## Parameters & Ports
Parameter | Default |Description |
|--|--|--|
CONFIG_WIDTH | 8 | Width (in bits) of the config channel
RELOAD_WIDTH | 16 | Width (in bits) of the reload channel



|Port | Direction |Description |
|--|--|--|
clk | IN| Clock 
resetn | IN| Synchronous reset (active low)
s_axi |IN | Configuration interface
m_axis_reload | OUT | FIR coefficient reload stream
m_axis_config | OUT | FIR configuration stream

## Addressing
|Address | Range (bits) | Read / Write | Description |
|--|--|--|--|
0x40 | 2 | W | Send FIR config on rising-edge of bit 0. Bit 1 is used to indicate if thi used to set *m_axis_config_tlast*.
0x44 | 2 | W | Send filter coefficient on rising-edge of register bit 0. Bit 1 is used to set to set *m_axis_reload_tlast*.
0x48 | 32 | W | FIR config
0x4C | 32 | W | FIR coefficient


