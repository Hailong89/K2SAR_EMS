# ***************************************************************************
#                                Txt2Html.pm  
#              Methodes for building HTML documents from a text file
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
# date 		= 15.02.2007

use warnings;
use WF_Html_Lib;
use HTML::Entities;

# Arguments are:
# - input file (string)
# - output file (if .html is missing, it will be add automatically)
# - Line labels (1 : create labels for line)
#               (2 : Add the line numbre too)
#               (undef or something else, no references)
# - Relative level (regarding the tool's out_dir)
# - verbosity       (0 to 5. if missing: silent)
sub Convert_Txt2Html
{
    my ($input_file, $output_file, $create_label, $relative_level, $verbosity) = @_;
    my $i = 0; # line counter
    $_ = $output_file;
    # Missing .html extension?
    if (not (m/\.html$/ ))
    {
        $output_file .= '.html';
    }

	if ($verbosity ge 1)
	{
		print STDOUT "Openning the text file $input_file for reading\n";
	}

    open (IN ,'<' ,$input_file)
    	or die "I can\'t open the specified file $input_file in read mode.\n";

	if ($verbosity ge 1)
	{
    	print STDOUT "Openning destination file $output_file for writing\n";
	}
    open (OUT ,'>' ,$output_file)
    	or die "I can\'t open the specified file $output_file in write mode.\n";

    # First add the standard html beginning...
    print OUT Html_Begin();
    print OUT Html_Begin_Head("$input_file");
    print OUT Html_End_Head();
    print OUT Html_Begin_Body();
    print OUT Html_H1_Begin();
    print OUT Html_Encode_Entities("$input_file");
    print OUT Html_H1_End();
    print OUT Html_Insert_HLine();
    print OUT Html_Info_Paragraph();
    print OUT Html_Insert_HLine();

    # Now let us copying the text file into the HTML document
    print OUT Html_Para_Begin();
    # This font is better for a text file...
    print OUT '<FONT FACE="Courier, monospace">'."\n";

    if ($verbosity ge 3)
    {
        print STDOUT "Converting TXT to HTML...\n";
    }

    while (<IN>)
    {
        if ($create_label ge 1)
        {
            $i++;
            print OUT HTML_Create_HRef("line_$i");
            if ($create_label ge 2)
            {
                print OUT "$i : ";
            }
        }
        print OUT Html_Encode_Entities($_) . "\n";
		print OUT Html_New_Line;
        if ($verbosity ge 3)
        {
            print STDOUT ".";
        }
    }

    if ($verbosity ge 3)
    {
   		print STDOUT "\n";
	}

    # closing the "font"
    print OUT '</FONT><BR>'."\n";

    print OUT Html_Para_End();
    # The standard end-of-html file
    print OUT Html_Insert_HLine();
    print OUT Html_Common_End($relative_level);
    print OUT Html_End_Body();
    print OUT Html_End();

    close (IN) or
        die "I can\'t close the file $input_file\n";

    close (OUT) or
        die "I can\'t close the file $output_file\n";

}


# To keep perl Happy!
1;
