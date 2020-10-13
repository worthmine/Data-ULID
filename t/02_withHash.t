use strict;
use warnings;
use DateTime;
use Test::More tests => 2;

use Data::ULID qw/ulid binary_ulid ulid_date uuid_to_ulid ulid_to_uuid/;

my $old_ulid = '01B3Z3A7GQ6627FZPDQHQP87PM';
my $fixed_t  = 1481797018.267;
my $fixed_dt = DateTime->from_epoch( epoch => $fixed_t );

my $ulid   = ulid();
my $b_ulid = binary_ulid($ulid);
my $dt     = ulid_date( $ulid, time_zone => 'Asia/Tokyo' );

ok( $dt->isa("DateTime"), "ulid_date() yields DateTime" );

my $b_dt = ulid_date( $b_ulid, time_zone => 'Asia/Tokyo' );

ok( "$dt" eq "$b_dt", "Canonical and binary ULID yield same DateTime" );

done_testing();
