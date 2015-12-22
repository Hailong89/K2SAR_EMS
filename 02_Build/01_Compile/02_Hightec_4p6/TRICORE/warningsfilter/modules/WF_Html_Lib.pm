# ***************************************************************************
#                             WF_Html_Lib.pm  
#                   Methodes for building HTML documents
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
# date 		= 26.05.2005

use warnings;
use HTML::Entities;

# returns a HTML beginning marker
sub Html_Begin
{
    return
        '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">'.
        "\n".
        '<HTML>'.
        "\n";
}

# returns the end of an HTML document
sub Html_End
{
    return
        '</HTML>'.
        "\n".
        "\n";       # final end of line for text document
}

# Argument is a string - the title.
sub Html_Begin_Head
{
    #my ($title) = @_;
	my $title = encode_entities($_[0]);
    return
        '<HEAD>'."\n".
        "\t".'<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=iso-8859-1">'."\n".
    "\t".'<TITLE>'.$title.'</TITLE>'."\n".
    "\t".'<META NAME="GENERATOR" CONTENT="WarnungsFilter'.
    $WF_version.'.'.$WF_release.
    '(Perl)">'."\n"
    #"\t".'<META NAME="CREATED" CONTENT="20031229;16050400">'."\n".
    #"\t".'<META NAME="CHANGED" CONTENT="20040106;22150000">'."\n"
    ;
}

sub Html_End_Head
{
    return
        '</HEAD>'.
        "\n";

}

sub Html_Begin_Body
{
    return
        '<BODY LANG="en-US" TEXT="#000000" LINK="#0000ff" VLINK="#840084" BGCOLOR="#ffffff">'.
        "\n";
}

sub Html_End_Body
{
    return
        '</BODY>'.
        "\n";
}

# Horizontal line
# no argument
sub Html_Insert_HLine
{
    return '<HR>'."\n";
}

## Text
# beginning of a paragraph
sub Html_Para_Begin
{
    return "\t".'<P>';
}

sub Html_Para_End
{
    return '</P>'."\n";
}

# Copyright information
sub Html_Info_Paragraph
{
	return $Html_Lib_Info;
}

# Common indexes at the end of file
# argument is the sublevel (relative to the out_dir of the tool)
sub Html_Common_End
{
    my ($level) = @_;
    my $relative_path = './';
    for my $i (1 .. $level)
    {
        $relative_path .= '../';
    }
    return
        Html_Para_Begin().
        HTML_Create_Hlink
        (
            "$relative_path".'./index.html',
            "Main menu"
        )
        .
        '<BR>'
        .
        HTML_Create_Hlink
        (
            "$relative_path".'Main_Dir/index.html',
            "Index of the main directories"
        )
        .
        '<BR>'
        .
        HTML_Create_Hlink
        (
            "$relative_path".'Dir/index.html',
            "Index of all the directories"
        )
        .
        '<BR>'
        .
        HTML_Create_Hlink
        (
            "$relative_path".'Files/index.html',
            "Index of the files"
        )
        .
        '<BR>'
        .
        HTML_Create_Hlink
        (
            "$relative_path".'Ext/index.html',
            "Index of the type of files"
        )
        .
        '<BR>'
        .
        HTML_Create_Hlink
        (
            "$relative_path".'Warnings/index.html',
            "Index of Categories"
        )
        .
        '<BR>'
        .
        HTML_Create_Hlink
        (
			"$FindBin::Bin/Doc/about_WF.html",
            "About the Tool"
        ).
        Html_Para_End()
        ;
}

# Header 1 text
sub Html_H1_Begin
{
    return "\t".'<H1>';
}

sub Html_H1_End
{
    return '</H1>'."\n";
}

# Convert the text, if required ( especially for characters like <,>,...
sub Html_Encode_Entities
{
    # return $_[0];
    return encode_entities ($_[0]);
}
sub Html_New_Line
{
	return '<BR>';
}

## Tables
# I know, they are very simple. But this is the first version....
# argunments are
# Columns

sub Html_Table_Begin
{
    #my ($col) = @_;
	my $col = encode_entities ($_[0]);
    my $tmp = '<TABLE WIDTH=100% BORDER=1 CELLPADDING=4 CELLSPACING=4>'."\n";
	for my $i (1 .. eval($col))
    {
        $tmp .= "\t".'<COL WIDTH=51*>'."\n";
    }

    return $tmp;
}

# No arguments
sub Html_Table_End
{
    return '</TABLE>'."\n";
}

sub Html_Table_Begin_Header
{
    return "\t".'<THEAD>'."\n";
}

sub Html_Table_End_Header
{
    return "\t".'</THEAD>'."\n";
}

sub Html_Table_Begin_Body
{
    return "\t".'<TBODY>'."\n";
}

sub Html_Table_End_Body
{
    return "\t".'</TBODY>'."\n";
}

# Aguments is a list of cells. As you like...
# this is very basic...

sub Html_Table_Add_Row
{
    my @list_of_cells = @_;
    my ($number_of_cells) = $#{@_};
    my $width;  # cell's width + formated text
    #my $i;		# cell's counter

    if ($number_of_cells eq -1) # no arguments
    {
        return '';
    }
    else
    {
        $width = "\t\t\t".'<TH WIDTH='.(100 / ($number_of_cells + 1)).'%>'."\n";
    }

    my $tmp =
        "\t\t".'<TR VALIGN=TOP>'."\n";
    for my $i (0 .. $number_of_cells)
    {
        $tmp .=
            $width .
            "\t\t\t\t".$list_of_cells[$i]."\n".
            "\t\t\t".'</TH>'."\n";
    }

   $tmp .= "\t\t".'</TR>'."\n";

   return $tmp;
}

## Hyperlink
# Creates an hyperlink
# (link, text, name)
sub HTML_Create_Hlink
{
    my ($link, $text, $name) = @_;
	$text = encode_entities ($text);
    if (not ($name))
    {
        $name = '';
    }
    else
    {
        $name = '" NAME="'."$name";
    }
    return
            '<A HREF="'.
            "$link".
            "$name".
            '">'.
            "$text".
            '</A>';
}

# Argument is the reference's name
sub HTML_Create_HRef
{
    return '<A NAME="'.$_[0].'"></A>';
}


# The date, copyright and informations are computed only one time at the end of this module

	my($sec,$min,$hour,$mday,$month,$year,undef,undef,undef) =
    localtime(time);
    $month++;
    $year += 1900;

    my $Date = "$mday.$month.$year at $hour:$min:$sec";

    $Html_Lib_Info =
	    Html_Para_Begin().
	    "Generated ".
#	    "Generated on $Date from $WF_Input_File ".
	    "by WarnungsFilter $WF_version.$WF_release ".
	    "(built $WF_date_of_issue)".
	    '<BR>'.
	    'Copyright &copy; 2003 - 2007 by HighTec EDV-Systeme GmbH'.'<BR>'.
		'See ' .
	        HTML_Create_Hlink
	        (
				"$FindBin::Bin/Doc/gpl.html",
	            "GNU Public Licence"
	        ).
			' for details.' .
	    Html_Para_End();

	 
# the pachage returns 1
1;
