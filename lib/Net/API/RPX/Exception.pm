use strict;
use warnings;

package Net::API::RPX::Exception;

# ABSTRACT:  A Baseclass for Net::API::RPX exceptions based on L<Throwable::X>

our $VERSION = '1.000000';

# AUTHORITY

use Moose;

extends 'Throwable::Error';

with qw( Throwable::X );

use Throwable::X -all;

sub _immutable {
  (shift)->meta->make_immutable( inline_constructor => 0 );
}
__PACKAGE__->_immutable;

1;

