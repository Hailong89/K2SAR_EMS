# ***************************************************************************
#                                WF_Gcc_Warning_Analyser.pm  
#                   Methodes for analysing the Gcc Warnings
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

# version 	= 1.011
# date 		= 30.08.2005

	# for debugging
    use warnings;

    # Utilities for filename editing
    use File::Basename;

# input: the warning's full text + verbosity
# output: a list with the differents elements:
        # [0]  = Location
        # [1]  =    Full Path
        # [2]  =        Path
        # [3]  =        Base
        # [4]  =        Extension
        # [5]  =    Line
        # [6]  =    Column
        # [7]  = Description
        # [8]  =    Type
        # [9]  =    Variable
        # [10] =    Argument

sub Analyse_Warning
{
    # local variables
    # the full text is something like that:
    # avcodec.h:204: warning: `Motion_Est_QTab' defined but not used
    my ($full_text, $ignore_case, $verbosity) = @_;

    # The location is the position of the warning in the source code:
    # something like that:
    # avcodec.h:204
    my $location,

        # from the location, we can get the following informations:
        # The full path
        my $full_path;
        # The path
        my $path;
        # the file (with the extension)
        my $base;
        # eventually the extension (will effective later)
        my $extension;
        # the line number
        my $line;
        # eventually the column; if specified
        my $col;

    # the description of the warning follows the text ": warning: "
    # `Motion_Est_QTab' defined but not used
    my $description;

        # from the description, we can get the following informations:
        # the warning's type (the text without variable's information)
        # `XYZ' defined but not used
        my $type;
        # The problematic variable, if specified between ` and '
        # Motion_Est_QTab
        my $variable;
        my $argument; # (in some cases can be used)



    # separate the location from the text
    $_ = $full_text;
    if (m/^(.*):\swarning:\s(.*)/i)
    {
        if ($ignore_case ge 1)
        {
            $location       = uc ($1);
        }
        else
        {
            $location = $1;
        }

        $description    = $2;

    }
    else
    {
        if ($verbosity ge 1)
        {
            print STDOUT
                "\nProblem during the analysis of the following text:\n$full_text\n";
        }
        return
		(
			"_unknown_/_unknown_file_._X_:000",     # [0]  = Location
			"_unknown_/_unknown_file_._X_",     	# [1]  =    Full Path
			"_unknown_/",          					# [2]  =        Path
			"_unknown_file_",          				# [3]  =        Base
			"._X_",     							# [4]  =        Extension
			"000",          						# [5]  =    Line
			undef,          						# [6]  =    Column
			$full_text,   							# [7]  = Description
			"unknown",         						# [8]  =    Type
			undef,      							# [9]  =    Variable
			undef,      							# [10] =    Argument
		)
    }

	# Changing all the "\" into "/"
	$location =~ s/\\/\//g;

    # analysing the location
    $_  = $location;
    # Find line and column?
    if (/^(.*):(\d+):(\d+)/)
    {
        $full_path  = $1;
        $line       = $2;
        $col        = $3;
        ($base,$path,$extension) = fileparse($1, qr{\..*});
    }
    # Find only the line?
    elsif (/^(.*):(\d+)/)
    {
        $full_path  = $1;
        $line       = $2;
        $col        = undef;
        ($base,$path,$extension) = fileparse($1, qr{\..*});
    }
    # Find only the path?
    elsif (/^(.*)\s*/)
    {
        $full_path  = $1;
        $line       = 'Not specified';
        $col        = undef;
        ($base,$path,$extension) = fileparse($1, qr{\..*});
    }
    # Problem?
    else
    {
        print STDOUT
            "\nProblem during the analysis of the following location:\n$location\n";
        $full_path  = "_unknown_/_unknown_file_._Y_:000";
        $line       = "000";
        $col        = undef;
        $path       = "_unknown_/";
        $base       = "_unknown_file_";
        $extension  = "._Y_";
    }

    # Analysing the description
    $_ = $description;

    # First, we seach if this is an user's warning
    # something like that: #warning
    if (/\#warning/)
    {
        $type = 'coder\'s warning';
    }
    else
    {
        # remove the name of the variable
        # (i.e. for "unused variable `temp' ")
        # and replace it with a dummy chain (XYZ)
        # blablabla `Pattern' BlaBlaBla

        # searching for the variable (Quoted by " ")
		s/\"([\w\.\[\]\\\/\(\)\s]*)\"/\"XYZ\"/g;

        # searching for the variable (Quoted by ` ')
		s/\`([\w\.\[\]\\\/\(\)\s]*)\'/\`XYZ\'/g;

        # searching for the variable (Quoted by ' ')
		s/\'([\w\.\[\]\\\/\(\)\s]*)\'/\'XYZ\'/g;

        # searching for the argument
        if (s/arg\s(\d+)/arg X/g)
        {
            $argument = $1;
        }

        # patch for the 'deprecated' warning: the declaration location is in the description
        if (s/\(declared\sat\s(.*\:\d+)\)/\(declared at [FILE]\)/g)
        {
            $argument = $1;
        }

        # The type of the warning results of those 2 substitutions,
        # Whatever happens.
	
	
	# $type =~ s/^(\[[0-9]*\]).*/$1/g;
	
	$type = $_;
	
#	$type =~ s/^\[([0-9]+)\].*/$1/g;
	# $type = "foo";
	
	
    }

    # the "undef" in the list is a temporary solution
    # it will be replaced by the file's extension in future versions.
    return
    (
        $location,      # [0]  = Location
        $full_path,     # [1]  =    Full Path
        $path,          # [2]  =        Path
        $base,          # [3]  =        Base
        $extension,     # [4]  =        Extension
        $line,          # [5]  =    Line
        $col,           # [6]  =    Column
        $description,   # [7]  = Description
        $type,          # [8]  =    Type
        $variable,      # [9]  =    Variable
        $argument,      # [10] =    Argument
    );
}

# Now let us define simple functions that get only one field
sub Get_Warning_location
{
    my @tmp = Analyse_Warning @_;
    return $tmp[0];
}

sub Get_Warning_full_path
{
    my @tmp = Analyse_Warning @_;
    return $tmp[1];
}

sub Get_Warning_path
{
    my @tmp = Analyse_Warning @_;
    return $tmp[2];
}

sub Get_Warning_base
{
    my @tmp = Analyse_Warning @_;
    return $tmp[3];
}

sub Get_Warning_extension
{
    my @tmp = Analyse_Warning @_;
    return $tmp[4];
}

sub Get_Warning_line
{
    my @tmp = Analyse_Warning @_;
    return $tmp[5];
}

sub Get_Warning_col
{
    my @tmp = Analyse_Warning @_;
    return $tmp[6];
}

sub Get_Warning_description
{
    my @tmp = Analyse_Warning @_;
    return $tmp[7];
}

sub Get_Warning_type
{
    my @tmp = Analyse_Warning @_;
    return $tmp[8];
}

sub Get_Warning_variable
{
    my @tmp = Analyse_Warning @_;
    return $tmp[9];
}

sub Get_Warning_argument
{
    my @tmp = Analyse_Warning @_;
    return $tmp[10];
}

# To keep "use" happy
1;
