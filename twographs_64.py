import numpy as np
import matplotlib.pyplot as plt
import matplotlib.tri as mtri
from matplotlib import cm
from mpl_toolkits.mplot3d import Axes3D
import csvinterface
import math
from mayavi import mlab
#import numpy as np


def to_rad(val):
        return val * math.pi / 180

def transform_val(theta, phi, intensity): # theta phi swapped
        ''' returns x,y,z position of the emission vector
            phi - position of arm
            theta - position of base '''

        xpos = intensity * math.cos(to_rad(phi)) * math.cos(to_rad(theta))
        ypos = intensity * math.cos(to_rad(phi)) * math.sin(to_rad(theta))
        zpos = intensity * math.sin(to_rad(phi))
            
        
        #xpos = math.cos(to_rad(phi)) * math.sin(to_rad(theta))
        #ypos = math.cos(to_rad(phi)) * math.cos(to_rad(theta))
        #zpos = intensity

        return xpos, ypos, zpos

def plot_mayavi(filename):
    
        xData, yData, zData = csvinterface.read_csv(filename)
        
        # assume constant baseline and linear scaling - subtract off mininum value
        
        minval = 10 # max of 5v on ADC, so this is absurdly high
        
        for row in zData:
            for el in row:
                if el < minval: minval = el

        corrected_x_data = []
        corrected_y_data = []
        corrected_z_data = []
        

        for phiindex in range(len(zData)):
                phirow = zData[phiindex]
                for thetaindex in range(len(phirow)):

                        intensity = phirow[thetaindex]
                        phi = xData[phiindex]
                        theta = yData[thetaindex]

                        x, y, z = transform_val(phi, theta, intensity-minval)
                        

                        corrected_x_data.append(x)
                        corrected_y_data.append(y)
                        corrected_z_data.append(z)
                         
        # generating a triangular mesh
            
        num_phipoints = len(zData[0])
        
        # points are theta, phi 0-180
        # first 91 points for theta =    0, next for theta = 1, etc
        
        # connect points in consecutive theta
        
        triangles = []
        
        # there will be as many triangles as there are points - 2
        
        for theta_index in range(len(zData)-1):
            for phi_index in range(len(zData[0])-1):
                # indices will be two consecutive points for theta = base, then one point for theta = base + 1
                first_point_index  = theta_index*num_phipoints + phi_index
                second_point_index = theta_index*num_phipoints + phi_index + 1
                third_point_index  = (theta_index+1)*num_phipoints + phi_index
                fourth_point_index = (theta_index+1)*num_phipoints + phi_index + 1
                                
                triangles.append([first_point_index, second_point_index, third_point_index])
                triangles.append([fourth_point_index, second_point_index, third_point_index])
        
        #mlab.options.backend = 'envisage'
        mlab.figure("Mean Directivity")
        mlab.triangular_mesh(corrected_x_data, corrected_y_data, corrected_z_data, triangles)   
        mlab.axes()
        mlab.show()



