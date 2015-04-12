# Loading data - first read all data using the readLines function, then use
# a regular expression to select only the index of those which fall into the
# dates we want
all_data = readLines("./proj1/household_power_consumption.txt")
wanted_data_index = grep("^1/2/2007.*|^2/2/2007.*", all_data)

# Use read.table function using the index calculated above only for dates wanted
wanted_data = read.table(text = all_data[c(1, wanted_data_index)], sep=";", header=TRUE, na.strings = "?")

# convert time and date
wanted_data$Time <- strptime(paste(wanted_data$Date, wanted_data$Time), "%d/%m/%Y %H:%M:%S")
wanted_data$Date <- as.Date(wanted_data$Date, "%d/%m/%Y")

