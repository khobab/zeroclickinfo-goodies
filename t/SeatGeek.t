#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Spice;

ddg_spice_test(
    [qw( DDG::Spice::SeatGeek::Concerts DDG::Spice::SeatGeek::Sports)],
    'live show weezer' => test_spice(
        '/js/spice/seat_geek_concerts/weezer',
        call_type => 'include',
        caller => 'DDG::Spice::SeatGeek::Concerts'
    ),
    'weezer live show' => test_spice(
        '/js/spice/seat_geek_concerts/weezer',
        call_type => 'include',
        caller => 'DDG::Spice::SeatGeek::Concerts'
    ),
    'weezer live shows' => test_spice(
        '/js/spice/seat_geek_concerts_concerts/weezer',
        call_type => 'include',
        caller => 'DDG::Spice::SeatGeek::Concerts'
    ),
    'live shows weezer' => test_spice(
        '/js/spice/seat_geek_concerts_concerts/weezer',
        call_type => 'include',
        caller => 'DDG::Spice::SeatGeek::Concerts'
    ),
    'live weezer' => test_spice(
        '/js/spice/seat_geek_concerts/weezer',
        call_type => 'include',
        caller => 'DDG::Spice::SeatGeek::Concerts'
    ),
    'weezer live' => test_spice(
        '/js/spice/seat_geek_concerts/weezer',
        call_type => 'include',
        caller => 'DDG::Spice::SeatGeek::Concerts'
    ),
    'upcoming concerts in flames' => test_spice(
        '/js/spice/seat_geek_concerts/in-flames',
        caller => 'DDG::Spice::SeatGeek::Concerts',
    ),
    'In Flames upcoming concerts' => test_spice(
        '/js/spice/seat_geek_concerts/in-flames',
        caller => 'DDG::Spice::SeatGeek::Concerts',
    ),
    'concert in flames' => test_spice(
        '/js/spice/seat_geek_concerts/in-flames',
        caller => 'DDG::Spice::SeatGeek::Concerts',
    ),
    'in flames concert' => test_spice(
        '/js/spice/seat_geek_concerts/in-flames',
        caller => 'DDG::Spice::SeatGeek::Concerts',
    ),
    'upcoming matches milan' => test_spice(
        '/js/spice/seat_geek_sports/milan',
        caller => 'DDG::Spice::SeatGeek::Sports'
    ),
    'events uefa' => test_spice(
        '/js/spice/seat_geek_sports/uefa',
        caller => 'DDG::Spice::SeatGeek::Sports'
    )
);

done_testing;