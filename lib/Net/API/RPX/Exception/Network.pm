use strict;
use warnings;

package Net::API::RPX::Exception::Network;

# ABSTRACT: A Class of exceptions for network connectivitiy issues.

our $VERSION = '1.000000';

# AUTHORITY

use Moose;
use namespace::autoclean;

extends 'Net::API::RPX::Exception';

has 'ua_result'   => ( isa => "Ref", is => 'ro', required => 1 );
has 'status_line' => ( isa => "Str", is => 'ro', required => 1 );

__PACKAGE__->_immutable;
1;

