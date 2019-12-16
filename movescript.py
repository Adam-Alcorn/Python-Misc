import pyautogui, time
for x in range(1000):
    time.sleep(5)
    screenWidth, screenHeight = pyautogui.size() # Returns two integers, the width and height of the screen. (The primary monitor, in multi-monitor setups.)
    currentMouseX, currentMouseY = pyautogui.position() # Retursn two integes, the x and y of the mouse cursor's current position.
    pyautogui.moveTo(300, 300) # Move the mouse to the x, y coordinates 100, 150.
    time.sleep(200)
    pyautogui.moveTo(900, 900) # Move the mouse to the x, y coordinates 100, 150.