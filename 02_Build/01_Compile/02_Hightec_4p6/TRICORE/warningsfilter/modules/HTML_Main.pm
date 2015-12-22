# ***************************************************************************
#                                HTML_Main.pm  
#                  Methodes for building HTML main documents
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
# date 		= 15.02.2007

# Required packages
    # For debugging
    use warnings;
    # For HTML methods
    use WF_Html_Lib;
    # For statistics
    use WF_Statistics;

# Arguments are:
# File's name (with extension)
# File's path
# Relative level (regarding the out_directory)
# Verbosity

sub Html_Create_Index_Main
{
    my ($file, $path, $relative_level, $verbosity) = @_;

    # temporary variable for general use
    my $tmp_var;
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

    # Generating the file
    print OUT Html_Begin();
    print OUT Html_Begin_Head("Main Index of WarnungsFilter");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("Main Index of WarnungsFilter");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();

    $tmp_var = Stat_Total_Warnings();
    print OUT Html_Encode_Entities
    (
        "In the input file, the program found out ".
        "$tmp_var".
        " differents warnings that occur ".
        Stat_Total_Occurences() .
        " times."
    );
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(3);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "Sorted by",
        "Statistics",
        "Meaning");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();

    #$tmp_var = Stat_Total_Warnings(); # Already done
    print OUT Html_Table_Add_Row
    (
        "[..All..]"
        ,
        "$tmp_var",
        "All the \"Gcc\" warnings found"
    );

    $tmp_var = Stat_Total_Main_Dir();
    print OUT Html_Table_Add_Row
    (
        HTML_Create_Hlink
        (
            './Main_Dir/index.html',
            "Main directories"
        ),
        "$tmp_var",
        'Number of main directories'
    );

    $tmp_var = Stat_Total_Dir();
    print OUT Html_Table_Add_Row
    (
        HTML_Create_Hlink
        (
            './Dir/index.html',
            "Directories"
        ),
        "$tmp_var",
        'Number of directories'
    );

    $tmp_var = Stat_Total_Files();
    print OUT Html_Table_Add_Row
    (
        HTML_Create_Hlink
        (
            './Files/index.html',
            "Files"
        ),
        "$tmp_var",
        'Number of files'
    );

    $tmp_var = Stat_Total_Categories();
    print OUT Html_Table_Add_Row
    (
        HTML_Create_Hlink
        (
            './Warnings/index.html',
            "Categories"
        ),
        "$tmp_var",
        'Number of categories'
    );

    $tmp_var = Stat_Total_Ext();
    print OUT Html_Table_Add_Row
    (
        HTML_Create_Hlink
        (
            './Ext/index.html',
            "Type of files"
        ),
        "$tmp_var",
        'Number of types'
    );

    $tmp_var = Stat_Total_Others_Warnings();
    print OUT Html_Table_Add_Row
    (
        HTML_Create_Hlink
        (
            './All_Others.html',
            "Non Gcc Warnings"
        ),
        "$tmp_var",
        "Those warnings do not match the expected \"Gcc\" syntax"
    );


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

sub Html_All_Others
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

    print OUT Html_Begin();
    print OUT Html_Begin_Head("Other warnings from the input file");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("Other warnings from the input file");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();

    print OUT Html_Encode_Entities
    (
        "In the input file, the program found out ".
        Stat_Total_Others_Warnings.
        " different warnings that occur ".
        Stat_Total_Others_Occurences.
        " times."
    );
	print OUT Html_New_Line;
    print OUT Html_Encode_Entities
    (
        "If you found a Gcc warning in this section, please send the Author a bug report. Do not forget to join the original input file (not the html one) and this html file with a sort description of the problem.".'<BR>'
    );
    print OUT Html_Encode_Entities
    (
        "All the warning found in this section are text containing the word warning (ignoring case)."
    );
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(2);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "Warning (full text)",
        "Occurences");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();
	for my $i (0 .. $#All_Other_Warnings)
	{
    	my $tmp_1 =
        	HTML_Create_Hlink
            (
                './'.
                "$WF_Input_File_Base.html".'#line_'.
                "$All_Other_Warnings[$i][1]",
                "$All_Other_Warnings[$i][0]"
            );
        my $tmp_2 = $All_Other_Warnings[$i][2];
        print OUT Html_Table_Add_Row ("$tmp_1","$tmp_2");
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
