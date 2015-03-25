use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::EOLTests 0.17

use Test::More 0.88;
use Test::EOL;

my @files = (
    'lib/Net/API/RPX.pm',
    'lib/Net/API/RPX/Exception.pm',
    'lib/Net/API/RPX/Exception/Network.pm',
    'lib/Net/API/RPX/Exception/Service.pm',
    'lib/Net/API/RPX/Exception/Usage.pm',
    't/00-compile.t',
    't/00-load.t',
    't/000-report-versions-tiny.t',
    't/01-basic.t',
    't/02-exceptions.t',
    't/mock/LWP/UserAgent.pm',
    't/pod-coverage.t',
    't/pod.t'
);

eol_unix_ok($_, { trailing_whitespace => 1 }) foreach @files;
done_testing;
