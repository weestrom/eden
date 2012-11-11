#!/usr/bin/env perl

use warnings;
use strict;
 
use Wx;
use wxPerl::Constructors;

package BoxFrame;

my $button1;
my $button2;
my $button3;
my $box1;
my $box2;
my $box3;
my $sizer;

use base 'Wx::Frame';
sub new {
	my $class = shift;
	my $parent = shift;
	my $title = shift;
	my $self = $class->SUPER::new($parent, -1, $title);
	bless $self, $class;
	$sizer = Wx::BoxSizer->new(&Wx::wxVERTICAL);

  $box1 = wxPerl::StaticBox->new($self, 'Garden Layout', size => [100, 100]);
  $sizer->Add($box1, 1, &Wx::wxEXPAND);
  $button1 = wxPerl::Button->new($self, 'Garden Layout');
  $sizer->Add($button1, 0, &Wx::wxEXPAND);
  $sizer->Hide($button1);
  $box2 = wxPerl::StaticBox->new($self, 'Sun Layout', size => [100, 100]);
  $sizer->Add($box2, 1, &Wx::wxEXPAND);
  $sizer->Hide($box2);
  $button2 = wxPerl::Button->new($self, 'Sun Layout');
  $sizer->Add($button2, 0, &Wx::wxEXPAND);
  $box3 = wxPerl::StaticBox->new($self, 'Plants', size => [100, 100]);
  $sizer->Add($box3, 1, &Wx::wxEXPAND);
  $sizer->Hide($box3);
  $button3 = wxPerl::Button->new($self, 'Plants');
  $sizer->Add($button3, 0, &Wx::wxEXPAND);
  $self->SetSizer($sizer);
  
  Wx::Event::EVT_BUTTON($button1, -1, sub {
   my ($b, $evt) = @_;
   $sizer->Show($box1);
   $sizer->Show($button2);
   $sizer->Show($button3);
   $sizer->Hide($button1);
   $sizer->Hide($box2);
   $sizer->Hide($box3);
   $sizer->Layout; 
  });
  Wx::Event::EVT_BUTTON($button2, -1, sub {
   my ($b, $evt) = @_;
   $sizer->Show($box2);
   $sizer->Show($button1);
   $sizer->Show($button3);
   $sizer->Hide($button2);
   $sizer->Hide($box1);
   $sizer->Hide($box3);
   $sizer->Layout;  
  });
  Wx::Event::EVT_BUTTON($button3, -1, sub {
   my ($b, $evt) = @_;
   $sizer->Show($box3);
   $sizer->Show($button1);
   $sizer->Show($button2);
   $sizer->Hide($button3);
   $sizer->Hide($box1);
   $sizer->Hide($box2);
   $sizer->Layout;  
  });
return $self;
 	
	
}
1;