# ***************************************************************************
#                                HTML_Ext.pm
#        Methodes for building HTML documents about the files
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
# This script build a HTML document about one file

# version   = 1.007
# date      = 15.02.2007

# Required packages
    # For debugging
    use warnings;
    # For HTML methods
    use WF_Html_Lib;
    # For statistics
    use WF_Statistics;
    # For Help
    use WF_Help_Linker;
    # For Path creation
    use File::Path;

# Arguments:
# - the name of the file (full name)
# - The out directory
# - The relative level, regarding the main out directory
# - The verbosity

sub Html_Create_Syntax_Highlighted_File
{
    my ($full_path, $path, $relative_level, $verbosity) = @_;

    my $file = Get_Html_File_Name ($full_path);
    my $file_name = Get_Name_Of_File ($full_path);
    my $file_ext  = Get_Ext_Of_File  ($full_path);
    my $file_path = Get_Path_Of_File ($full_path);

    # Print informations
    if ($verbosity ge 4)
    {
        print STDOUT "\n";
        print STDOUT "Executing Perl Routine Html_Create_Syntax_Highlighted_File \n";
        print STDOUT "========================================================== \n";
    }


    # Detect the path to c2html.exe
    # c2html is in the same directory than WarnungsFilter.pl
    # so the path to WarnungsFilter.pl is detected
    my $path_c2html = $0;
    # now the path contains also the filename WarnungsFilter.pl
    # => Filename has to be removed
    $path_c2html=~s/\\?WarnungsFilter.pl//;
    # Now $path_c2html contains the path to c2html.exe
    # Print informations
    if ($verbosity ge 5)
    {
        print STDOUT "Path to c2html.exe: $path_c2html \n";
    }

    $path_c2html .= '/' if ($path_c2html);

    foreach my $i (@{$All_Files{$full_path}})
    {
        # Path for the syntax highlighted html files
        # This complete path has to be build first
        # Start with $file_path
        my $out_path = $file_path;
        #  Remove the beginning "./" of this path
        $out_path=~s/^\.\///;
        #  Now build the complete path
        $out_path = $path.$out_path;

        if ($out_path =~ /\:/)
        # For linker warnings there is an absolute path to tricore-ld.exe
        # This absolute path contains ":"
        # Therefore this path cannot be created
        # To prevent warningsfilter from abort this is checked here
        {
            if ($verbosity ge 2)
            {
                print STDOUT "Not allowed character \":\" in Path $out_path \n";
                print STDOUT "PATH $out_path CANNOT BE CREATED \n";
            }
        }
        else
        {
            # Input file name
            $tmp_in  = Get_Path_Of_File($full_path)
                       .Get_Name_Of_File($full_path)
                       .Get_Ext_Of_File($full_path);

            if ( $tmp_in =~ /^[\/\\]/ )
            {
                $tmp_in = ".".$tmp_in;
            }

            # Print informations
            if ($verbosity ge 4)
            {
                print STDOUT "\n";
                print STDOUT "Input file: $tmp_in \n";
            }

            # Output file name
            $tmp_out = $out_path
                       .Get_Name_Of_File($full_path)
                       .Get_Ext_Of_File($full_path).'.html';
            # Print informations
            if ($verbosity ge 4)
            {
                print STDOUT "Output file: $tmp_out \n";
            }

            # Print informations
            if ($verbosity ge 2)
            {
                print STDOUT "Generating path $out_path\n";
            }
            mkpath($out_path, 1, 0755);
            # This does not work:
            # system("mkdir $out_path");


            # c2html.exe is converting the input file to a
            # syntax highlighted HTML file
            # -N sets an anchor for each line
            # -o sets the output file
            # output file must be in a seperate directory, not within the sources

            if ($tmp_out =~ /\<command\ line\>/)
            {
                if ($verbosity ge 2)
                {
                        print STDOUT "File $tmp_out cannot be created \n";
                }
            }
            else
            {
                if ($^O eq "MSWin32")
                {
                    # WINDOWS only
                    if ($verbosity ge 3)
                    {
                        print STDOUT "Generating syntax highlighted html file with \n";
                        print STDOUT $path_c2html."c2html.exe -N -o$tmp_out $tmp_in \n";
                    }
                    system($path_c2html . "c2html -N -o$tmp_out $tmp_in ");
                    # system("c2html -N -o$tmp_out $tmp_in ");
                }
                else
                {
                    system("touch $tmp_out");
                }
            }
        }
    }
}

