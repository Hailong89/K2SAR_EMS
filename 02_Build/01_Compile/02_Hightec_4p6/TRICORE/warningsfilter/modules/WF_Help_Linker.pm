# ***************************************************************************
#                              WF_Help_Linker.pm  
#            Methodes used to link a warning to the corresponding help
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


# version 	= 1.000
# date 		= 20.02.2004

# Required packages
    # For debugging
    use warnings;
    # For HTML methods
    use WF_Html_Lib;

# This return a link to the help about the warning's category
# arguments is
# category
sub HTML_Link_Warning_Help
{
    my $category = $_[0];
	my $link;
	my $text;

	$category =~ s/\n//g;
	$category =~ s/\r//g;
	
	if ($category =~ /^\[([0-9]*)\].*/ ) {
		$category =~ s/^\[([0-9]*)\].*/$1/;
	}
	

	
	# get the text
    if ($WF_Warning_Help_Text{$category})
	{
		$text = $WF_Warning_Help_Text{$category}; 	
	}
	else
	{
		if ($Help_Default_Text)
		{
			$text = $Help_Default_Text;
		}
		else
		{
			$text = '';
		}
	}
	
	# get the link
    if ($WF_Warning_Help_Link{$category})
	{
		$link = $WF_Warning_Help_Link{$category}; 	
	}
	else
	{
		$link = $Help_Default_Link;
	}
	
	# return the good value
    if ($link)
    {
		# We have a link, concatenation wiht the main path
		return HTML_Create_Hlink("$Help_Dir$link", $text);
    }
    else
    {
		# we only have a text
		return $text;
    }
}

# to keep perl happy!
1;