def plot_surface_file(ax, filename, scatter = False):
        xData, yData, zData = csvinterface.read_csv(filename)
        
        # assume constant baseline and linear scaling - subtract off mininum value
        
        minval = 10 # max of 5v on ADC, so this is absurdly high
        
        for row in zData:
            for el in row:
                if el < minval: minval = el

        corrected_x_data = []
        corrected_y_data = []
        corrected_z_data = []
        

        for phiindex in range(len(zData)):
                phirow = zData[phiindex]
                for thetaindex in range(len(phirow)):

                        intensity = phirow[thetaindex]
                        phi = xData[phiindex]
                        theta = yData[thetaindex]

                        x, y, z = transform_val(phi, theta, intensity-minval)
                        

                        corrected_x_data.append(x)
                        corrected_y_data.append(y)
                        corrected_z_data.append(z)
                    
        

        if scatter:
            surf = ax.scatter(corrected_x_data, corrected_y_data, corrected_z_data, marker = '.', c = corrected_z_data, s=20, alpha=1)
            #ax.contourf(corrected_x_data, corrected_y_data, corrected_z_data)
        else: 
                        
            # generating a triangular mesh
                
            num_phipoints = len(zData[0])
            
            # points are theta, phi 0-180
            # first 91 points for theta = 0, next for theta = 1, etc
            
            # connect points in consecutive theta
            
            triangles = []
            
            # there will be as many triangles as there are points - 2
            
            for theta_index in range(len(zData)-1):
                for phi_index in range(len(zData[0])-1):
                    # indices will be two consecutive points for theta = base, then one point for theta = base + 1
                    first_point_index  = theta_index*num_phipoints + phi_index
                    second_point_index = theta_index*num_phipoints + phi_index + 1
                    third_point_index  = (theta_index+1)*num_phipoints + phi_index
                    fourth_point_index = (theta_index+1)*num_phipoints + phi_index + 1
                                        
                    triangles.append([first_point_index, second_point_index, third_point_index])
                    triangles.append([fourth_point_index, second_point_index, third_point_index])
            
            triang = mtri.Triangulation(corrected_x_data, corrected_y_data, triangles=triangles)
    
            surf = ax.plot_trisurf(triang, np.array(corrected_z_data), linewidths=0.1, edgecolor = 'black', cmap=cm.viridis, antialiased=True)
            

        return surf, zData


def plot_everything(means_filename, stdev_filename):
    
        print("Plotting in Mayavi")
        plot_mayavi("farfield_3_means.csv")

        print("Plotting in Matplotlib")
        #set up a figure
        fig = plt.figure(figsize=plt.figaspect(0.3))

        ax1 = fig.add_subplot(1, 2, 1, projection='3d')
        ax1 = fig.gca(projection='3d')

        surf, zDataAbs = plot_surface_file(ax1, means_filename)


        # Title
        # Placement 0, 0 would be the bottom left, 1, 1 would be the top right.
        ax1.text2D(0.05, 0.95, "Mean Directivity (Unnormalized)", transform=ax1.transAxes)

        # Tweaking display region and labels
        #ax1.set_xlim(0, 180)
        #ax1.set_ylim(0, 180)
        #ax1.set_xlabel('Base', color='crimson')
        #ax1.set_ylabel('Base', color='crimson')
        #ax1.set_zlabel('Z Magnitude', color='crimson')

        # Customize the z axis.
        #ax1.set_zlim(0, 5)

        #Second graph
        ax2 = fig.add_subplot(1, 2, 2, projection='3d')

        xData2, yData2, zData2 = csvinterface.read_csv(stdev_filename)

        # Dividing by mag
        for i in range(len(zData2)):
            ilist = zData2[i]
            for j in range(len(ilist)):
                jval = ilist[j]
                if jval == 0: zData2[i][j] == 0
                elif zDataAbs[i][j] == 0: zData2[i][j] == 0
                else: zData2[i][j] = 20*math.log10(zDataAbs[i][j]/jval)

        xData2, yData2 = np.meshgrid(yData2, xData2)



        # Plot the surface.
        ax2 = fig.gca(projection='3d')
        surf = ax2.plot_surface(xData2, yData2, zData2, cmap=cm.viridis, linewidths=0.1, edgecolor = 'black', antialiased=True)

        # Title
        # Placement 0, 0 would be the bottom left, 1, 1 would be the top right.
        ax2.text2D(0.05, 0.95, "Signal to Noise Ratio", transform=ax2.transAxes)

        # Tweaking display region and labels
        ax2.set_xlim(0, 180)
        ax2.set_ylim(0, 180)
        ax2.set_ylabel('θ (base, degrees)', color='crimson')
        ax2.set_xlabel('ɸ (arm, degrees)', color='crimson')
        ax2.set_zlabel('SNR (dB, approx from σ)', color='crimson')


        # Customize the z axis.
        #ax2.set_zlim(0, 5)
        #ax2.zaxis.set_major_locator(LinearLocator(10))
        #ax2.zaxis.set_major_formatter(FormatStrFormatter('%.02f'))

        # Add a color bar which maps values to colors.
        fig.colorbar(surf, shrink=0.5, aspect=5, ax=ax2)

        plt.show()

plot_everything("farfield_3_means.csv", "farfield_3_stdevs.csv")


