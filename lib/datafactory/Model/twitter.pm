package datafactory::Model::twitter;
use 5.10.1;
use Moose;
use namespace::autoclean;
use Encode;
use LWP::UserAgent;
use JSON::XS qw(decode_json);

extends 'Catalyst::Model';

sub search {
	my ($self, $query) = @_;
	my $tweets = $self->searchApi($query);
	return $tweets ? decode_json $tweets : 0;
}

sub searchApi {
	my ($self, $query) = @_;
	my $ua = LWP::UserAgent->new;
	my $response = $ua->get("http://search.twitter.com/search.json?q=$query");
	if ($response->is_success){
		return encode('utf8', $response->decoded_content);
	}
	else {
       	say STDERR $response->status_line;
       	return 0;
    }	
}

__PACKAGE__->meta->make_immutable;

1;
