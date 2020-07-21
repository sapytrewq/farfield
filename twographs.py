import numpy as np
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import csvinterface


def plot_everything(means_filename, stdev_filename):

	#set up a figure
	fig = plt.figure(figsize=plt.figaspect(0.3))
	#

	ax1 = fig.add_subplot(1, 2, 1, projection='3d')

	xData, yData, zData = csvinterface.read_csv(means_filename)

	print("returned data")
	for el in zData: print(el)
	print("end returned data")

	print("zdata shape",zData.shape)
	print("x,y len",len(xData), len(yData))
	print(xData)
	print(yData)

	xData, yData = np.meshgrid(xData, yData)


	# Plot the surface.
	ax1 = fig.gca(projection='3d')
	surf = ax1.plot_surface(xData, yData, zData, cmap=cm.viridis,
		               linewidth=0, antialiased=False)

	# Title
	# Placement 0, 0 would be the bottom left, 1, 1 would be the top right.
	ax1.text2D(0.05, 0.95, "Average Value", transform=ax1.transAxes)

	# Tweaking display region and labels
	ax1.set_xlim(0, 180)
	ax1.set_ylim(0, 180)
	ax1.set_xlabel('θ (base, degrees)', color='crimson')
	ax1.set_ylabel('ɸ (base, degrees)', color='crimson')
	ax1.set_zlabel('⚡ (Volts)', color='crimson')


	# Customize the z axis.
	ax1.set_zlim(0, 5)
	ax1.zaxis.set_major_locator(LinearLocator(10))
	ax1.zaxis.set_major_formatter(FormatStrFormatter('%.02f'))

	# Add a color bar which maps values to colors.
	fig.colorbar(surf, shrink=0.5, aspect=5, ax=ax1)


	#Second graph 

	ax2 = fig.add_subplot(1, 2, 2, projection='3d')

	xData2, yData2, zData2 = csvinterface.read_csv(stdev_filename)
	xData2, yData2 = np.meshgrid(xData2, yData2)

	# Plot the surface.
	ax2 = fig.gca(projection='3d')
	surf = ax2.plot_surface(xData2, yData2, zData2, cmap=cm.viridis,
		               linewidth=0, antialiased=False)

	# Title
	# Placement 0, 0 would be the bottom left, 1, 1 would be the top right.
	ax2.text2D(0.05, 0.95, "Standard Deviation", transform=ax2.transAxes)

	# Tweaking display region and labels
	ax2.set_xlim(0, 180)
	ax2.set_ylim(0, 180)
	ax2.set_xlabel('θ (base, degrees)', color='crimson')
	ax2.set_ylabel('ɸ (base, degrees)', color='crimson')
	ax2.set_zlabel('⚡ (Volts)', color='crimson')


	# Customize the z axis.
	ax2.set_zlim(0, 5)
	ax2.zaxis.set_major_locator(LinearLocator(10))
	ax2.zaxis.set_major_formatter(FormatStrFormatter('%.02f'))

	# Add a color bar which maps values to colors.
	fig.colorbar(surf, shrink=0.5, aspect=5, ax=ax2)

	plt.show()

plot_everything("farfield_1_means.csv", "farfield_1_stdevs.csv")


