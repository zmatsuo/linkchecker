#!/usr/local/bin/perl

use strict;
use warnings;

use Test::More('no_plan');

require_ok('./linkchecker.pl');

# get_directory
{
  my $dir;
  $dir = get_directory('/foo/bar');
  is($dir, '/foo/');
  $dir = get_directory('/foo/');
  is($dir, '/foo/');
}
