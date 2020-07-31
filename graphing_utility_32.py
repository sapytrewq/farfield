import choose_file
import twographs
from tkinter import Tk
from tkinter.filedialog import askopenfilename

print("select a means file")
Tk().withdraw() # we don't want a full GUI, so keep the root window from appearing
means_filename = askopenfilename() # show an "Open" dialog box and return the path to the selected file
#return (filename)


print("select a stdev file")
Tk().withdraw() # we don't want a full GUI, so keep the root window from appearing
stdev_filename = askopenfilename() # show an "Open" dialog box and return the path to the selected file
#return filename1

twographs.plot_everything(means_filename,stdev_filename)
