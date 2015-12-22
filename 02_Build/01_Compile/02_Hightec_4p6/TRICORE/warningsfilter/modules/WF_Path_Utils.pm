# ***************************************************************************
#                            WF_Path_Utils.pm  
#                        Methodes for path editing
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
# date 		= 02.02.2004

use warnings;

# Todo: this function
# arguments are:
# path (a string)
# system (or $^O if not specified)
# it returns a list
# exemple:
# /usr/bin/ -> [ '/', 'usr/', 'bin/']
# ./lib/modules -> ['./', 'lib/', 'modules/]

# TODO...


# Now, we got only this function:
# argunment is a string;
# it returns the main directory, if found.
# the first argunment of the previous function.
sub Get_Main_Dir
{
    my ($fullpath) = @_;
    $_ = $fullpath;
    if (m/^([\w\.\:\s]*[\/\\])/)
    {
        return $1;
    }
    else
    {
        return undef;
    }
}

# To keep perl happy!
1;
