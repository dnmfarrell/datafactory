package datafactory::View::XML;

use strict;
use base 'Catalyst::View';
use XML::Simple qw(XMLout);
use Moose;

sub process {
	my ($self, $c) = @_;
	my $output = (ref($c->stash->{response}) eq 'HASH' or ref($c->stash->{response}) eq 'ARRAY') ?  XMLout($c->stash->{response}) :  '<anon error="Invalid return value from betfair"/>';
	$c->res->content_type('application/XML; charset=utf-8');
	$c->res->output(
    '<?xml version="1.0" encoding="ISO-8859-1"?>'.$output);
}


__PACKAGE__->meta->make_immutable;
1;
