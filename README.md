## A PFD-CP Type-II ∆Σ Fractional-N Phase Locked Loop (PLL) Clock Multiplier Layout in IHP SG13G2 Process

<a name="toc"></a>
# Table of Contents

1. [Members](#members)
2. [Overview of the Project](#overview)
3. [Block Diagram of the Project](#block)
4. [Specifications of the Project](#specs)
5. [Circuit Design](#circuit)
   - [PLL](#pll)
   - [Phase-frequency detector (PFD)](#pfd)
   - [Charge pump (CP)](#cp)
   - [Loop filter](#lf)
   - [Bias Generator](#bias)
   - [Voltage-controlled oscillator (VCO)](#vco)
   - [Frequency Divider (FD)](#fd)
6. [Simulation Results](#sim)
   - [PLL](#sim_pll)
   - [VCO](#sim_vco)
   - [Charge Pump](#sim_cp)
   - [Frequency Divider](#sim_fd)
7. [Control Interface](#control)
8. [Layout Design](#layout)
9. [Physical Verification (DRC, LVS)](#pv)
10. [Post-layout Verification after PEX](#pex)
11. [GDS Streaming](#gds)

---

<a name="members"></a>
## 1. Members (Department of Electronic and Telecommunication Engineering, University of Moratuwa)

- Yasiru Amarasinghe (T1)  
- Nilasi Methsarani (T1)  
- Nimesh Kavinda (T1)  
- Avishka Herath (T2)  
- Manimohan Thiriloganathan (T2)  
- Hansa Marasinghe (T2)  
- Upeksha Dilhara (T2)  
- Instructor: Kithmin Wickremasinghe (MASc)  
- Supervisor: Dr. Subramaniam Thayaparan (PhD)  

[Return to top](#toc)

---

<a name="overview"></a>
## 2. Overview of the Project

The PLL is a charge-pump (CP) based (Type-II) PLL which uses a standard fractional-N architecture, where an output frequency divider (FD) is used to set the frequency multiplication with respect to the reference clock input.  
The output frequency `f_out` is `N * f_ref`, where `N` is the division ratio of `XDIV_OUT` and `f_ref` is the input clock frequency.  
N can be between 1 and 15, and is designed for a 10 MHz reference input, which implies an output frequency between 10 kHz and 150 MHz.  

[Return to top](#toc)

---

<a name="block"></a>
## 3. Block Diagram of the Project

[Return to top](#toc)

---

<a name="specs"></a>
## 4. Specifications of the Project

[Return to top](#toc)

---

<a name="circuit"></a>
## 5. Circuit Design

<a name="pll"></a>
### 5.1 PLL
[Return to top](#toc)

<a name="pfd"></a>
### 5.2 Phase-frequency detector (PFD)
[Return to top](#toc)

<a name="cp"></a>
### 5.3 Charge pump (CP)
<center><img src="Combined_Design/design_data/xschem/images/charge_pump_sch.png" width="1000"></center>  

The charge pump design in this project is based on the [tt08-tiny-pll](https://github.com/LegumeEmittingDiode/tt08-tiny-pll). The charge pump uses two current sources (bias_p and bias_n), which are switched to the output by the up and down control signals. The nominal charge pump current (set by the bias generator) is configurable to suit the PLL requirements.

[Return to top](#toc)

<a name="lf"></a>
### 5.4 Loop filter
<center><img src="Combined_Design/design_data/xschem/images/loop_filter_sch.png" width="1000"></center>  

[Return to top](#toc)

<a name="bias"></a>
### 5.5 Bias Generator
<center><img src="Combined_Design/design_data/xschem/images/bias_gen_sch.png" width="1000"></center>  

The bias generator design in this project is also based on the [tt08-tiny-pll](https://github.com/LegumeEmittingDiode/tt08-tiny-pll), but we added an extra resistor to increase bias_n value. The bias generator is a self-biased current mirror, which provides a roughly supply-independent current for the charge pump. A startup circuit is included to ensure the bias generator does not fall into an undesirable operating point where IOUT = 0. The diode devices M3 and M7 charge the kick node to VPWR when the circuit is enabled, which pulls bias_p low and establishes a current in the mirror devices. Once the mirror is active, M3 pulls kick low and disables the startup circuit.


[Return to top](#toc)

<a name="vco"></a>
### 5.6 Voltage-controlled oscillator (VCO)

Each stage is a standard-cell inverter with delay controlled by current-limiting transistors. The use of eleven stages sets the oscillation frequency in the tens of megahertz range and improves phase noise performance by spreading delay across multiple elements.

A control transistor operating in the triode region regulates the current supplied to the inverter chain, enabling smooth tuning of the oscillation frequency. Minimum channel-length devices are used to maximize the width-to-length ratio, reduce \(V_{DSAT}\), and minimize parasitic capacitances.

Low-threshold (LVT) NMOS devices are employed so that the control voltage operates around mid-supply, ensuring robust operation across process and temperature variations. The nominal oscillation frequency is approximately **50 MHz**, with tuning capability around this point.

Dedicated keeper devices are included to disable the oscillator during standby, achieving **zero static power consumption** when the circuit is turned off.


#### Inverter for VCO
<center><img src="Combined_Design/design_data/xschem/images/11Stages_VCO_Inverter_sch.png" width="1000"></center>  

#### 11-stage VCO
<center><img src="Combined_Design/design_data/xschem/images/11Stages_VCO_sch.png" width="1000"></center>  

[Return to top](#toc)

<a name="fd"></a>
### 5.7 Frequency divider (FD)

<center><img src="Combined_Design/design_data/xschem/images/3bit_freq_divider.png" width="1000"></center> 

#### Frequency Divider Cell
<center><img src="Combined_Design/design_data/xschem/images/freq_div_cell.png" width="1000"></center>

#### Half Adder for Divider
<center><img src="Combined_Design/design_data/xschem/images/half_add.png" width="1000"></center>

#### DFF with Inverterd CLK for Divider
<center><img src="Combined_Design/design_data/xschem/images/dff_nclk.png" width="1000"></center>

[Return to top](#toc)

---

<a name="sim"></a>
## 6. Simulation Results

<a name="sim_pll"></a>
### 6.1 PLL
[Return to top](#toc)

<a name="sim_vco"></a>
### 6.2 VCO
We used the nominal control voltage as 1V to characterized the VCO.
- VCO Output waveform at control voltage = 1V  
  <center><img src="Combined_Design/design_data/xschem/images/VCO_Out.jpeg" width="1000"></center>  

- VCO Output frequency spectrum at control voltage = 1V  
  <center><img src="Combined_Design/design_data/xschem/images/VCO_Frequency_spectrum.jpeg" width="1000"></center>  

- VCO Oscillation Frequency vs Control Voltage  
The VCO was characterized by measuring its output frequency while sweeping the control voltage. The results of this simulation are shown below:
  <center><img src="Combined_Design/design_data/xschem/plots/11Stages_VCO_Range.png" width="1000"></center>  

[Return to top](#toc)

<a name="sim_cp"></a>
### 6.3 Charge Pump (CP)
<center><img src="Combined_Design/design_data/xschem/images/charge_pump_lpf_bias_gen_tb.png" width="1000"></center>  
<center><img src="Combined_Design/design_data/xschem/images/vctl_up.png" width="1000"></center>  
<center><img src="Combined_Design/design_data/xschem/images/vctl_down.png" width="1000"></center>  

[Return to top](#toc)

<a name="sim_fd"></a>
### 6.4 Frequency Divider (FD)

<center><img src="Combined_Design/design_data/xschem/images/3bit_freq_divider_pex_tb.png" width="1000"></center>
<center><img src="Combined_Design/design_data/xschem/images/freq_div_cell_tb.png" width="1000"></center>
<center><img src="Combined_Design/design_data/xschem/images/half_add_tb.png" width="1000"></center>
<center><img src="Combined_Design/design_data/xschem/images/dff_nclk_tb.png" width="1000"></center>

[Return to top](#toc)

---

<a name="control"></a>
## 7. Control Interface
[Return to top](#toc)

---

<a name="layout"></a>
## 8. Layout Design

- Charge Pump Layout  
  <center><img src="Combined_Design/design_data/gds/images/charge_pump.png" width="1000"></center>  

- Loop Filter Layout  
  <center><img src="Combined_Design/design_data/gds/images/loop_filter.png" width="1000"></center>  

- Bias Generator Layout  
  <center><img src="Combined_Design/design_data/gds/images/bias_gen_layout.png" width="1000"></center>  

- VCO Layout  
  <center><img src="Combined_Design/design_data/gds/images/11Stage_vco_wob.png" width="1000"></center>  

- Frequency Divider Layout  
  <center><img src="Combined_Design/design_data/gds/images/3bit_freq_divider.png" width="1000"></center>

- PLL Layout (without fillers)  
  <center><img src="Combined_Design/design_data/gds/images/pll_layout_without_fillers.png" width="1000"></center>  

- PLL Layout (with fillers)  
  <center><img src="Combined_Design/design_data/gds/images/pll_layout_with_fillers.png" width="1000"></center>  

[Return to top](#toc)

---

<a name="pv"></a>
## 9. Physical Verification (DRC, LVS)
[Return to top](#toc)

---

<a name="pex"></a>
## 10. Post-layout Verification after PEX
[Return to top](#toc)

---

<a name="gds"></a>
## 11. GDS Streaming
[Return to top](#toc)
