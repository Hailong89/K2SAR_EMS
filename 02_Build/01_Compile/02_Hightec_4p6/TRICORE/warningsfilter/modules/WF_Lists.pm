# ***************************************************************************
#                                WF_Lists.pm  
#                      Methodes for storing list into a file
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
# date 		= 15.02.2007

# Required packages
    # For debugging
    use warnings;

    # Methods for statistics
    use WF_Statistics;


# arguments are
# the file
# the path
# the relative level according to the out directory
# the verbosity

sub Store_Warnings
{
    my ($file, $path, $relative_level, $verbosity) = @_;

    my @tmp_list_of_warnings = Stat_Total_Warnings();

    # Print informations
    if ($verbosity ge 2)
    {
        print STDOUT "Generating the file $path$file\n";
    }

	if (not (open (OUT, '>', "$path$file" )))
    {
        print STDERR die "ERROR: I can\'t open the file $path$file for writing\n";
        exit 1;
    }

    foreach my $warning (@tmp_list_of_warnings)
    {
        print OUT "$warning";
    }

    if (not(close (OUT)))
    {
        print STDERR "ERROR: I can\'t close the file $path$file\n";
        exit 1;
    }
}


# arguments are
# the file
# the path
# the relative level according to the out directory
# the verbosity

sub Store_Categories
{
    my ($file, $path, $relative_level, $verbosity) = @_;

    my @tmp_list_of_categories = Stat_Total_Categories();

    # Print informations
    if ($verbosity ge 2)
    {
        print STDOUT "Generating the file $path$file\n";
    }

	if (not (open (OUT, '>', "$path$file" )))
    {
        print STDERR die "ERROR: I can\'t open the file $path$file for writing\n";
        exit 1;
    }

    foreach my $category (@tmp_list_of_categories)
    {
        print OUT "$category\n";
    }

    if (not(close (OUT)))
    {
        print STDERR "ERROR: I can\'t close the file $path$file\n";
        exit 1;
    }
}

# arguments are
# the file
# the path
# the relative level according to the out directory
# the verbosity

sub Store_Files
{
    my ($file, $path, $relative_level, $verbosity) = @_;

    # Print informations
    if ($verbosity ge 2)
    {
        print STDOUT "Generating the file $path$file\n";
    }

	if (not (open (OUT, '>', "$path$file" )))
    {
    	print STDERR die "ERROR: I can\'t open the file $path$file for writing\n";
        exit 1;
    }

    my @tmp_list_of_files = Stat_Total_Files();

    foreach my $tmp_file (@tmp_list_of_files)
    {
		print OUT "$tmp_file\n"
    }

    if (not(close (OUT)))
    {
        print STDERR "ERROR: I can\'t close the file $path$file\n";
        exit 1;
    }
}


# arguments are
# the file
# the path
# the relative level according to the out directory
# the verbosity

sub Store_Dir
{
    my ($file, $path, $relative_level, $verbosity) = @_;

    my @tmp_list_of_dir = Stat_Total_Dir();

    # Print informations
    if ($verbosity ge 2)
    {
        print STDOUT "Generating the file $path$file\n";
    }

	if (not (open (OUT, '>', "$path$file" )))
    {
        print STDERR die "ERROR: I can\'t open the file $path$file for writing\n";
        exit 1;
    }

    foreach my $dir (@tmp_list_of_dir)
    {
        print OUT "$dir\n";
    }

    if (not(close (OUT)))
    {
        print STDERR "ERROR: I can\'t close the file $path$file\n";
        exit 1;
    }
}


# to keep perl happy!
1