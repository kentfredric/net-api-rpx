use 5.006;
use strict;
use warnings;

package Net::API::RPX::Exception;

# ABSTRACT: A Base class for Net::API::RPX exceptions based on L<Throwable::X>

our $VERSION = '1.000000';

our $AUTHORITY = 'cpan:KONOBI'; # AUTHORITY

use Moose;

extends 'Throwable::Error';

with qw( Throwable::X );

use Throwable::X -all;

__PACKAGE__->meta->make_immutable( inline_constructor => 0 );

no Moose;

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Net::API::RPX::Exception - A Base class for Net::API::RPX exceptions based on L<Throwable::X>

=head1 VERSION

version 1.000000

=head1 AUTHORS

=over 4

=item *

Scott McWhirter <konobi@cpan.org>

=item *

Kent Fredric <kentnl@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2015 by Cloudtone Studios.

This is free software, licensed under:

  The (three-clause) BSD License

=cut
