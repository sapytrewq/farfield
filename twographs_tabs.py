import numpy as np
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import csvinterface
import math


def to_rad(val):
        return val * math.pi / 180

def transform_val(phi, theta, intensity):
        ''' returns x,y,z position of the emission vector
            phi - position of arm
            theta - position of base '''

        xpos = intensity * math.cos(to_rad(phi)) * math.sin(to_rad(theta))
        ypos = intensity * math.cos(to_rad(phi)) * math.cos(to_rad(theta))
        zpos = intensity * math.sin(to_rad(phi))

        return xpos, ypos, zpos


def plot_surface_file(ax, filename):
        xData, yData, zData = csvinterface.read_csv(means_filename)

            corrected_x_data = []
            corrected_y_data = []
            corrected_z_data = []

            for phiindex in range(len(zdata)):
                    phirow = zdata[thetaindex]
                    for thetaindex in range(len(phirow)):
                            intensity = thetarow[thetaindex]
                            phi = xData[phiindex]
                            theta = yData[thetaindex]

                            x, y, z = transform_val(phi, theta, intensity)

                            corrected_x_data.append(x)
                            corrected_y_data.append(y)
                            corrected_z_data.append(z)


            # Plot the surface.
            ax1 = fig.gca(projection='3d')
            surf = ax1.plot_trisurf(xData, yData, zData, cmap=cm.viridis,
                                   linewidth=0, antialiased=False)



def plot_everything(means_filename, stdev_filename):

        #set up a figure
        fig = plt.figure(figsize=plt.figaspect(0.3))

        ax1 = fig.add_subplot(1, 2, 1, projection='3d')

        plot_surface_file(ax1, means_filename)

        # Title
        # Placement 0, 0 would be the bottom left, 1, 1 would be the top right.
        ax1.text2D(0.05, 0.95, "Average Value", transform=ax1.transAxes)

        # Tweaking display region and labels
        ax1.set_xlim(0, 180)
        ax1.set_ylim(0, 180)
        #ax1.set_xlabel('θ (base, degrees)', color='crimson')
        #ax1.set_ylabel('ɸ (arm, degrees)', color='crimson')
        ax1.set_zlabel('⚡ (Volts)', color='crimson')

        # Customize the z axis.
        ax1.set_zlim(0, 5)
        ax1.zaxis.set_major_locator(LinearLocator(10))
        ax1.zaxis.set_major_formatter(FormatStrFormatter('%.02f'))

        # Add a color bar which maps values to colors.
        fig.colorbar(surf, shrink=0.5, aspect=5, ax=ax1)


        #Second graph

        ax2 = fig.add_subplot(1, 2, 2, projection='3d')

        plot_surface_file(ax2, stdev_filename)

        # Title
        # Placement 0, 0 would be the bottom left, 1, 1 would be the top right.
        ax2.text2D(0.05, 0.95, "Standard Deviation", transform=ax2.transAxes)

        # Tweaking display region and labels
        ax2.set_xlim(0, 180)
        ax2.set_ylim(0, 180)
        #ax2.set_xlabel('θ (base, degrees)', color='crimson')
        #ax2.set_ylabel('ɸ (arm, degrees)', color='crimson')
        ax2.set_zlabel('⚡ (Volts)', color='crimson')


        # Customize the z axis.
        ax2.set_zlim(0, 5)
        ax2.zaxis.set_major_locator(LinearLocator(10))
        ax2.zaxis.set_major_formatter(FormatStrFormatter('%.02f'))

        # Add a color bar which maps values to colors.
        fig.colorbar(surf, shrink=0.5, aspect=5, ax=ax2)

        plt.show()

plot_everything("farfield_12_means.csv", "farfield_12_stdevs.csv")


