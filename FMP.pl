#!/bin/perl -w

######################################################
# Filename.......: FMP.pl
# Description....: Main program
#
######################################################

our %a_Property;
our %a_Variable;
our %a_Severity;

# Module calls
use Cwd;
use warnings;
use strict;
use Monitoring::Functions;

# Global variables
out $TRUE = 1;
our $FALSE = 0;
our $NULL =  "null";

# Global input variables

# Local variables
my $LOGROTATE;
my $OLDSTDOUT;
my $b_ErrorFound;

# Let's initialize the plugin
($b_ErrorFound, $LOGROTATE, $OLDSTDOUT) = &Init();

# If no error while initializing, let's continue the job
if (! $b_ErrorFound)
{
  print "Initialization OK\n";
}
else
{
  print "An error occurred while initializing\n";
}
