#!/usr/bin/env perl

use warnings;
use strict;
 
use Wx;
use wxPerl::Constructors;
use BoxFrame;

package MyApp;

use base 'Wx::App';
sub OnInit {
  my $self = shift;
  my $frame = BoxFrame->new(undef, 'Toolbars');
  $frame->Show;
}
MyApp->new->MainLoop;