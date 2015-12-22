# ***************************************************************************
#                                 WF_Config.pm  
#                   Methodes used to configure the WarnungsFilter
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

#package Config_Ini;
use warnings;
#use strict;
use Carp;

# Package that get the perl script's original directory
use FindBin;


# Arguments are:
# file
# verbosity

sub Read_Config_File
{
	my ($file, $verbosity) = @_;
    if ($verbosity ge 1)
    {
    	print STDOUT "Opening configuration file $file\n";
    }

    open (CONF, '<', "$file")
    	or die "ERROR: Can\'t open config file $file, aborting\n";

    my $configuration = {};
    my $tmp_section = undef;
    if ($verbosity ge 2)
    {
       print STDOUT "Reading config file...\n";
    }
LINE: while (<CONF>)
    {
        $line_counter++;
        my $tmp_line = $_;
        if ($verbosity ge 2)
        {
            print STDOUT ".";
        }

        if (m/^\s*$/)
        {
            # this is an empty line
            if ($verbosity ge 5)
            {
                print STDOUT "$line_counter\tempty line:\t$tmp_line";
            }
            next LINE;
        }
        elsif (m/^\s*\#.*/)
        {
            # this is a comment
            if ($verbosity ge 5)
            {
                print STDOUT "$line_counter\tcomment:\t$tmp_line";
            }
            next LINE;
        }

        if (m/\s*(\w+)\s*\=\s*(.*)\s*/)
        { # this is a configuration field

            if ($tmp_section)
            {
                # Add the key in the section
                ${$config{$tmp_section}}{$1} = $2;
                if ($verbosity ge 5)
                {
                    print STDOUT "$line_counter\tkey:\t$tmp_line";
                }
            }
            else
            {
                my $msg =
                    "There is no section defined before the line $line_counter:\n".
                    "$tmp_line".
                    "";
                die "$msg";
            }
            # we don't need to process this line
            next LINE;
        }
        elsif (m/\s*\[(\w+)\]\s*/)
        {   # this is the beginning of a section
            $tmp_section = $1;
            # add this section into the configuration hash
            $config{$tmp_section} = {};

            if ($verbosity ge 5)
                {
                    print STDOUT "$line_counter\tsection:\t$tmp_line";
                }

            # we don't need to process this line
            next LINE;
        }
        else
        {
            # the line doesn't match the syntax
            my $msg = "\n".
            "the syntax of the following line ($line_counter):\n".
            "$tmp_line\n".
            "is not correct\n";
            die "$msg";
        }
    }

    if ($verbosity ge 2)
    {
        print STDOUT "Reading config file finished\n";
        print STDOUT "Close config file $file\n";
    }

    close (CONF)
        or die "Can\'t close config file $file, aborting\n";

    return %config;
}


# Arguments are:
# key
# section
# configuration hash
# verbosity

sub Get_Key
{
    my ($key, $section, $config, $verbosity) = @_;
    return ${$config{$section}}{$key};
}

# read the mini script where the link are stored
# argument is the link to the script

sub Read_Url_Database
{
	undef ($Help_Default_Link);
	$Help_Default_Text = '[..]';
	undef($Help_Dir);
	undef(%WF_Warning_Help_Link);
	undef(%WF_Warning_Help_Text);

	if (do $_[0] ne 1)
	{
		# if the script do not return 1
		# or if the script isnot correct
		# print error on STDERR and exit
		print STDERR "ERROR in the script $_[0]\n";
		print STDERR "$!\n$@\n";
		exit 1;
	}
}

# This displays the help on the STDOUT
sub Print_Help
{
    my $help_file = "$FindBin::Bin/Doc/help.txt";
	if (open (HELP, '<', "$help_file"))
    {
        while (<HELP>)
        {
            print STDOUT "$_";
        }
        close (HELP);
    }
    else
    {
        print STDERR "ERROR: I can\'t find the help (I didn\'t find $help_file)\n";
        exit 1;
    }
}

# This sub displays the versions of all the modules required
sub Print_Version
{
my @list_of_modules = 
	(
		"WF_Gcc_Warning_Analyser.pm",
		"HTML_Dir.pm",
		"HTML_Ext.pm",
		"HTML_Files.pm",
		"HTML_Main.pm",
		"HTML_Main_Dir.pm",
		"Txt2Html.pm",
		"WF_Config.pm",
		"HTML_Categories.pm",
		"WF_Html_Lib.pm",
		"WF_Path_Utils.pm",
		"WF_Statistics.pm",
		"WF_Help_Linker.pm",
		"WF_Lists.pm",
	);

my @list_of_scripts =
	(
        "WF_Analyse_Warnings.pl",
        "WF_Get_Warnings.pl",
        "WF_Create_Html.pl",
        "WF_Configuration.pl",
        "WF_Sort_Warnings.pl",
		"WF_Create_Lists.pl",
	);

# sorting the names:
@list_of_scripts = sort(@list_of_scripts);
@list_of_modules = sort(@list_of_modules);

    print STDOUT "WarnungsFilter $WF_version.$WF_release (Built  $WF_date_of_issue)\n".
	"Copyright 2003 - 2007 by HighTec EDV-Systeme GmbH\n\n".
    "This program uses the following modules\n".
    "version\t(date)\t\t: name\n\n";

	print STDOUT "List of modules:\n";
	foreach my $modul (@list_of_modules)
	{
		if(open (SRC,'<', "$FindBin::Bin/modules/$modul"))
		{
			my $version  	= 'unknown';
			my $built_date 	= 'unknown';

			while (<SRC>)
			{
				if (m/^\#\s+version\s+\=\s+([\w\.]+)/)
				{
					$version = $1;
				}
				elsif (m/^\#\s+date\s+\=\s+([\w\.]+)/)
				{
					$built_date = $1;
				}
			}
			close (SRC);
			print STDOUT "$version ($built_date)\t: $modul\n"
		}
	}

	print STDOUT "\n";

	print STDOUT "List of scripts:\n";

	foreach my $script (@list_of_scripts)
	{
		if(open (SRC,'<', "$FindBin::Bin/scripts/$script"))
		{
			my $version  	= 'unknown';
			my $built_date 	= 'unknown';

			while (<SRC>)
			{
				if (m/^\#\s+version\s+\=\s+([\w\.]+)/)
				{
					$version = $1;
				}
				elsif (m/^\#\s+date\s+\=\s+([\w\.]+)/)
				{
					$built_date = $1;
				}
			}
			close (SRC);
			print STDOUT "$version ($built_date)\t: $script\n"
		}
	}
}

# This sub the glorious history of the warnungsfilter
sub Print_History
{
	if(open (HIST,'<', "$FindBin::Bin/Doc/history.txt"))
	{
		while (<HIST>)
		{
			print STDOUT $_ ;
		}
	close (HIST);
	}
	else
	{
		print STDOUT 	"No history available.\n".
						"Check your installation?\n";
	}
}

# This sub return the first defined parameter found,
# or undef if nothing is defined
sub Get_First_Def_Par
{
	@tmp_list = @_;
    for my $i (0 .. $#tmp_list)
    {
        if (defined($tmp_list[$i]))
        {
            return $tmp_list[$i];
        }
    }
    return undef;
}


# last evaluation equal to 1,
# so perl is happy with it!
1;
