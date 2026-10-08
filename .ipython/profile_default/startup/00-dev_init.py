ip = get_ipython()

try:
    ip.run_line_magic('load_ext', 'autoreload')
    ip.run_line_magic('autoreload', '2')
    print(f"autoreload loaded successfully")
except Exception as e:
    print(f"Error loading autoreload: {e}")

import numpy as np
print(f"numpy as np loaded successfully")
from matplotlib import pyplot as plt
print(f"matplotlib.pyplot as plt loaded successfully")

try:
    ip.run_line_magic('matplotlib', '')
    print(f"%matplotlib loaded successfully")
except Exception as e:
    print(f"Error loading %matplotlib: {e}")
