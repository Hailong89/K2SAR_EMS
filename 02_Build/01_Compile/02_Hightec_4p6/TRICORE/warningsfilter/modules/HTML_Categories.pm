# ***************************************************************************
#                            HTML_Categories.pm  
#        Methodes for building HTML documents about warning's categories
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


# version 	= 1.007
# date 		= 15.02.2007

# Required packages
    # For debugging
    use warnings;
    # For HTML methods
    use WF_Html_Lib;
    # For statistics
    use WF_Statistics;
	# For Help
	use WF_Help_Linker;

# Arguments:
# - the category of the warning (type)
# - The out directory
# - The relative level, regarding the main out directory
# - The verbosity

sub Html_Create_Warnings
{
    my ($category, $path, $relative_level, $verbosity) = @_;

    my $file = Get_Html_Category_Name ($category);

    # Print informations
    if ($verbosity ge 4)
    {
        print STDOUT "\n";
        print STDOUT "Executing Perl Routine Html_Create_Warnings \n";
        print STDOUT "=========================================== \n";
    }

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

    my @tmp_list_of_warnings = Stat_Warnings_In_Category($category);

    print OUT Html_Begin();
    print OUT Html_Begin_Head("$category");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("$category");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();
    print OUT 
        "This type of warning occurs ".
        Stat_Warnings_In_Category($category).
        " time(s) in ".
        Stat_Files_In_Category($category).
        " different file(s)";
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(4);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "File Information",
        'Link to Log-File Position<BR>(Line:Column)',
        "Link to Source-File Position",
        "Description",
        "Occurences"
    );
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();
    foreach my $i (@tmp_list_of_warnings)
    {
        my ($tmp_1, $tmp_2, $tmp_3);

        # Build the position in file (line:col)
        $tmp_1 = $All_Warnings_Analysed[$i][8];

        if ($All_Warnings_Analysed[$i][9])
        {
            # Get the column number, if exists
            $tmp_1 .= ':'."$All_Warnings_Analysed[$i][9]";
        }

        # Find the file's full path
        my $fullpath = $All_Warnings_Analysed[$i][4];

        # Create the link
        $tmp_2 =    HTML_Create_Hlink
                    (
                        '../Files/'.Get_Html_File_Name($fullpath) ,
                        Get_Name_Of_File($fullpath).Get_Ext_Of_File($fullpath)
                    );
        # find the description
        $tmp_3 = $All_Warnings_Analysed[$i][10];

        # Link to the syntax highlighted file
        my $tmp_4;
        if (($fullpath =~ /\:/) || ($fullpath =~ /\</)  || ($fullpath =~ /\>/)) 
        # For linker warnings there is an absolute path to tricore-ld.exe
        # This absolute path contains ":"
        # Therefore no link is possible
        # Also no link possible for "<command line>"
        {
            $tmp_4 = "not available";
        }
        else
        {
            $tmp_4 =    HTML_Create_Hlink
                        (
                            '../Files_Syntax_Highlighted/'.Get_Path_Of_File($fullpath).Get_Name_Of_File($fullpath).Get_Ext_Of_File($fullpath).".html#line"."$All_Warnings_Analysed[$i][8]",
                            Get_Name_Of_File($fullpath).Get_Ext_Of_File($fullpath)
                        );
        }

        $tmp_1=
            HTML_Create_Hlink
            (
                '../'.
                "$WF_Input_File_Base.html".'#line_'.
                "$All_Warnings_Analysed[$i][1]",
                "$tmp_1"
            );

        print OUT Html_Table_Add_Row (
            "$tmp_2",
            "$tmp_1",
            "$tmp_4",
            "$tmp_3",
            "$All_Warnings_Analysed[$i][2]"
        );
    }
    print OUT Html_Table_End_Body();
    print OUT Html_Table_End(1);
    print OUT Html_Insert_HLine();
    print OUT Html_Common_End(1);
    print OUT Html_End_Body();
    print OUT Html_End();

    if (not(close (OUT)))
    {
        print STDERR "ERROR: I can\'t close the file $path$file\n";
        exit 1;
    }
}

sub Html_Create_Index_Warning
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

    print OUT Html_Begin();
    print OUT Html_Begin_Head("Index of the differents warnings");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("Index of the differents warnings");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();
    print OUT Html_Encode_Entities
    (
        "Those ".
        Stat_Total_Categories().
        " Categories of ".
        Stat_Total_Warnings().
        " warnings that occur ".
        Stat_Total_Occurences().
        " time(s) in ".
        Stat_Total_Files().
        " different file(s)"
    );
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(3);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "Type",
        "Files",
        "Warnings",
        "Occurences",
        "Help");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();

####################################################################################################
# sort the list by Category specified by option: [--sort=<type>]
# where type can be:
# 	1 "warn" number of warnings of certain warning type
# 	2 "file" number of files concerned
# 	3 "occu" absolut number of occurences of certain warning type
# 	4 "name" Html name of the warning
####################################################################################################

	if ( $WF_Sort_Option == 2 )
	{
		print STDOUT "sorting by Files in Category";
		@tmp_list_of_sorted_categories = sort by_Files_In_Category @tmp_list_of_categories;
	}
	elsif (	$WF_Sort_Option == 1 )
	{
		print STDOUT "sorting by Warnings in Category";
		@tmp_list_of_sorted_categories = sort by_Warnings_In_Category @tmp_list_of_categories;
	}
	elsif ( $WF_Sort_Option == 3 )
	{
		print STDOUT "sorting by Occurences in Category";
		@tmp_list_of_sorted_categories = sort by_Occurences_In_Category @tmp_list_of_categories;
	}
	elsif ( $WF_Sort_Option == 4 )
	{
		print STDOUT "sorting by Html Name in Category";
		@tmp_list_of_sorted_categories = sort by_Html_Category_Name @tmp_list_of_categories;
	}
	else
	{
		@tmp_list_of_sorted_categories = @tmp_list_of_categories;
	}
	
####################################################################################################

    foreach my $category (@tmp_list_of_sorted_categories)
    {
    	my $tmp_1 = Stat_Files_In_Category($category);
        my $tmp_2 = Stat_Warnings_In_Category($category);
        my $tmp_3 = Stat_Occurences_In_Category($category);
        my $tmp_4 = Get_Html_Category_Name($category);

        print OUT Html_Table_Add_Row
        (
            HTML_Create_Hlink
            (
                './'.
                "$tmp_4"
                ,
                "$category"
            ),
            "$tmp_1",
            "$tmp_2",
            "$tmp_3",
            HTML_Link_Warning_Help($category)
        );
    }
    print OUT Html_Table_End_Body();
    print OUT Html_Table_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Common_End(1);
    print OUT Html_End_Body();
    print OUT Html_End();

    if (not(close (OUT)))
    {
        print STDERR "ERROR: I can\'t close the file $path$file\n";
        exit 1;
    }
}


####################################################################################################
# wanted functions of sort
####################################################################################################
sub by_Warnings_In_Category
{
    my $warn_a = Stat_Warnings_In_Category($a);
    my $warn_b = Stat_Warnings_In_Category($b);

    $warn_b <=> $warn_a;
}

sub by_Files_In_Category
{
    my $file_a = Stat_Files_In_Category($a);
    my $file_b = Stat_Files_In_Category($b);

    $file_b <=> $file_a;
}

sub by_Occurences_In_Category{
    my $occ_a = Stat_Occurences_In_Category($a);
    my $occ_b = Stat_Occurences_In_Category($b);

    $occ_b <=> $occ_a;
}

sub by_Html_Category_Name{
    $a cmp $b;
}

####################################################################################################


# to keep perl happy!
1;
