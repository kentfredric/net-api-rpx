use 5.006;
use strict;
use warnings;

package Net::API::RPX::Exception;

# ABSTRACT: A Base class for Net::API::RPX exceptions.

our $VERSION = '1.000002';

# AUTHORITY

use Moose qw( extends with );

extends 'Throwable::Error';

with qw( Throwable::X );

__PACKAGE__->meta->make_immutable( inline_constructor => 0 );

no Moose;

1;

