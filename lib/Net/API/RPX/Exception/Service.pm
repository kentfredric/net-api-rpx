use 5.006;
use strict;
use warnings;

package Net::API::RPX::Exception::Service;

# ABSTRACT: A Class of exceptions for delivering problems from the RPX service.

our $VERSION = '1.000002';

# AUTHORITY

use Moose qw( has extends );
use namespace::autoclean;

extends 'Net::API::RPX::Exception';

my $rpx_errors = {
  -1 => 'Service Temporarily Unavailable',
  0  => 'Missing parameter',
  1  => 'Invalid parameter',
  2  => 'Data not found',
  3  => 'Authentication error',
  4  => 'Facebook Error',
  5  => 'Mapping exists',
};

has 'data'              => ( isa => 'Any', is => 'ro', required => 1 );
has 'status'            => ( isa => 'Any', is => 'ro', required => 1 );
has 'rpx_error'         => ( isa => 'Any', is => 'ro', required => 1 );
has 'rpx_error_code'    => ( isa => 'Any', is => 'ro', required => 1 );
has 'rpx_error_message' => ( isa => 'Any', is => 'ro', required => 1 );
has
  'rpx_error_code_description' => ( isa => 'Any', is => 'ro', required => 1, lazy => 1, ),
  , builder => '_build_rpx_error_code_description';

__PACKAGE__->meta->make_immutable( inline_constructor => 0 );
no Moose;

sub _build_rpx_error_code_description {
  my ($self) = shift;
  return $rpx_errors->{ $self->rpx_error_code };
}
1;

