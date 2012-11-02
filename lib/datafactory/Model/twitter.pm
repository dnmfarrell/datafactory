package datafactory::Model::twitter;
use 5.10.1;
use Moose;
use namespace::autoclean;
use Encode;
use LWP::UserAgent;

extends 'Catalyst::Model';

sub search {
	my ($self, $query) = @_;	
	return $query;	
}

__PACKAGE__->meta->make_immutable;

1;
