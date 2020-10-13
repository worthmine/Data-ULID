requires 'DateTime';
requires 'Encode::Base32::GMP';
requires 'Exporter';
requires 'Math::BigFloat';
requires 'Math::BigInt';
requires 'Math::Random::Secure';
requires 'Time::HiRes';
requires 'base';
requires 'bytes';
requires 'constant';
requires 'strict';
requires 'warnings';

on build => sub {
    requires 'Test::More';
};
