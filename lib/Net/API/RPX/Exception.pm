use strict;
use warnings;

package Net::API::RPX::Exception;

# ABSTRACT: A Base class for Net::API::RPX exceptions based on L<Throwable::X>

our $VERSION = '1.000000';

# AUTHORITY

use Moose;

extends 'Throwable::Error';

with qw( Throwable::X );

use Throwable::X -all;

__PACKAGE__->meta->make_immutable( inline_constructor => 0 );

no Moose;

1;

