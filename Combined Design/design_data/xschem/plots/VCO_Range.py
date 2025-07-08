import os
import re
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import find_peaks

folder = r"C:\Users\nilas\Desktop\AICD_PROJECT\IIC-OSIC-TOOLS\Team1\VCO"
frequency_resolution_hz = 1e8  

vcontrol_values = []
peak_frequencies_ghz = []

for filename in os.listdir(folder):
    match = re.match(r"fft_output\(Vcon=([\d.]+)\)\.txt", filename)
    if match:
        vcon = float(match.group(1))
        filepath = os.path.join(folder, filename)

        # Load FFT data
        df = pd.read_csv(filepath, delim_whitespace=True, header=None, names=["Freq (Hz)", "dB"])

        #Capturing first harmonic frequency
        df = df[(df["Freq (Hz)"] > 0) & (df["Freq (Hz)"] >= 1e6) & (df["Freq (Hz)"] <= 100e6)]

        if df.empty:
            print(f"No data in valid range for Vcon = {vcon}")
            continue

        peaks, _ = find_peaks(df["dB"].values, height=None, distance=5)
        if len(peaks) == 0:
            print(f"No peak found for Vcon = {vcon}")
            continue

        # Choose highest local peak
        peak_idx = peaks[np.argmax(df["dB"].values[peaks])]
        peak_freq_ghz = df["Freq (Hz)"].iloc[peak_idx] / 1e9

        vcontrol_values.append(vcon)
        peak_frequencies_ghz.append(peak_freq_ghz)

data = pd.DataFrame({
    "Vcon (V)": vcontrol_values,
    "Frequency (GHz)": peak_frequencies_ghz
}).sort_values("Vcon (V)")

plt.figure(figsize=(8, 5))
plt.plot(data["Vcon (V)"], data["Frequency (GHz)"], marker='o', linewidth=2)
plt.title("VCO: Control Voltage vs Oscillation Frequency", fontsize=14)
plt.xlabel("Control Voltage (V)")
plt.ylabel("Frequency (GHz)")
plt.grid(True)
plt.tight_layout()
plt.show()
