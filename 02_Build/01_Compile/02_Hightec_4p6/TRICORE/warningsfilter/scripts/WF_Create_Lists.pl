# ***************************************************************************
#                            WF_Create_Lists.pl
#                   This script generates the list of warnings
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

# version 	= 1.001
# date 		= 02.05.2005

# It requires the followings librairies:
    # For debugging
    use warnings;

	# Methods for list generation
	use WF_Lists;

	# Listing the whole warnings found
	if ($WF_Verbosity ge 1)
    {
        print STDOUT "Saving the list of Warnings\n";
    }

    Store_Warnings ("Warnings.lst","$WF_Out_Dir".'Lists/', 1, $WF_Verbosity);

	# Listing the categories
	if ($WF_Verbosity ge 1)
    {
        print STDOUT "Saving the list of Categories\n";
    }

    Store_Categories ("categories.lst","$WF_Out_Dir".'Lists/', 1, $WF_Verbosity);

	# Listing the Files
	if ($WF_Verbosity ge 1)
    {
        print STDOUT "Saving the list of Files\n";
    }

    Store_Files ("files.lst","$WF_Out_Dir".'Lists/', 1, $WF_Verbosity);

	# Listing the Directories
	if ($WF_Verbosity ge 1)
    {
        print STDOUT "Saving the list of Directories\n";
    }

    Store_Dir ("dir.lst","$WF_Out_Dir".'Lists/', 1, $WF_Verbosity);

# return 1...
1;
