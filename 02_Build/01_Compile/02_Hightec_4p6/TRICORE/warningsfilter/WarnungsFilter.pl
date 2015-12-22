#!/usr/bin/perl
# the first line is magic of the Unix system,
# Not for the MS Windows ones... Sorry

# ***************************************************************************
#           WarnungsFilter  -  Filter for the Warnings of the Gcc Compiler
#                             -------------------
#    begin                : 20 Dec 2003
#    copyright            : (C) 2003 - 2007 by HighTec EDV-Systeme GmbH

# ***************************************************************************
#
# ***************************************************************************
# *                                                                         *
# *   This program is free software; you can redistribute it and/or modify  *
# *   it under the terms of the GNU General Public License as published by  *
# *   the Free Software Foundation; either version 2 of the License, or     *
# *   (at your option) any later version.                                   *
# *                                                                         *
# ***************************************************************************


# First let us get the arguments of this program
# These arguments will be process in the configuration script.
    @WF_line_args = @ARGV;


$WF_version     	= '3';
$WF_release     	= '017';
$WF_date_of_issue 	= '15.02.2007';

# Reminder : how to find out all the perl's libraries: (Unix system)
# find `perl -e 'print "@INC"'` -name '*.pm' -print

# We need at least the perk interpreter 5.8.0
	require 5.8.0;

# Standard packages required by this script
    # for easier debugging (invisible for the final user)
    # equivalent to the option "-w" in command line
	use warnings;

    # Package that get the perl script's original directory
    use FindBin;

    # Packages for hostame information
    #use Sys::Hostname;
    #$host = hostname;

    # Add subdirectories for the script's modules/subprograms
	use lib "$FindBin::Bin/modules";
	use lib "$FindBin::Bin/scripts";

    # Beginning of the main script
    # This script itself doesn't do anything.
    # it only calls subscripts in order to do what we want
    # This structure is clearer than a big complicated script!

    # First step: reading configuration from the configuration file
    # and or command options
    require 'WF_Configuration.pl';

    # Second step: reading the log file, in order to find out all the Gcc warnings
    require 'WF_Get_Warnings.pl';
    # Now we have all the data what we need to process

    # OK, now we did read all the warning,
    # so let's sort them into different categories...
    require 'WF_Analyse_Warnings.pl';

    # The warnings are sorted
    require 'WF_Sort_Warnings.pl';

    # Generating the text lists
    require 'WF_Create_Lists.pl';

    # Generating the HTML files
    require 'WF_Create_Html.pl';

    print STDOUT "\nEnjoy Warningsfilter!\n";

exit 0;
