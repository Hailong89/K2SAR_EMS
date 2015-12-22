# ***************************************************************************
#                            WF_Get_Warnings.pl
#             This script finds out the warnings from the input file
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


# version 	= 1.004
# date 		= 15.02.2007

# Packages required by this script:
    # for debugging:
    use warnings;

# A Gcc warning is reconizable by this shema:
# [Position]: warning: [description]
# /^.*:\swarning:\s.*$/

# Variables created here

    # For the Gcc warnings
    # This array of array contains all the warnings found,
    #@All_Warnings;
        # $All_Warnings[$i][0] = Full text
        # $All_Warnings[$i][1] = Position in the input file
        # $All_Warnings[$i][2] = Occurences

    # This hash return the position in the array
    # for a given warning (full text)
    #%All_Warnings_Index;

    # For the others warnings
    # The definition is the same, but for Non-Gcc Warnings
    #@All_Other_Warnings;
    #%All_Other_Warnings_index;

# Let's proceeding!


# Open the input file
if ($WF_Verbosity ge 1)
{
    print STDOUT "Opening the input file $WF_Input_File for reading\n";
}

if (open(GCC_OUT, '<', $WF_Input_File))
{
    # We need the intermediate following variables to proceed:
    # The current position in the input file
    my $position    =   0;  #intial value
    # used to store the current line
    my $current_line=   '';

    # We should begin our search at the beginning of the compiler's process
    # Will be done in the future versions...
    # Search for the begin of the compiler's tool chain
    #   while (<GCC_OUT>)
    #    {
    #        if (/.*"START COMPILER".*/)
    #        {
    #        }
    #   }


    if ($WF_Verbosity ge 2)
    {
        print STDOUT "Find out all the warnings and creating the main index\n";
    }

    # Analysis loop
    while (<GCC_OUT>)
    {
        $position++;
        $current_line   = $_;
        # The caracteristic of the gcc warning is the following:
        # [relative path]:[location in the file (L:C)]: warning: [text of the warning]
        # avcodec.h:204: warning: `Motion_Est_QTab' defined but not used

        # find out if the current line matches a gcc warning
        if (m/:\swarning:\s/i)
        {
            # Is this warning already in the index?
            if ($All_Warnings_Index{$current_line})
            {
                # yes, it is
                if ($WF_Verbosity ge 3)
                {
                    print STDOUT "+";
                }

                # Incrementing iteration's the counter
                $All_Warnings
                    [$All_Warnings_Index{$current_line}][2]++;
            }
            else
            {
                # no, it isn't
                if ($WF_Verbosity ge 3)
                {
                    print STDOUT ".";
                }

                # Adding the warning into the database
                push @All_Warnings ,
                    [
                        $current_line,  # warning's full text
                        $position,      # Position of the first warning found
                        1,              # count of the warning's occurence
                    ];

                # Adding the new warning into the index,
                # The last position at the moment
                $All_Warnings_Index{$current_line} =
                    $#All_Warnings;
            }
        } # end of "I found a gcc warning!"

        # In order to test the tool,
        # we are searching for the word "warning", ignoring the case
        # or the position in the line.
        # This is provided in order to verify if all
        # the "non Gcc-Warnings" are really what we are waiting for
        elsif (m/warning/i)
        {
            # Is this warning already in the index?
            if ($All_Other_Warnings_Index{$current_line})
            {
                # yes, it is
                if ($WF_Verbosity ge 3)
                {
                    print STDOUT "+";
                }

                # Incrementing iteration's the counter
                $All_Other_Warnings
                    [$All_Other_Warnings_Index{$current_line}][2]++;
            }
            else
            {
                # no, it isn't
                if ($WF_Verbosity ge 3)
                {
                    print STDOUT "X"; # X as unknown...
                }

                # Adding the warning into the database
                push @All_Other_Warnings ,
                    [
                        $current_line,  # warning's full text
                        $position,      # Position of the first warning found
                        1,              # count of the warning's occurence
                    ];

                # Adding the new warning into the index,
                # The last position at the moment
                $All_Other_Warnings_Index{$current_line} =
                    $#All_Other_Warnings;
            }
        }   # End of "i found a non Gcc warning"
    } # EOF of the log file found!

    if ($WF_Verbosity ge 3)
    {
        print STDOUT "\n";
    }

    if (not (close (GCC_OUT)))
    {
        print STDERR "ERROR: I can\'t close the input file $WF_Input_File\n" ;
        exit 1;
    }

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Close the log file $WF_Input_File\n";

        if ($WF_Verbosity ge 2)
        {
            print STDOUT
                "I found ".
                ($#All_Warnings + 1).
                " different Gcc warnings and ".
                ($#All_Other_Warnings + 1).
                " different other warnings\n";
        }
    }
}
else    # error during the openning: exit
{
    print STDERR "ERROR: I can\'t open the specified input file $WF_Input_File\n" ;
    exit 1;
}

# Like the scipt was successfull (I hope),
# It return 1 to the calling's script
1;
