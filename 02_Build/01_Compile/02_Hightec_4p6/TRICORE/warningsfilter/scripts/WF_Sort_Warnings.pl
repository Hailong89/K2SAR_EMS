# ***************************************************************************
#                               WF_Sort_Warnings.pl
#                  This script sorts the warnings found
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

    # For debugging
	use warnings;

    # Utilities for filename editing
    use File::Basename;
    # Path utilities
    # To get the main directory...
    use WF_Path_Utils;

# Variables created here:
    # For the warning's categories
    # A hash of pointers to a list of warning
    #%All_Categories;
    # list of categories
    #@List_Of_Categories;
    # reverted index to the position in the list
    #%Index_Of_Categories;

    # For the files
    # A table of pointers to a list of warnings
    #%All_Files;
    # The list of files
    #@List_Of_Files;
    # reverted index to the position in the list
    #%Index_Of_Files;

    # For the directories
    # A hash of pointers to a hash of files (isn't it clear?)
    #%All_Dir;
    # the list of directories (path)
    #@List_Of_Dir;
    # reverted index to the position in the list
    #%Index_Of_Dir;

    # For the main directories
    # like the previous, but for main directories
    #%All_Main_Dir;
    #@List_Of_Main_Dir;
    # reverted index to the position in the list
    #%Index_Of_Main_Dir;

    # For the extensions
    # like the previous
    #%All_Ext;
    #@List_Of_Ext;
    # reverted index to the position in the list
    #%Index_Of_Ext;

    # First, the warnings are analysed

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Sorting the warnings by categories and by files\n";
    }

    # Let us proceeding...
   	for my $i (0 .. $#All_Warnings_Analysed)
    {
        # Local copy of the line to accelerate the search
        my @tmp_array_line  = @{$All_Warnings_Analysed[$i]};
        my $tmp_category    = $tmp_array_line[11];
        my $tmp_full_path   = $tmp_array_line[4];
        my $tmp_path        = $tmp_array_line[5];
        my $tmp_main_dir    = Get_Main_Dir ($tmp_path);

        if ($WF_Verbosity ge 3)
        {
            print STDOUT ".";
        }

    # Sorting by warning's category
        if ($WF_Verbosity ge 3)
        {
            # Is this category in the list?
            if (not ($All_Categories{$tmp_category}))
            {   # no, it isn't
                # We will add it:
                print STDOUT "+C";
            }
        }
        # In all the cases, we add the index somewhere...
        push @{$All_Categories{$tmp_category}}, $i;

    # Sorting by file
        if ($WF_Verbosity ge 3)
        {
            # Is this file in the list?
            if (not ($All_Files{$tmp_full_path}))
            {   # no, it isn't
                # We will add it:
                print STDOUT "+F";
            }
        }
        # In all the cases, we add the index somewhere...
        push @{$All_Files{$tmp_full_path}}, $i;
    }

    if ($WF_Verbosity ge 3)
    {
        print STDOUT "\n";
    }


    if ($WF_Verbosity ge 2)
    {
        print STDOUT "Sorting the categories and the files\n";
    }

    # sorting the list of categories by alphabetical order
    @List_Of_Categories = sort(keys %All_Categories);

    # Idem for the files, but it's more complicated:
    # We want to sort by name, and the list contains full path...
    # no need to sort now...
    @List_Of_Files = keys(%All_Files);

    # first, getting an unique name by reversing the path and the name:
    #%Reverse_Name_Index_Of_File;
	for my $full_path (@List_Of_Files)
	{
		my ($base, $path, undef) = fileparse($full_path);
        # the hash look like this
        # test.c/home/toto/ -> /home/toto/test.c
        # so we can sort it,
        # because the file's name is before the path!
        $Reverse_Name_Index_Of_File{"$base$path"}
            = $full_path;
    }
    # now sorting, according to the file base name,
    # then to the directory, if there are more files with the same base name
    @List_Of_Files = sort(keys(%Reverse_Name_Index_Of_File));

    # Yes, but the list does not contains the full path:
    # we can regenerate it from the temporary hash:
	for my $i (0 .. $#List_Of_Files)
    {
        # Simple, isn't it?
        $List_Of_Files[$i] =
             $Reverse_Name_Index_Of_File{$List_Of_Files[$i]};
    }

    # Now the list is ordered...
    # freeing memory
    undef(%Reverse_Name_Index_Of_File);

    # Now getting the directories
    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Sorting the files by (main) directories\n".
						"and by extension...\n";
    }

    # Sorting the file by directory and extension
    # This instruction should take the elements in the order!
	for my $tmp_full_path (@List_Of_Files)
	{
		my ($tmp_base, $tmp_path, $tmp_ext) = fileparse($tmp_full_path, qr{\..*});
        my $tmp_main_dir = Get_Main_Dir ($tmp_path);

        if ($WF_Verbosity ge 3)
        {
            print STDOUT ".";

            #if ($WF_Verbosity ge 3)
            #{
                # Is this directory in the list?
                if (not ($All_Dir{$tmp_path}))
                {   # no, it isn't
                    # We will add it:
                    print STDOUT "+D";
                }
                # Is this main directory in the list?
                if (not ($All_Main_Dir{$tmp_main_dir}))
                {   # no, it isn't
                    # We will add it:
                    print STDOUT "+M";
                }
                # Is this extension in the list?
                if (not ($All_Ext{$tmp_ext}))
                {   # no, it isn't
                    # We will add it:
                    print STDOUT "+X";
                }

            #}
        }

        # In all the cases, we are adding this file somewhere:
        # In the directory
        push @{$All_Dir{$tmp_path}}, $tmp_full_path;
        # In the main directory
        push @{$All_Main_Dir{$tmp_main_dir}}, $tmp_full_path;
        # In the extension's list
        push @{$All_Ext{$tmp_ext}}, $tmp_full_path;

    } # We sorted all in the list of files

    if ($WF_Verbosity ge 3)
    {
        print STDOUT "\n";
    }

    if ($WF_Verbosity ge 2)
    {
        print STDOUT "Sorting the directories\n";
    }

    @List_Of_Dir        = sort(keys %All_Dir);
    @List_Of_Main_Dir   = sort(keys %All_Main_Dir);
    @List_Of_Ext        = sort(keys %All_Ext);

    ################################################################
    # creating the reversed indexes

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Creating the reversed indexes\n";
    }

    if ($WF_Verbosity ge 2)
    {
        print STDOUT "For the main directories\n";
    }

    for my $i (0 .. $#List_Of_Main_Dir)
    {
        $Index_Of_Main_Dir{$List_Of_Main_Dir[$i]} = $i;
        if ($WF_Verbosity ge 3)
        {
            print STDOUT ".";
        }
    }

    if ($WF_Verbosity ge 3)
    {
        print STDOUT "\n";
    }

    if ($WF_Verbosity ge 2)
    {
        print STDOUT "For the directories\n";
    }

    for my $i (0 .. $#List_Of_Dir)
    {
        $Index_Of_Dir{$List_Of_Dir[$i]} = $i;
        if ($WF_Verbosity ge 3)
        {
            print STDOUT ".";
        }
    }

    if ($WF_Verbosity ge 2)
    {
        print STDOUT "For the extensions\n";
    }

    for my $i (0 .. $#List_Of_Ext)
    {
        $Index_Of_Ext{$List_Of_Ext[$i]} = $i;
        if ($WF_Verbosity ge 3)
        {
            print STDOUT ".";
        }
    }

    if ($WF_Verbosity ge 3)
    {
        print STDOUT "\n";
    }

    if ($WF_Verbosity ge 2)
    {
        print STDOUT "For the categories\n";
    }

    for my $i (0 .. $#List_Of_Categories)
    {
        $Index_Of_Categories{$List_Of_Categories[$i]} = $i;
        if ($WF_Verbosity ge 3)
        {
            print STDOUT ".";
        }
    }

    if ($WF_Verbosity ge 3)
    {
        print STDOUT "\n";
    }

    if ($WF_Verbosity ge 2)
    {
        print STDOUT "For the files\n";
    }

    for my $i (0 .. $#List_Of_Files)
    {
        $Index_Of_Files{$List_Of_Files[$i]} = $i;
        if ($WF_Verbosity ge 3)
        {
            print STDOUT ".";
        }
    }

    if ($WF_Verbosity ge 3)
    {
        print STDOUT "\n";
    }

    if ($WF_Verbosity ge 2)
    {
        print STDOUT
        "I found ".
        ($#List_Of_Categories + 1).
        " different categories of warnings \n".
        "in ".
        ($#List_Of_Files + 1).
        " different files\n".
		"(of ".($#List_Of_Ext + 1)." types)\n".
        "of the ".
        ($#List_Of_Dir + 1).
        " different directories\n".
        "(Of the ".
        ($#List_Of_Main_Dir + 1).
        " main directories)\n";
    }

# This wonderfull script is perfect...
# it returns 1
1;
