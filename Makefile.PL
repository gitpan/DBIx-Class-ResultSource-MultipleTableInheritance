use strict;
use warnings;
use inc::Module::Install;

if ($Module::Install::AUTHOR) {
    system(
        'pod2text lib/DBIx/Class/ResultSource/MultipleTableInheritance.pm > README'
    );
    system(
        'pod2html lib/DBIx/Class/ResultSource/MultipleTableInheritance.pm > README.html'
    );
}

name 'DBIx-Class-ResultSource-MultipleTableInheritance';
all_from 'lib/DBIx/Class/ResultSource/MultipleTableInheritance.pm';

configure_requires 'DBIx::Class' => '0.08191';
require DBIx::Class::Optional::Dependencies;

my $deploy_deps = DBIx::Class::Optional::Dependencies->req_list_for('deploy');

for ( keys %$deploy_deps ) {
    requires $_ => $deploy_deps->{$_};
}

requires 'Carp::Clan';
requires 'DBIx::Class';
requires 'Method::Signatures::Simple';
requires 'String::TT';
requires 'aliased';
requires 'namespace::autoclean';
requires 'parent';
requires 'SQL::Translator' => '0.11010';

test_requires 'Module::Find';

auto_install;
WriteAll;
