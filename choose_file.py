import twographs
from tkinter import Tk
from tkinter.filedialog import askopenfilename



def choose_file_means():
	print("select a means file")
	Tk().withdraw() # we don't want a full GUI, so keep the root window from appearing
	filename = askopenfilename() # show an "Open" dialog box and return the path to the selected file
	return filename
def choose_file_stdev():
	print("select a stdev file")
	Tk().withdraw() # we don't want a full GUI, so keep the root window from appearing
	filename1 = askopenfilename() # show an "Open" dialog box and return the path to the selected file
	return filename1
	

