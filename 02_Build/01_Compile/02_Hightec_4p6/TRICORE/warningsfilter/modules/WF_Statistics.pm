# ***************************************************************************
#                            WF_Statistics.pm  
#                  Methodes for statistics about the warnings
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


# version 	= 1.005
# date 		= 05.04.2005

use warnings;

###################################################################
#                       Others warnings:
#           thoses functions may change in future revisions...
###################################################################

# returns
# The number of different "other" warnings
sub Stat_Total_Others_Warnings
{
    return ($#All_Other_Warnings + 1);
}

# returns
# The total number of occurences for the "other" warnings
sub Stat_Total_Others_Occurences
{
    my $occurences = 0;

	for my $i (0 .. $#All_Other_Warnings)
    {
        $occurences += $All_Other_Warnings[$i][2];
    }
    return $occurences;
}

###################################################################
#                       Gcc warnings:
#                   We should add new ones later....
###################################################################

# Returns
# The total number of files (scalar context)
# The list of files (list context)
# no argument
sub Stat_Total_Files
{
    if (wantarray)
    {
        return @List_Of_Files;
    }
    else
    {
        return ($#List_Of_Files + 1);
    }
}

# returns
# The total number of categories (scalar context)
# The list of categories (list context)
# no argument
sub Stat_Total_Categories
{
    if (wantarray)
    {
        return @List_Of_Categories;
    }
    else
    {
        return ($#List_Of_Categories + 1);
    }
}

# returns
# The total number of warnings (scalar context)
# The list of warnings (list context)
# no argument
sub Stat_Total_Warnings
{
    if (wantarray)
    {
        return sort(keys(%All_Warnings_Index));
    }
    else
    {
        return ($#All_Warnings_Analysed + 1);
    }
}

# returns
# The total number of main directories (scalar context)
# The list of main directories (list context)
# no argument
sub Stat_Total_Main_Dir
{
    if (wantarray)
    {
        return @List_Of_Main_Dir;
    }
    else
    {
        return ($#List_Of_Main_Dir + 1);
    }
}

# returns
# The total number of directories (scalar context)
# The list of directories (list context)
# no argument
sub Stat_Total_Dir
{
    if (wantarray)
    {
        return @List_Of_Dir;
    }
    else
    {
        return ($#List_Of_Dir + 1);
    }
}

# returns
# The total number of �xtentions (scalar context)
# The list of extension (list context)
# no argument
sub Stat_Total_Ext
{
    if (wantarray)
    {
        return @List_Of_Ext;
    }
    else
    {
        return ($#List_Of_Ext + 1);
    }
}

# Returns
# The number of different files for a given warning's category (scalar context)
# or the list of the files (array context)
# argument is the category
sub Stat_Files_In_Category
{
    my ($category)  =   @_;
    my %tmp_index_of_module;
    my @tmp_list_of_modules;
	my $tmp_full_path;

	foreach my $i (@{$All_Categories{$category}})
    {
    	$tmp_full_path = $All_Warnings_Analysed[$i][4];
        $tmp_index_of_module{$tmp_full_path} = 1;
    }

    @tmp_list_of_modules = sort(keys(%tmp_index_of_module));
    if (wantarray)
    {
        return @tmp_list_of_modules;
    }
    else
    {
        return ($#tmp_list_of_modules + 1);
    }
}

# Returns
# The number of different files for a given main directory (scalar context)
# or the list of the files (array context)
# argument is the main directory
sub Stat_Files_In_Main_Dir
{
# this could be optimized....

    my @tmp_list_of_files = @{$All_Main_Dir{$_[0]}};

    if (wantarray)
    {
        return @tmp_list_of_files;
    }
    else
    {
        return ($#tmp_list_of_files + 1);
    }
}

# Returns
# The number of different files for a given directory (scalar context)
# or the list of the files (array context)
# argument is the directory
sub Stat_Files_In_Dir
{
# this could be optimized....

    my @tmp_list_of_files = @{$All_Dir{$_[0]}};

    if (wantarray)
    {
        return @tmp_list_of_files;
    }
    else
    {
        return ($#tmp_list_of_files + 1);
    }
}

# Returns
# The number of different files for a given extension (scalar context)
# or the list of the files (array context)
# argument is the extension
sub Stat_Files_In_Ext
{
# this could be optimized....

    my @tmp_list_of_files = @{$All_Ext{$_[0]}};

    if (wantarray)
    {
        return @tmp_list_of_files;
    }
    else
    {
        return ($#tmp_list_of_files + 1);
    }
}

# Returns
# The number of differents warnings for a given file (scalar context)
# or the list of the warning's indexes (array context)
# argument is the full path
sub Stat_Warnings_In_File
{
    my ($file)  =   @_;

    if (wantarray)
    {
        return @{$All_Files{$file}};
    }
    else
    {
        return ($#{@{$All_Files{$file}}} + 1);
    }
}

# Returns
# The number of differents warnings for a given main dir (scalar context)
# or the list of the warning's indexes (array context)
# argument is the main dir
sub Stat_Warnings_In_Main_Dir
{
    my @tmp_list_of_files = Stat_Files_In_Main_Dir($_[0]);
	my @tmp_list_of_warnings;

    # We got the files, now concatenate...
    for my $tmp_file (@tmp_list_of_files)
    {
    	# using the previous sub (abstraction's level)
		push
        	@tmp_list_of_warnings,
			Stat_Warnings_In_File ($tmp_file);
    }

    if (wantarray)
    {
        # sorting the keys for a better display
        return sort(@tmp_list_of_warnings);
    }
    else
    {
        return ($#tmp_list_of_warnings + 1);
    }
}

# Returns
# The number of differents warnings for a given dir (scalar context)
# or the list of the warning's indexes (array context)
# argument is the dir
sub Stat_Warnings_In_Dir
{
    my @tmp_list_of_files = Stat_Files_In_Dir($_[0]);
    my @tmp_list_of_warnings;

    # We got the files, now concatenate...
    for my $tmp_file (@tmp_list_of_files)
    {
        # using the previous sub (abstraction's level)
        push
            @tmp_list_of_warnings,
            Stat_Warnings_In_File ($tmp_file);
    }

    if (wantarray)
    {
        # sorting the keys for a better display
        return sort(@tmp_list_of_warnings);
    }
    else
    {
        return ($#tmp_list_of_warnings + 1);
    }
}
# Returns
# The number of differents warnings for a given extension (scalar context)
# or the list of the warning's indexes (array context)
# argument is the extension
sub Stat_Warnings_In_Ext
{
    my @tmp_list_of_files = Stat_Files_In_Ext($_[0]);
    my @tmp_list_of_warnings;

    # We got the files, now concatenate...
    for my $tmp_file (@tmp_list_of_files)
    {
        # using the previous sub (abstraction's level)
        push
            @tmp_list_of_warnings,
            Stat_Warnings_In_File ($tmp_file);
    }

    if (wantarray)
    {
        # sorting the keys for a better display
        return sort(@tmp_list_of_warnings);
    }
    else
    {
        return ($#tmp_list_of_warnings + 1);
    }
}

# return
# The number of differents categories for a given file(scalar context)
# or the list of the warning's categories (array context)
# argument is the file
sub Stat_Categories_In_File
{
    my ($file)  =   @_;
    my %tmp_index_of_categories;
	my $tmp_category;

	foreach my $i (@{$All_Files{$file}})
    {
    	$tmp_category = $All_Warnings_Analysed[$i][11];
        $tmp_index_of_categories{$tmp_category} = 1;
    }
    my @tmp_list_of_categories = sort(keys(%tmp_index_of_categories));

    if (wantarray)
    {
        return @tmp_list_of_categories;
    }
    else
    {
        return ($#tmp_list_of_categories + 1);
    }
}

# return
# The number of differents categories for a given main directory (scalar context)
# or the list of the warning's categories (array context)
# argument is the directory
sub Stat_Categories_In_Main_Dir
{
    my @tmp_list_of_files = Stat_Files_In_Main_Dir($_[0]);
    my %tmp_categories;

    # We got the files, now concatenate...
    for my $tmp_file (@tmp_list_of_files)
    {
    	# Getting the categories of the file
		my @tmp_list_of_categories = Stat_Categories_In_File ($tmp_file);

		for my $tmp_cat (@tmp_list_of_categories)
		{
            # If alreay in the list, no effect.
            # else, added
            $tmp_categories{$tmp_cat} = 1;
        }
    }

    my @result = keys(%tmp_categories);

    if (wantarray)
    {
        # sorting the keys for a better display
        return sort(@result);
    }
    else
    {
        return ($#result + 1);
    }
}

# return
# The number of differents categories for a given directory (scalar context)
# or the list of the warning's categories (array context)
# argument is the directory
sub Stat_Categories_In_Dir
{
    my @tmp_list_of_files = Stat_Files_In_Dir($_[0]);
	my %tmp_categories;

    # We got the files, now concatenate...
    for my $tmp_file (@tmp_list_of_files)
    {
    	# Getting the categories of the file
		my @tmp_list_of_categories = Stat_Categories_In_File ($tmp_file);

		for my $tmp_cat (@tmp_list_of_categories)
		{
            # If alreay in the list, no effect.
            # else, added
            $tmp_categories{$tmp_cat} = 1;
        }
    }

    my @result = keys(%tmp_categories);

    if (wantarray)
    {
        # sorting the keys for a better display
        return sort(@result);
    }
    else
    {
        return ($#result + 1);
    }
}

# return
# The number of differents categories for a given extension (scalar context)
# or the list of the warning's categories (array context)
# argument is the extension
sub Stat_Categories_In_Ext
{
    my @tmp_list_of_files = Stat_Files_In_Ext($_[0]);
	my %tmp_categories;

    # We got the files, now concatenate...
    for my $tmp_file (@tmp_list_of_files)
    {
    	# Getting the categories of the file
		my @tmp_list_of_categories = Stat_Categories_In_File ($tmp_file);

		for my $tmp_cat (@tmp_list_of_categories)
		{
            # If alreay in the list, no effect.
            # else, added
            $tmp_categories{$tmp_cat} = 1;
        }
    }

    my @result = keys(%tmp_categories);

    if (wantarray)
    {
        # sorting the keys for a better display
        return sort(@result);
    }
    else
    {
        return ($#result + 1);
    }
}

# Returns
# The number of differents warnings for a given category (scalar context)
# or the list of the warning's indexes (array context)
# argument is the category
sub Stat_Warnings_In_Category
{
    my $category    =   $_[0];

    if (wantarray)
    {
        # Sorting for a better display
        return sort(@{$All_Categories{$category}});
    }
    else
    {
        return ($#{$All_Categories{$category}} + 1);
    }
}

## Other utilities
# returns the number of occurences for a given category
sub Stat_Occurences_In_Category
{
    my ($category) = @_;
    my $occurences = 0;
    my @tmp_list_of_warnings = Stat_Warnings_In_Category($category);

	foreach my $i (@tmp_list_of_warnings)
    {
		$occurences += $All_Warnings_Analysed[$i][2];
    }
	return $occurences;
}

# returns the total number of warnings occurences
sub Stat_Total_Occurences
{
    my $occurences = 0;

	for my $i (0 .. $#All_Warnings_Analysed)
    {
        $occurences += $All_Warnings_Analysed[$i][2];
    }
    return $occurences;
}

##############################################################
#                 Special functionalities
#
##############################################################

# returns the index of the category
# argument is the warning's category
sub Get_Category_Index
{
    return $Index_Of_Categories{$_[0]};
}

# returns the index of the directory
# argument is the directory
sub Get_Dir_Index
{
    return $Index_Of_Dir{$_[0]};
}

# returns the index of the main directory
# argument is the main directory
sub Get_Main_Dir_Index
{
    return $Index_Of_Main_Dir{$_[0]};
}

# returns the index of the file
# argument is the full path
sub Get_File_Index
{
    return $Index_Of_File{$_[0]};
}

# returns the index of the warning
# argument is the full text (the line in the log file)
sub Get_Warning_Index
{
    return $All_Warnings_Index{$_[0]};
}

# returns the path of the file
# input is the full path
sub Get_Path_Of_File
{
    return $All_Warnings_Analysed
        [${@{All_Files{$_[0]}}}[0]]
        [5];    # path
}

# returns the name of the file
# input is the full path
sub Get_Name_Of_File
{
    return $All_Warnings_Analysed
        [${@{All_Files{$_[0]}}}[0]]
        [6];    # base name
}

# returns the extension of the file
# input is the full path
sub Get_Ext_Of_File
{
    return $All_Warnings_Analysed
        [${@{All_Files{$_[0]}}}[0]]
        [7];    # extension
}

# returns the html file about the specified file
# argument is the full path
sub Get_Html_File_Name
{
    # first the base name of the file
    my $tmp = Get_Name_Of_File($_[0]);

	# Then concatenate with the extension
    $tmp .= Get_Ext_Of_File($_[0]);

    # Concatenate with the directory's number, to avoid overwrite
    $tmp .= '.'.Get_Dir_Index(Get_Path_Of_File($_[0]));

    # Concatenate with .html
    $tmp .= '.html';

	# remove the unallowed characters
	$tmp =~ s/(\<|\>|\\|\/|\?)/_/g;
	 
    return $tmp;

}

# returns the html file about the specified file
# argument is the category
sub Get_Html_Category_Name
{
    # We are using the index to generate an unique name
    return "$Index_Of_Categories{$_[0]}.html";

}

# returns the html file about the specified main dir
# argument is the main_dir
sub Get_Html_Main_Dir_Name
{
    # We are using the index to generate an unique name
    return "$Index_Of_Main_Dir{$_[0]}.html";

}

# returns the html file about the specified directory
# argument is the directory
sub Get_Html_Dir_Name
{
    # We are using the index to generate an unique name
    return "$Index_Of_Dir{$_[0]}.html";

}

# returns the html file about the specified directory
# argument is the directory
sub Get_Html_Ext_Name
{
    # We are directly using the extension, minus the "."
	$_ = $_[0];
	# remove the first "."
	s/^.//;
	# return the result
    return $_.'.html';

}

# to keep perl happy
1;
