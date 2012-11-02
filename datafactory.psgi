use strict;
use warnings;

use datafactory;

my $app = datafactory->apply_default_middlewares(datafactory->psgi_app);
$app;

