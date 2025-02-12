

# Valentine’s Day Heart Animation

A simple script (available in both **Python** and **MATLAB**) to generate and animate a pulsating heart shape. It displays a special “Happy Valentine’s Day!” message to members of The Modelling Club. The animation is saved as a GIF, which you can share or display.

---

![Valentine’s Animation](animated_love_tmc.gif)

## Contents
1. [Overview](#overview)  
2. [Features](#features)  
3. [Requirements](#requirements)  
4. [Usage](#usage)  
   - [Python](#python)  
   - [MATLAB](#matlab)  
5. [Customization](#customization)  
6. [Author](#author)
7. [License](#license)

---

## Overview
These scripts use a **parametric equation** of a heart shape to plot and animate a Valentine’s Day message. A small pulsating effect is added to make the heart “beat.” Each script draws the heart, fills it with color, and displays a festive message:  
> “Happy Valentines Day! from The Modelling Club”

The result is saved as an animated GIF file in your working directory (The python script) or in your documents folder  (The MATLAB script).

---




## Features
- **Parametric Heart Equation**: Plots the heart shape using trigonometric functions.
- **Pulsating/Beating Effect**: Scales the heart in a sinusoidal pattern over time.
- **Custom Message**: Displays a text greeting to The Modelling Club members.
- **GIF Export**: Saves the animation as a `.gif` file for easy sharing.

---

## Requirements

### Python
- Python 3.x  
- [NumPy](https://numpy.org/)  
- [Matplotlib](https://matplotlib.org/)  
- [Pillow](https://pillow.readthedocs.io/) (for saving GIFs)

### MATLAB
- A recent version of MATLAB (R2016b or newer should work).  
  - Uses built-in functions like `fill`, `animatedline`, `imwrite`, etc.

---

## Usage

### Python
1. **Install Dependencies**  
   ```bash
   pip install numpy matplotlib pillow
   ```
2. **Run the Script**  
   ```bash
   python main.py
   ```
   - The script creates a figure, animates the heart, and saves `animated_love_tmc.gif` in the same directory.

3. **View the GIF**  
   - After the script finishes, open `animated_love_tmc.gif` with any GIF viewer or web browser.

### MATLAB
1. **Open MATLAB** and navigate to the folder containing `script.m` 
2. **Run the Script**  
   ```matlab
   script.m
   ```
   - The script will create a figure, animate the heart, and save `animated_love_tmc.gif` in the same directory.
3. **View the GIF**  
   - Open `animated_love_tmc.gif` with a compatible image viewer or web browser.

---

## Customization

- **Colors**:  
  - In Python, you can change the line and fill colors in the `update()` function.  
  - In MATLAB, change the `'Color'` property of the line and fill to your preferred RGB triplet or name (if recognized by MATLAB).
  
- **Message Text**:  
  - Python: In the `update()` function, modify the `ax.text(...)` call.  
  - MATLAB: Change the `text()` call or use normalized coordinates if you’d like to position the text differently.

- **Heart Size & Pulsation**:  
  - Both scripts use `scale = 1 + 0.1 * np.sin(...)` (Python) or `sin(...)` (MATLAB). Adjust the `0.1` multiplier to change pulsation intensity.

- **Animation Duration**:  
  - Python: `frames=100` and `interval=50` in the `FuncAnimation` call.  
  - MATLAB: The `for` loop runs `frame = 1:100`. Increase or decrease the number of frames or the delay time (`DelayTime`) when writing the GIF.

---


## Author
These scripts were created by Diabene Yaw Addo, based on an idea from the club’s 2025 vice president, Isaac Antwi, along with Dr. Jude Bonsu. The project was also inspired by a post on X (formerly Twitter) shared by Prince Sugar Gyasi-Denteh.

## License
Feel free to modify and use this script for personal or educational purposes. Please retain credit for the original heart parametric equation and mention The Modelling Club if you share it publicly.

Happy Valentine’s Day and have fun celebrating with The Modelling Club!