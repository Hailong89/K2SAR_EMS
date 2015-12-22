# ***************************************************************************
#                                HTML_Ext.pm  
#        Methodes for building HTML documents about files' extensions
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
    # For HTML methods
	use WF_Html_Lib;
    # For statistics
    use WF_Statistics;
    # Path utilities
    # To get the main path...
    use WF_Path_Utils;


# Arguments:
# - the name of the directory
# - The out directory
# - The relative level, regarding the main out directory
# - The verbosity

sub Html_Create_Ext
{
    my ($ext, $path, $relative_level, $verbosity) = @_;

    my $file = Get_Html_Ext_Name ($ext);

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

    my @tmp_list_of_files = Stat_Files_In_Ext ($ext);

    print OUT Html_Begin();
    print OUT Html_Begin_Head("$ext Files");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
	if ($ext eq "")
	{
	    print OUT Html_Encode_Entities("Files without extension");
	}
	else
	{
        print OUT Html_Encode_Entities("$ext Files");
	}
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();
    print OUT Html_Encode_Entities
    (
        "There are ".
		($#tmp_list_of_files + 1).
		" files with the \"$ext\" extension".
		" that generate a total of ".
        Stat_Warnings_In_Ext($ext).
        " warnings of ".
        Stat_Categories_In_Ext($ext).
        " Different categories"
    );
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(4);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "File",
        "directory",
        "Warnings",
        "Categories");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();
    foreach my $tmp_file (@tmp_list_of_files)
    {
        my $tmp_dir = Get_Path_Of_File ($tmp_file);
		my $tmp_1   = HTML_Create_Hlink
            (
                '../Dir/'.Get_Html_Dir_Name($tmp_dir),
                $tmp_dir
            );
 
        my $tmp_2 = Stat_Warnings_In_File ($tmp_file);
        my $tmp_3 = Stat_Categories_In_File ($tmp_file);
        my $tmp_4 = HTML_Create_Hlink
            (
                '../Files/'.Get_Html_File_Name($tmp_file),
                Get_Name_Of_File($tmp_file).Get_Ext_Of_File($tmp_file)
            );
        print OUT Html_Table_Add_Row (
            "$tmp_4",
            "$tmp_1",
            "$tmp_2",
            "$tmp_3"
        );
    }
    print OUT Html_Table_End_Body();
    print OUT Html_Table_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Common_End($relative_level);
    print OUT Html_End_Body();
    print OUT Html_End();

    if (not(close (OUT)))
    {
        print STDERR "ERROR: I can\'t close the file $path$file\n";
        exit 1;
    }
}

sub Html_Create_Index_Ext
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

    my @tmp_list_of_ext = Stat_Total_Ext();

    print OUT Html_Begin();
    print OUT Html_Begin_Head("Index of the extensions");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("Index of the extensions");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();
    print OUT Html_Encode_Entities
    (
        "From these ".
        ($#tmp_list_of_ext + 1).
        " extensions were generated a total of ".
        Stat_Total_Warnings().
        " warning(s) reparted into ".
        Stat_Total_Categories().
        " category(ies)");
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(4);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "Extensions",
        "Files",
        "Warnings",
        "Categories");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();
    foreach my $tmp_ext (@tmp_list_of_ext)
    {
        my $tmp_1 = Stat_Warnings_In_Ext($tmp_ext);
        my $tmp_4 = Stat_Files_In_Ext($tmp_ext);
        my $tmp_2 = Stat_Categories_In_Ext($tmp_ext);
        my $tmp_3 = Get_Html_Ext_Name ($tmp_ext);
		my $tmp_5 = $tmp_ext;
		if ($tmp_ext eq "")
		{
			$tmp_5 = "No extension";
		}
        print OUT Html_Table_Add_Row (
            (HTML_Create_Hlink('./'."$tmp_3","$tmp_5")),
            $tmp_4,
            $tmp_1,
            $tmp_2
        );
    }
    print OUT Html_Table_End_Body();
    print OUT Html_Table_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Common_End($relative_level);
    print OUT Html_End_Body();
    print OUT Html_End();

    if (not(close (OUT)))
    {
        print STDERR "ERROR: I can\'t close the file $path$file\n";
        exit 1;
    }
}

# to keep perl happy!
1;
