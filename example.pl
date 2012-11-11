#!/usr/bin/env perl

use warnings;
use strict;
 
use Wx;
use wxPerl::Constructors;

package MyApp;

use base 'Wx::App';
sub OnInit {
  my $self = shift;
  my $frame = wxPerl::Frame->new(undef, 'A wxPerl Application');
  $frame->SetMinSize([120,80]);
  my $sizer = Wx::BoxSizer->new(&Wx::wxVERTICAL);

  my $button = wxPerl::Button->new($frame, 'Click Me');
  $sizer->Add($button, 2, &Wx::wxEXPAND);
  my $button2 = wxPerl::Button->new($frame, 'DO NOT CLICK');
  my $button3 = wxPerl::Button->new($frame, 'DO NOT CLICK');
  $sizer->Add($button2, 1, &Wx::wxEXPAND);
  $sizer->Add($button3, 1, &Wx::wxEXPAND);
  
  Wx::Event::EVT_BUTTON($button, -1, sub {
   my ($b, $evt) = @_;
    $b->SetLabel('Clicked');
    $b->Disable;
  });
  Wx::Event::EVT_BUTTON($button2, -1, sub {
  });

  $frame->SetSizer($sizer);
  $frame->Show;
}
MyApp->new->MainLoop;