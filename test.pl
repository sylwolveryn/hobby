#!/usr/bin/perl -w

use strict;
use IO::File;

my $out_fh = IO::File->new(">>/tmp/output.log");
die "failed to open /tmp/output.log" unless defined $out_fh;

my $ref_db = FastaDb->new($fasta);
while( my $seq = $ref_db->next_seq() ) {
        foreach(@ko_array) {
                print $out_fh $seq->header()."\n".$seq->seq()."\n"
                        if $seq->header() =~ m/($_)/;
        }
}

$out_fh->close;