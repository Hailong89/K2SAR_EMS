# ***************************************************************************
#                            WF_Create_Html.pl
#                   This script generates the HTML documents
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
# date 		= 02.02.2007

# It requires the followings librairies:
    # For debugging
    use warnings;

    # HTML methodes for different types of files
    use HTML_Categories;
    use HTML_Files;
    use HTML_Main_Dir;
    use HTML_Dir;
    use HTML_Main;
    use HTML_Ext;
    use Txt2Html;

	if ($WF_Verbosity ge 1)
    {
        print STDOUT "Converting the log file to the html format\n";
    }

    Convert_Txt2Html
    (
        $WF_Input_File,
        $WF_Out_Dir.$WF_Input_File_Base.'.html',
        2,
        0,
        $WF_Verbosity
    );


    if ($WF_Verbosity ge 1)
    {
		print STDOUT "Generating the main index\n";
    }

    # Create the index
    Html_Create_Index_Main ("index.html", "$WF_Out_Dir", 0, $WF_Verbosity);

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Generating the \"Other\" warnings\n";
    }

    Html_All_Others ("All_Others.html", "$WF_Out_Dir", 0, $WF_Verbosity);


    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Generating the syntax highlighted HTML modules\n";
    }

    # List of files
    # Create syntax highlighted files
    for my $tmp_var (@List_Of_Files)
    {
        Html_Create_Syntax_Highlighted_File("$tmp_var","$WF_Out_Dir".'Files_Syntax_Highlighted/', 1, $WF_Verbosity);
    }

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Generating the HTML modules\n";
    }

    # Create the index
    Html_Create_Index_File ("index.html","$WF_Out_Dir".'Files/', "$WF_Out_Dir".'Files_Syntax_Highlighted/',1, $WF_Verbosity);

    for my $tmp_var (@List_Of_Files)
    {
        Html_Create_File("$tmp_var", "$WF_Out_Dir".'Files/', "$WF_Out_Dir".'Files_Syntax_Highlighted/', 1, $WF_Verbosity);
    }

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Generating the HTML categories\n";
    }

    # Create the index
    Html_Create_Index_Warning ("index.html","$WF_Out_Dir".'Warnings/', 1, $WF_Verbosity);

    for my $tmp_var (@List_Of_Categories)
    {
        Html_Create_Warnings ("$tmp_var","$WF_Out_Dir".'Warnings/', "$WF_Out_Dir".'Files_Syntax_Highlighted/', 1, $WF_Verbosity);
    }

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Generating the HTML main directories\n";
    }

    # Create the index
    Html_Create_Index_Main_Dir ("index.html","$WF_Out_Dir".'Main_Dir/', 1, $WF_Verbosity);

    for my $tmp_var (@List_Of_Main_Dir)
    {
		Html_Create_Main_Dir ("$tmp_var","$WF_Out_Dir".'Main_Dir/', 1, $WF_Verbosity);
    }

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Generating the HTML directories\n";
    }

    # Create the index
    Html_Create_Index_Dir ("index.html","$WF_Out_Dir".'Dir/', "$WF_Out_Dir".'Files_Syntax_Highlighted/', 1, $WF_Verbosity);

    for my $tmp_var (@List_Of_Dir)
    {
		Html_Create_Dir ("$tmp_var","$WF_Out_Dir".'Dir/', "$WF_Out_Dir".'Files_Syntax_Highlighted/', 1, $WF_Verbosity);
    }
    # Create the index
    Html_Create_Index_Main_Dir ("index.html","$WF_Out_Dir".'Main_Dir/', 1, $WF_Verbosity);

    for my $tmp_var (@List_Of_Main_Dir)
    {
		Html_Create_Main_Dir ("$tmp_var","$WF_Out_Dir".'Main_Dir/', 1, $WF_Verbosity);
    }

    if ($WF_Verbosity ge 1)
    {
        print STDOUT "Generating the HTML extensions\n";
    }

    # Create the index
    Html_Create_Index_Ext ("index.html","$WF_Out_Dir".'Ext/', 1, $WF_Verbosity);

    for my $tmp_var (@List_Of_Ext)
    {
		Html_Create_Ext ("$tmp_var","$WF_Out_Dir".'Ext/', 1, $WF_Verbosity);
    }



# return 1...
1;
