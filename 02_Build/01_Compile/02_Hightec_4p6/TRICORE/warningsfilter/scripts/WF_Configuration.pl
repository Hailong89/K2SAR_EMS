# ***************************************************************************
#                            WF_Analyse_Warnings.pl
#                       This script configures the tool
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


# version 	= 1.006
# date 		= 02.08.2005

# require some packages...
	# for debugging
    use warnings;
    # Utilities for directory creation/deletion
    use File::Path;
    # module that get the work directory
    use Cwd;

    # methods for config file reading,
    # help and version displaying...
    use WF_Config;

    # Utilities for filename editing
    use File::Basename;

# First step: Analysing the arguments

# No arguments?
# Stop with error message
if ($#WF_line_args lt 0)
{
    print STDERR "ERROR: WarnungsFilter $WF_version.$WF_release (Built  $WF_date_of_issue) type WarnungsFilter.pl --help for help\n";
    exit 1;
}

# the followings arguments are known:
# Without value
$WF_arg_Help        = undef;    # is 1 if the user asks for help
$WF_arg_History		= undef;	# is 1 if the user asks for the history
$WF_arg_Version     = undef;    # is 1 if the user asks for version
$WF_arg_Silent      = undef;    # is 1 if the used doesn't
                                # want anything on the STDERR

# With value
$WF_arg_Verbosity   = undef;    # Verbosity level (0 .. 5)
$WF_arg_Sort_Option = undef;	# Sort type (1..4)
$WF_arg_Input_File  = undef;    # Input file
$WF_arg_Log_File    = undef;    # Tool's log file
$WF_arg_Config_File = undef;    # Tool's configuration file
$WF_arg_OS          = undef;    # Operating system
$WF_arg_Out_Dir     = undef;    # Output directory
$WF_arg_Warning_Url_Database = undef;   # Linker to the help!

foreach (@WF_line_args)
{

    # Arguments without values
    # (--argument)
    if (m/^--help$/)
    {
        $WF_arg_Help = 1;
    }
    elsif (m/^--history$/)
    {
        $WF_arg_History = 1;
    }
    elsif (m/^--version$/)
    {
        $WF_arg_Version = 1;
    }
    elsif (m/^--silent$/)
    {
        $WF_arg_Silent = 1;
    }
    elsif (m/^--ignore-case$/)
    {
        $WF_arg_Ignore_Case = 1;
    }

    # Arguments with values
    # (--argument=value)
    elsif (m/^--verbosity=(.+)$/)
    {
        $WF_arg_Verbosity = $1;
    }
    elsif (m/^--sort=(.+)$/)
    {
        $WF_arg_Sort_Option = $1;
    }
    elsif (m/^--input-file=(.+)$/)
    {
        $WF_arg_Input_File = $1;
    }
    elsif (m/^--log-file=(.+)$/)
    {
        $WF_arg_Output_File = $1;
    }
    elsif (m/^--config-file=(.+)$/)
    {
        $WF_arg_Config_File = $1;
    }
    elsif (m/^--OS=(.+)$/)
    {
        $WF_arg_OS = $1;
    }
    elsif (m/^--out-dir=(.+)$/)
    {
        $WF_arg_Out_Dir = $1;
    }
    elsif (m/^--warning-url-database=(.+)$/)
    {
        $WF_arg_Warning_Url_Database = $1;
    }
    else
    {
        print STDERR "ERROR: The argument ($_) or its syntax is not correct.\n";
        exit 1;
    }
}

# Print licence
print STDOUT '***************************************************************************'."\n";
print STDOUT '          WarnungsFilter  -  Filter for the Warnings of the Gcc Compiler   '."\n";
print STDOUT '                            -------------------							 '."\n";
print STDOUT '   begin                : 20 Dec 2003							    		 '."\n";
print STDOUT '   copyright            : (C) 2003 - 2007 by HighTec EDV-Systeme GmbH   '."\n";
print STDOUT '***************************************************************************'."\n";
print STDOUT '																		     '."\n";
print STDOUT '***************************************************************************'."\n";
print STDOUT '*                                                                         *'."\n";
print STDOUT '*   This program is free software; you can redistribute it and/or modify  *'."\n";
print STDOUT '*   it under the terms of the GNU General Public License as published by  *'."\n";
print STDOUT '*   the Free Software Foundation; either version 2 of the License, or     *'."\n";
print STDOUT '*   (at your option) any later version.                                   *'."\n";
print STDOUT '*                                                                         *'."\n";
print STDOUT '***************************************************************************'."\n";


# Need help?
if ($WF_arg_Help)
{
    Print_Help();
    exit 0;
}

# Want version?
if ($WF_arg_Version)
{
    Print_Version();
    exit 0;
}

# Want history?
if ($WF_arg_History)
{
    Print_History();
    exit 0;
}

$WF_cfg_Silent      = undef;
$WF_cfg_Verbosity   = undef;
$WF_cfg_Sort_Option = undef;
$WF_cfg_Ignore_Case = undef;
$WF_cfg_Input_File  = undef;
$WF_cfg_Log_File    = undef;
$WF_cfg_OS          = undef;
$WF_cfg_Out_Dir     = undef;
$WF_cfg_Warning_Url_Database = undef;

# Specify the configuration file?
if ($WF_arg_Config_File)
{
    # Reading the main configuration
    # This is local, because we don't need it after this
    my %WF_config = Read_Config_File($WF_arg_Config_File,0);

    # Getting the interessant keys:
    $WF_cfg_Silent      = Get_Key('silent', 'WarnungsFilter', %WF_config, 1);
    $WF_cfg_Verbosity   = Get_Key('verbosity', 'WarnungsFilter', %WF_config, 1);
    $WF_cfg_Ignore_Case = Get_Key('ignore_case', 'WarnungsFilter', %WF_config, 1);

    $WF_cfg_Input_File  = Get_Key('input_file', 'WarnungsFilter', %WF_config, 1);
    $WF_cfg_Log_File    = Get_Key('log_file', 'WarnungsFilter', %WF_config, 1);
    $WF_cfg_OS          = Get_Key('OS', 'WarnungsFilter', %WF_config, 1);
    $WF_cfg_Out_Dir     = Get_Key('out_dir', 'WarnungsFilter', %WF_config, 1);
    $WF_cfg_Warning_Url_Database = Get_Key('warning_url_database', 'WarnungsFilter', %WF_config, 1);
}

# Now processing the input configuration, and assume default for the missing parameters

$WF_Silent      = Get_First_Def_Par ($WF_arg_Silent, $WF_cfg_Silent, 0);
$WF_Verbosity   = Get_First_Def_Par ($WF_arg_Verbosity, $WF_cfg_Verbosity, 2);
$WF_Sort_Option = Get_First_Def_Par ($WF_arg_Sort_Option, $WF_cfg_Sort_Option, 3);
$WF_Ignore_Case = Get_First_Def_Par ($WF_arg_Ignore_Case, $WF_cfg_Ignore_Case, 0);
$WF_Input_File  = Get_First_Def_Par ($WF_arg_Input_File, $WF_cfg_Input_File, undef);
$WF_Log_File    = Get_First_Def_Par ($WF_arg_Log_File, $WF_cfg_Log_File, 'WF.log');
$WF_OS          = Get_First_Def_Par ($WF_arg_OS, $WF_cfg_OS, $^O);
$WF_Out_Dir     = Get_First_Def_Par ($WF_arg_Out_Dir, $WF_cfg_Out_Dir, '.auto_wf/');
$WF_Warning_Url_Database = Get_First_Def_Par ($WF_arg_Warning_Url_Database, $WF_cfg_Warning_Url_Database, "$FindBin::Bin/Help/Url_Database.pl");

# Is the input_file specified?
if (not($WF_Input_File))
{
    print STDERR "ERROR: You forgot to specify the input file to analyse!\n";
    exit 1;
}
# Getting the file name for the other tools...
($WF_Input_File_Base, undef, undef) = fileparse($WF_Input_File);

# get the current directory
# Add the '/' because this function doesn't do it...
$WF_Work_Dir = getcwd . '/';

# read the link to the help file
if ($WF_Warning_Url_Database)
{
	Read_Url_Database($WF_Warning_Url_Database);
}

# Creating the out_directory
mkpath
(
    [
        "$WF_Out_Dir".'Files',      # Sorted by file
        "$WF_Out_Dir".'Main_Dir',   # Sorted by main directory
        "$WF_Out_Dir".'Dir',        # Sorted by directory
        "$WF_Out_Dir".'Warnings',   # Sorted by category
        "$WF_Out_Dir".'Ext',        # Sorted by extension
        "$WF_Out_Dir".'Lists'       # The listings
    ],
    $WF_Verbosity,      # Verbosity
    0711    			# Rights (Unix only)
)
;

# Removing the html files from the out_directory, if exist
# But I don't know the command...

# return 1...
1;
