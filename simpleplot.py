import numpy as np
import matplotlib.pyplot as plt
import csvinterface


def simple_plot(means_filename, stdev_filename):
	#graph 1
	
	xData, yData, zData = csvinterface.read_csv(means_filename)
	xData2, yData2, zData2 = csvinterface.read_csv(stdev_filename)

	x1 = yData
	x2 = yData
	x3 = yData2
	x4 = yData2

	y1 = zData[0]
	y2 = zData[1]
	y3 = zData2[0]
	y4 = zData2[1]

	plt.subplot(1, 2, 1)
	plt.plot(x1, y1, '.-')
	plt.plot(x2, y2, '.-')
	plt.title('Average Value')
	plt.xlabel('Phi')
	plt.ylabel('Voltage')
	plt.legend( [ '0 Deg', '90 Deg'] )
	
	plt.subplot(1, 2, 2)
	plt.plot(x3, y3, '.-')
	plt.plot(x4, y4, '.-')
	plt.title('Standard Deviation')
	plt.xlabel('Phi')
	plt.ylabel('Voltage')
	plt.legend( [ '0 Deg', '90 Deg'] )
	plt.show()

def one_axis_plot(means_filename, stdev_filename):

	xData, yData, zData = csvinterface.read_csv(means_filename)
	xData2, yData2, zData2 = csvinterface.read_csv(stdev_filename)

	x1 = yData
	x2 = yData2
	
	y1 = zData[0]
	y2 = zData2[0]

	plt.subplot(1, 2, 1)
	plt.plot(x1, y1, '.-')
	plt.title('Average Value')
	plt.xlabel('Phi')
	plt.ylabel('Voltage')
	plt.legend( [ '0 Deg'] )
	
	plt.subplot(1, 2, 2)
	plt.plot(x2, y2, '.-')
	plt.title('Standard Deviation')
	plt.xlabel('Phi')
	plt.ylabel('Voltage')
	plt.legend( [ '0 Deg'] )
	plt.show()

#one_axis_plot("farfield_0_means.csv", "farfield_0_stdevs.csv")
