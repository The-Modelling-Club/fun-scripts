'''
 This Python script is a fun and creative way to celebrate Valentine's Day with the Modelling Club members. We've created an animated heart shape generated entirely from sine and cosine functions. The heart pulsates gently, which symbolizes the warmth and joy of love and friendship.

 Author: Diabene Yaw Addo
'''


import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation

# Parametric equations for the heart shape
def heart_shape(t):
    x = 16 * np.sin(t)**3
    y = 13 * np.cos(t) - 5 * np.cos(2*t) - 2 * np.cos(3*t) - np.cos(4*t)
    return x, y


def update(frame):
    ax.clear()
    ax.set_xlim(-20, 20)
    ax.set_ylim(-20, 20)
    ax.set_aspect('equal')
    ax.axis('off')
    
    ax.text(0, -25, 'Happy Valentines Day! from \nThe Modelling Club', fontsize=15, color='#FF7700', ha='center')

    t = np.linspace(0, 2 * np.pi, 1000)
    x, y = heart_shape(t)
    
    # Add a small pulsating effect by scaling the heart
    scale = 1 + 0.1 * np.sin(frame * 0.1)
    x_scaled = x * scale
    y_scaled = y * scale
    
    ax.plot(x_scaled, y_scaled, color='#FF7700', linewidth=1)
    ax.fill(x_scaled, y_scaled, color='pink', alpha=0.2)
    
    return ax


fig, ax = plt.subplots(figsize=(4, 4))
ax.set_xlim(-20, 20)
ax.set_ylim(-20, 20)
ax.set_aspect('equal')
ax.axis('off')

ani = animation.FuncAnimation(fig, update, frames=100, interval=50, blit=False)

# Save the animation to the directory.
ani.save('animated_love_tmc.gif', writer='pillow')
plt.show()