sub Html_Create_File
{
    my ($full_path, $path, $path_syntax_highlighted, $relative_level, $verbosity) = @_;

    my $file = Get_Html_File_Name ($full_path);
    my $file_name = Get_Name_Of_File ($full_path);
    my $file_ext  = Get_Ext_Of_File  ($full_path);
    my $file_path = Get_Path_Of_File ($full_path);

    # Print informations
    if ($verbosity ge 4)
    {
        print STDOUT "\n";
        print STDOUT "Executing Perl Routine Html_Create_File ...\n";
        print STDOUT "========================================== \n";
    }


    # Print informations
    if ($verbosity ge 4)
    {
        print STDOUT "Generating the file $path$file\n";
    }

    if (not (open (OUT, '>', "$path$file" )))
    {
        print STDERR die "ERROR: I can\'t open the file $path$file for writing\n";
        exit 1;
    }


    print OUT Html_Begin();
    print OUT Html_Begin_Head(
        Html_Encode_Entities("$file_name$file_ext")
    );
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("$file_name$file_ext");

    print OUT " (".
                HTML_Create_Hlink
                (
                    '../Dir/'.Get_Html_Dir_Name($file_path),
                    $file_path
                ).
                ")";
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();
    print OUT Html_Encode_Entities
    (
        "This file generated ".
        Stat_Warnings_In_File($full_path).
        " warning(s) of ".
        Stat_Categories_In_File($full_path).
        " Category(ies)"
    );
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(5);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        'Link to Log-File Position<BR>(Line:Column)',
        "Link to Source-File Position",
        "Category",
        "Description",
        "Occurences",
        "Help");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();
    foreach my $i (@{$All_Files{$full_path}})
    {
        my ($tmp_1, $tmp_2, $tmp_3, $tmp_4, $tmp_5, $tmp_6);

        # line, column
        $tmp_1 = $All_Warnings_Analysed[$i][8];
        if ($All_Warnings_Analysed[$i][9])
        {
            # Get the column number, if exists
            $tmp_1 .= ':'."$All_Warnings_Analysed[$i][9]";
        }

        # Find the category's name, from the warning's list
        $tmp_2 = $All_Warnings_Analysed[$i][11];

        # Create the link
        $tmp_4 =
            HTML_Create_Hlink
            (
                '../Warnings/' . Get_Html_Category_Name($tmp_2),
                "$tmp_2"
            );

        # Getting the occurences
        $tmp_3 = "$All_Warnings_Analysed[$i][2]";

        # Create the link to the input file
        $tmp_1 =
            HTML_Create_Hlink
            (
                '../'.
                "$WF_Input_File_Base.html".'#line_'.
                "$All_Warnings_Analysed[$i][1]",
                "$tmp_1"
            );

        # Create the link to the help
        $tmp_5 = HTML_Link_Warning_Help($tmp_2);

        # Path for the syntax highlighted html files
        # This complete path has to be build first
        # Start with $file_path
        my $out_path = $file_path;
        #  Remove the beginning "./" of this path
        $out_path=~s/^\.\///;
        #  Now build the complete path
        $out_path = $path_syntax_highlighted.$out_path;

        #  Remove $WF_Out_Dir of this path since it is double
        $out_path = substr($out_path, length($WF_Out_Dir), (length($out_path)-length($WF_Out_Dir)));
        $out_path = "../".$out_path;

        $out_path = $out_path.Get_Name_Of_File($full_path);
        $out_path = $out_path.Get_Ext_Of_File($full_path).'.html'.'#line';
        $out_path = $out_path.$All_Warnings_Analysed[$i][8];

        if (($out_path =~ /\:/) || ($out_path =~ /\</)  || ($out_path =~ /\>/))
        # For linker warnings there is an absolute path to tricore-ld.exe
        # This absolute path contains ":"
        # Therefore no link is possible
        # Also no link possible for "<command line>"
        {
            $tmp_6 = "not available";
        }
        else
        {
            $tmp_6 =
                HTML_Create_Hlink
                (
                    $out_path,
                    Get_Name_Of_File($full_path).Get_Ext_Of_File($full_path)
                );
        }
        print OUT Html_Table_Add_Row (
            "$tmp_1",
            "$tmp_6",
            "$tmp_4",
            "$All_Warnings_Analysed[$i][10]",
            "$tmp_3",
            "$tmp_5"
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

sub Html_Create_Index_File
{
    my ($file, $path, $path_syntax_highlighted, $relative_level, $verbosity) = @_;

    # Print informations
    if ($verbosity ge 4)
    {
        print STDOUT "Html_Create_Index_File \n";
        print STDOUT "====================== \n";
    }

    # Print informations
    if ($verbosity ge 4)
    {
        print STDOUT "Parameters:\n";
        print STDOUT "\$file                    = $file\n";
        print STDOUT "\$path                    = $path\n";
        print STDOUT "\$path_syntax_highlighted = $path_syntax_highlighted\n";
        print STDOUT "OUT                      = $path$file \n";
    }

    # Print informations
    if ($verbosity ge 4)
    {
        print STDOUT "Generating the file $path$file\n";
    }

    if (not (open (OUT, '>', "$path$file" )))
    {
        print STDERR die "ERROR: I can\'t open the file $path$file for writing\n";
        exit 1;
    }




    my @tmp_list_of_files = Stat_Total_Files();

    print OUT Html_Begin();
    print OUT Html_Begin_Head("Index of the sources files");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("Index of the source files");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();
    print OUT Html_Para_Begin();
    print OUT Html_Encode_Entities
    (
        "Those ".
        ($#tmp_list_of_files + 1).
        " files generate a total of ".
        Stat_Total_Warnings().
        " warning(s) reparted into ".
        Stat_Total_Categories().
        " Category(ies)");
    print OUT Html_Para_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Table_Begin(4);
    print OUT Html_Table_Begin_Header();
    print OUT Html_Table_Add_Row(
        "File Information",
        "Link to Source-File",
        "Directory",
        "Warnings",
        "Categories");
    print OUT Html_Table_End_Header();
    print OUT Html_Table_Begin_Body();
    foreach my $tmp_file (@tmp_list_of_files)
    {
        my $tmp_1 = HTML_Create_Hlink
                    (
                        './'.Get_Html_File_Name($tmp_file) ,
                        Get_Name_Of_File($tmp_file).Get_Ext_Of_File($tmp_file)
                    );

        my $tmp_2 = Stat_Warnings_In_File($tmp_file);
        my $tmp_3 = Stat_Categories_In_File($tmp_file);
        my $tmp_4 = Get_Path_Of_File($tmp_file);
        my $tmp_6;

        # Path to syntax highlighted file
        my $out_path;

        if (($tmp_file =~ /\:/) || ($tmp_file =~ /\</)  || ($tmp_file =~ /\>/))
        # For linker warnings there is an absolute path to tricore-ld.exe
        # This absolute path contains ":"
        # Therefore no link is possible
        # Also no link possible for "<command line>"
        {
            $tmp_6 = "not available";
        }
        else
        {
            # Path for the syntax highlighted html files
            # This complete path has to be build first
            $out_path = $tmp_4;
            #  Remove the beginning "./" of this path
            $out_path=~s/^\.\///;
            #  Now build the complete path
            $out_path = $path_syntax_highlighted.$out_path;

            #  Remove $WF_Out_Dir of this path since it is double
            $out_path = substr($out_path, length($WF_Out_Dir), (length($out_path)-length($WF_Out_Dir)));
            $out_path = "../".$out_path;

            $out_path = $out_path.Get_Name_Of_File($tmp_file);
            $out_path = $out_path.Get_Ext_Of_File($tmp_file).'.html';

            $tmp_6 = HTML_Create_Hlink
                        (
                            $out_path,
                            Get_Name_Of_File($tmp_file).Get_Ext_Of_File($tmp_file)
                        );
        }

        print OUT Html_Table_Add_Row (
            $tmp_1,
            $tmp_6,
            $tmp_4,
            $tmp_2,
            $tmp_3
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
