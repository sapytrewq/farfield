# Simple library to write to and read from a CSV file while doing simple statistics.
# Intended for avicena farfield scanner

# data stored internally as list of list of lists

# [ theta 1: [phi 1: [meas1, meas2, ...]
#   theta 2: [phi 2: [meas1, meas2, ...]
#   ...]

import os
import statistics
import pandas as pd
import json
import numpy as np

class CSVWriter:
    def __init__(self, cols, rows):
        ''' rows: list of rows (each for some phi) to expect
            cols: list of cols (each for some theta) to expect
        '''

        self.data = []

        self.rows = rows
        self.cols = cols

        self.means_filename = ""
        self.stdev_filename = ""

        for colindex in range(len(cols)):
            self.data.append([])
            for rowindex in range(len(rows)):
                self.data[colindex].append([])


    def add_point(self, colval, rowval, value):
        rowindex = self.rows.index(rowval)
        colindex = self.cols.index(colval)
        self.data[colindex][rowindex].append(value)

    def stdev_list(self, inlist):
        # base case: if no sublists, then return stdev
        # otherwise, call stdev_list on each el, and return in list


        if type(inlist[0]) != list:
            if len(inlist) > 1: return statistics.stdev(inlist)
            else: return 0
        else:
            returnlist = []
            for el in inlist: returnlist.append(self.stdev_list(el))
            return returnlist

    def mean_list(self, inlist):
        # base case: if no sublists, then return stdev
        # otherwise, call stdev_list on each el, and return in list

        if type(inlist[0]) != list:
            return statistics.mean(inlist)
        else:
            returnlist = []
            for el in inlist: returnlist.append(self.mean_list(el))
            return returnlist

    def write_csv(self, filename, datalist, cols, rows):
        csvfile = open(filename, "w")

        # first - writing header
        csvfile.write(",")
        for el in rows:
            csvfile.write(str(el) + ",")
        csvfile.write("\n")

        # next - writing data, and row labels
        for i in range(len(cols)):
            # writing row label
            csvfile.write(str(cols[i])+",")
            #writing row
            col = datalist[i]
            for el in col:
                csvfile.write(str(el)+",")
            csvfile.write("\n")

        # finally, closing file
        csvfile.close()


    def save_csv(self):
        ''' saves logged data in files 'farfield_n_means.csv' and 'farfield_n_stdevs.csv'
            n is lowest integer such that the filenames do not already exist
        '''

        def construct_filenames(n):
            path = os.getcwd()
            means_filename = path+"/farfield_"+str(filenumber)+"_means.csv"
            stdev_filename = path+"/farfield_"+str(filenumber)+"_stdevs.csv"
            return means_filename,stdev_filename

        filenumber = 0
        means_filename, stdev_filename = construct_filenames(filenumber)

        while (os.path.exists(means_filename) or os.path.exists(stdev_filename)):
            filenumber += 1

            means_filename, stdev_filename = construct_filenames(filenumber)

        self.means_filename = means_filename
        self.stdev_filename = stdev_filename

        print("saving to:\n",means_filename+"\n",stdev_filename)

        # saving the means file

        mean_list = self.mean_list(self.data)
        self.write_csv(means_filename, mean_list, self.cols, self.rows)

        # saving the stdevs file

        stdev_list = self.stdev_list(self.data)
        self.write_csv(stdev_filename, stdev_list, self.cols, self.rows)

        return self.means_filename, self.stdev_filename

    def write_json(self, means_filename = "", stdev_filename = ""):
        if means_filename == "": means_filename = self.means_filename
        if stdev_filename == "": stdev_filename = self.stdev_filename

        # means
        means_csv = pd.read_csv(means_filename)
        means_json_string = means_csv.to_json()
        print("means string",means_json_string)
        # stdev
        stdev_csv = pd.read_csv(stdev_filename)
        stdev_json_string = stdev_csv.to_json()
        print("stdev string",stdev_json_string)

        # merging
        means_json_dict = json.loads(means_json_string)
        stdev_json_dict = json.loads(stdev_json_string)

        total_json = { "Mean Intensity" : means_json_dict, "StDev Intensity" : stdev_json_dict, "MetaData" : { "Means Filename" : means_filename, "StDev Filename" : stdev_filename }}
        f = open("bullshit.json", "w")
        json.dump(total_json, f)
        f.close()
        return json.dumps(total_json)




def read_csv(filename):
    ''' returns rows, cols, data '''

    csvfile = open(filename, "r")

    firstline = csvfile.readline()
    colnames = firstline.split("\n")[0].split(",")[1:]
    rownames = []

    data = []

    for line in csvfile.read().split("\n"):
        linedata = line.split(",")
        linedata_float = []
        for el in linedata[1:-1]: linedata_float.append(float(el))
        rownames.append(linedata[0])
        data.append(linedata_float)

    colnames_float = []
    rownames_float = []

    for el in colnames[0:-1]: colnames_float.append(float(el))
    for el in rownames[0:-1]: rownames_float.append(float(el))

    return rownames_float, colnames_float, np.array(data[0:-1])


# Example

#writer = CSVWriter(["row1", "row2"], ["A", "B"])
#writer.add_point("row1", "A", 1)
#writer.add_point("row1", "B", 2)
#writer.add_point("row2", "A", 3)
#writer.add_point("row2", "B", 4)
#writer.save_csv()
#print(writer.write_json())
#print(read_csv("/Users/kaveh/Documents/server_sync/farfield_3_means.csv"))
