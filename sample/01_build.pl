use strict;
use warnings;
use File::Spec;
use FindBin::libs;
use Text::SimSearch;

my $source_file
    = File::Spec->catfile( $FindBin::RealBin, "data", "sample.txt" );

my $indexer = Text::SimSearch->new;

$indexer->add_item_from_file($source_file);
$indexer->save("save.bin");
