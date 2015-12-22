# ***************************************************************************
#                            WF_Analyse_Warnings.pl
#                  This script analyses the warnings found
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


# version 	= 1.003
# date 		= 02.02.2007

# Packages required by this script:
    # For debugging
	use warnings;

    # Methods for Gcc warning's analysis
    use WF_Gcc_Warning_Analyser;

# Variables created here:
    # For the Gcc warnings
    # This array of array contains all the warnings found,
    # Like the @All_Warnings table,
    # but with analysis
    #@All_Warnings_Analysed;
        # [$i][0]  = Full text
        # [$i][1]  = Position in the input file
        # [$i][2]  = Occurences
        # - The following cells are provided by the Gcc W analyser -
        # [$i][3]  = Location
        # [$i][4]  =    Full Path
        # [$i][5]  =        Path
        # [$i][6]  =        Base
        # [$i][7]  =        Extension
        # [$i][8]  =    Line
        # [$i][9]  =    Column
        # [$i][10] = Description
        # [$i][11] =    Type
        # [$i][12] =    Variable
        # [$i][13] =    Argument


    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Analysing the warnings\n";
    }

    # We are proceeding all the previous table
    for my $i (0 .. $#All_Warnings)
    {
        # I know, this could be quicker.
        # But more difficult to understand....
        my @tmp_array_line  = @{$All_Warnings[$i]};

        push @tmp_array_line, Analyse_Warning ($tmp_array_line[0], $WF_Ignore_Case, $WF_Verbosity);

        # Add the line to the array
        push @All_Warnings_Analysed , [@tmp_array_line];

        # debug information
        if ($WF_Verbosity ge 3)
        {
            if ($WF_Verbosity ge 5)
            {
                print STDOUT "\n";
                print STDOUT "Full text  : $tmp_array_line[0]\n";
                print STDOUT "Position   : $tmp_array_line[1]\n";
                print STDOUT "Occurences : $tmp_array_line[2]\n";
                print STDOUT "Location   : $tmp_array_line[3]\n";
                print STDOUT "Full Path  : $tmp_array_line[4]\n";
                print STDOUT "Path       : $tmp_array_line[5]\n";
                print STDOUT "Base       : $tmp_array_line[6]\n";
                print STDOUT "Extension  : $tmp_array_line[7]\n";
                print STDOUT "Line       : $tmp_array_line[8]\n";
                print STDOUT "Column     : ".
                    (($tmp_array_line[9]) ? $tmp_array_line[9]:'').
                    "\n";
                print STDOUT "Description: $tmp_array_line[10]\n";
                print STDOUT "Type       : $tmp_array_line[11]\n";
                print STDOUT "Variable   : ".
                    (($tmp_array_line[12]) ? $tmp_array_line[12]:'').
                    "\n";
                print STDOUT "Argument   : ".
                    (($tmp_array_line[13]) ? $tmp_array_line[13]:'').
                    "\n";

            }
            else
            {
                print STDOUT ".";
            }
        }
    } #we reached the last index in the main table

    if ($WF_Verbosity ge 3)
    {
        print STDOUT "\n";
    }

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "I analysed the ".
                     ($#All_Warnings_Analysed + 1).
                     " different warnings\n";
    }

# If we don't need the first table any more, let'us delete it:
undef (@All_Warnings);

# We are successfull!
# return 1...
1;
