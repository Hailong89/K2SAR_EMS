# ***************************************************************************
#                               HTML_Dir.pm  
#            Methodes for building HTML documents about directories
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
# date 		= 15.02.2005

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

sub Html_Create_Dir
{
    my ($dir, $path, $path_syntax_highlighted, $relative_level, $verbosity) = @_;

    my $file = Get_Html_Dir_Name ($dir);

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

    my @tmp_list_of_files = Stat_Files_In_Dir ($dir);

    print OUT Html_Begin();
    print OUT Html_Begin_Head("$dir");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("$dir");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();
    print OUT Html_Encode_Entities
    (
        "In this directory were ".
        Stat_Warnings_In_Dir($dir).
        " warning(s) of ".
        Stat_Categories_In_Dir($dir).
        " Category(ies) generated form ".
        ($#tmp_list_of_files + 1).
        " Files."
    );
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(4);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "File Information",
        "Link to Source-File",
        "Main directory",
        "Warnings",
        "Categories");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();
    foreach my $tmp_file (@tmp_list_of_files)
    {
        my $tmp_main_dir = Get_Main_Dir ($dir);
		my $tmp_1   = HTML_Create_Hlink
            (
                '../Main_Dir/'.Get_Html_Main_Dir_Name($tmp_main_dir),
                $tmp_main_dir
            );

        my $tmp_2 = Stat_Warnings_In_File ($tmp_file);
        my $tmp_3 = Stat_Categories_In_File ($tmp_file);
        my $tmp_4 = HTML_Create_Hlink
            (
                '../Files/'.Get_Html_File_Name($tmp_file),
                Get_Name_Of_File($tmp_file).Get_Ext_Of_File($tmp_file)
            );
        
        # Path for the syntax highlighted html files
        # This complete path has to be build first
        my $out_path = Get_Path_Of_File($tmp_file);

        #  Remove the beginning "./" of this path
        $out_path=~s/^\.\///; 
        #  Now build the complete path
        $out_path = $path_syntax_highlighted.$out_path;

        #  Remove $WF_Out_Dir of this path since it is double
        $out_path = substr($out_path, length($WF_Out_Dir), (length($out_path)-length($WF_Out_Dir)));
        $out_path = "../".$out_path;

        $out_path = $out_path.Get_Name_Of_File($tmp_file);
        $out_path = $out_path.Get_Ext_Of_File($tmp_file).'.html';
        
        my $tmp_5;
        if (($out_path =~ /\:/) || ($out_path =~ /\</)  || ($out_path =~ /\>/)) 
        # For linker warnings there is an absolute path to tricore-ld.exe
        # This absolute path contains ":"
        # Therefore no link is possible
        # Also no link possible for "<command line>"
        {
            $tmp_5 = "not available";
        }
        else
        {

            $tmp_5 = HTML_Create_Hlink
                        (
                            $out_path,
                            Get_Name_Of_File($tmp_file).Get_Ext_Of_File($tmp_file)
                        );
        }
        print OUT Html_Table_Add_Row (
            "$tmp_4",
            "$tmp_5",
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

sub Html_Create_Index_Dir
{
    my ($file, $path, $path_syntax_highlighted, $relative_level, $verbosity) = @_;

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

    my @tmp_list_of_dir = Stat_Total_Dir();

    print OUT Html_Begin();
    print OUT Html_Begin_Head("Index of the directories");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("Index of the directories");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();
    print OUT Html_Encode_Entities
    (
        "In these ".
        ($#tmp_list_of_dir + 1).
        " directories were generated a total of ".
        Stat_Total_Warnings().
        " warning(s) reparted into ".
        Stat_Total_Categories().
        " category(ies)");
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(4);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "Directory",
        "Files",
        "Warnings",
        "Categories");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();
    foreach my $tmp_dir (@tmp_list_of_dir)
    {
        my $tmp_1 = Stat_Warnings_In_Dir($tmp_dir);
        my $tmp_4 = Stat_Files_In_Dir($tmp_dir);
        my $tmp_2 = Stat_Categories_In_Dir($tmp_dir);
        my $tmp_3 = Get_Html_Dir_Name ($tmp_dir);

        print OUT Html_Table_Add_Row (
            (HTML_Create_Hlink('./'."$tmp_3","$tmp_dir")),
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
