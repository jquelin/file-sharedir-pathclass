#!perl

use 5.010;
use strict;
use warnings;

use File::ShareDir ();
use File::ShareDir::PathClass '-all';
use Test::More;

eval "use Games::Risk 3.101110";
plan $@
    ? ( skip_all => 'Games-Risk 3.101110 needed for this test' )
    : ( tests => 2 );

my $fsdir = File::ShareDir::dist_dir( 'Games-Risk' );
my $dir   = dist_dir( 'Games-Risk' );
isa_ok( $dir, 'Path::Class::Dir', "dist_dir() is wrapped" );
is( $dir->stringify, $fsdir, "dist_dir() is correctly wrapped" );
