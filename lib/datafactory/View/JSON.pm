package datafactory::View::JSON;

use strict;
use base 'Catalyst::View';
use JSON::XS qw(encode_json);
use Moose;
use Data::Dumper;

sub process {
	my ($self, $c) = @_;
    my $output = (ref($c->stash->{response}) eq 'HASH' or ref($c->stash->{response}) eq 'ARRAY') ? encode_json $c->stash->{response} :  '{"error" => "Invalid return value from datafactory" }';
	$c->res->content_type('application/JSON; charset=utf-8');
	$c->res->output($output);
}

__PACKAGE__->meta->make_immutable;
1;
