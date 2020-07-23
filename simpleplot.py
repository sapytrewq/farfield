import numpy as np
import matplotlib.pyplot as plt
import csvinterface
import math

def degtorad(val):
    return val*math.pi/180

def translatecoords(angle, intensity):
    xval = intensity * math.cos(degtorad(angle))
    yval = intensity * math.sin(degtorad(angle))
    return xval, yval

def simple_plot(means_filename, stdev_filename):
        #graph 1

        baseAngle, armAngle, intensitiesMean = csvinterface.read_csv(means_filename)
        baseAngle, armAngle, intensitiesStdev = csvinterface.read_csv(means_filename)

        intensityMean0 = intensitiesMean[0]
        intensityMean90 = intensitiesMean[1]
        intensityStdev0 = intensitiesStdev[0]
        intensityStdev90 = intensitiesStdev[1]

        directivity_mean_0_x = []
        directivity_mean_0_y = []
        directivity_mean_90_x = []
        directivity_mean_90_y = []

        for angle, intensity in zip(armAngle, intensityMean0):
            x,y = translatecoords(angle, intensity)
            directivity_mean_0_x.append(x)
            directivity_mean_0_y.append(y)

        for angle, intensity in zip(armAngle, intensityMean90):
            x,y = translatecoords(angle, intensity)
            directivity_mean_90_x.append(x)
            directivity_mean_90_y.append(y)

        snr0 = []
        snr90 = []

        for val,err in zip(intensityMean0, intensityStdev0):
            snr0.append(20*math.log10(val/err))

        for val,err in zip(intensityMean90, intensityStdev90):
            snr90.append(20*math.log10(val/err))

        plt.subplot(1, 2, 1)
        plt.plot(directivity_mean_0_x, directivity_mean_0_y, '.-')
        plt.plot(directivity_mean_90_x, directivity_mean_90_y, '.-')
        plt.title('Mean Directivity')
        plt.legend( [ 'Base: 0 Deg', 'Base: 90 Deg'] )

        plt.subplot(1, 2, 2)
        plt.plot(armAngle, snr0, '.-')
        plt.plot(armAngle, snr90, '.-')
        plt.title('Signal to Noise Ratio')
        plt.xlabel('Arm Angle')
        plt.ylabel('SNR (dB, approx from σ)')
        plt.legend( [ 'Base: 0 Deg', 'Base: 90 Deg'] )
        plt.show()

def one_axis_plot(means_filename, stdev_filename):

        baseAngle, armAngle, intensityMean = csvinterface.read_csv(means_filename)
        baseAngle, armAngle, intensityStdev = csvinterface.read_csv(stdev_filename)

        intensityMean = intensityMean[0]
        intensityStdev = intensityStdev[0]


        directivity_mean_x = []
        directivity_mean_y = []

        for angle, intensity in zip(armAngle, intensityMean):
            x, y = translatecoords(angle, intensity)
            directivity_mean_x.append(x)
            directivity_mean_y.append(y)

        snr = []

        for val, err in zip(intensityMean, intensityStdev):
            snr.append(20*math.log10(val/err))

        plt.subplot(1, 2, 1)
        plt.plot(directivity_mean_x, directivity_mean_y, '.-')
        plt.title('Mean Directivity')
        plt.legend( [ 'Base: 0 Deg'] )

        plt.subplot(1, 2, 2)
        plt.plot(armAngle, snr, '.-')
        plt.title('Signal to Noise Ratio')
        plt.xlabel('Arm Angle')
        plt.ylabel('SNR (dB, approx from σ)')
        plt.legend( [ 'Base: 0 Deg'] )
        plt.show()

#one_axis_plot("farfield_14_means.csv", "farfield_14_stdevs.csv")
