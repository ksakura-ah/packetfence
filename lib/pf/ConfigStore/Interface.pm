package pf::ConfigStore::Interface;
=head1 NAME

pf::ConfigStore::Profile add documentation

=cut

=head1 DESCRIPTION

pf::ConfigStore::Switch;

=cut

use Moo;
use namespace::autoclean;
use pf::ConfigStore::Pf;
use pf::ConfigStore::Group;

extends 'pf::ConfigStore';
with 'pf::ConfigStore::Group';

sub group { 'interface' };

sub pfconfigNamespace {'config::Pf'};

=head2 Methods

=over

=item _buildCachedConfig

=cut

sub _buildCachedConfig { pf::ConfigStore::Pf->new->cachedConfig() }

__PACKAGE__->meta->make_immutable unless $ENV{"PF_SKIP_MAKE_IMMUTABLE"};

=back

=head1 COPYRIGHT

Copyright (C) 2005-2018 Inverse inc.

=head1 LICENSE

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

1;
