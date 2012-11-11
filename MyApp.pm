# load wxPerl main module
use Wx;

# every application must create an application object
package MyApp;

use base 'Wx::App';

# this method is called automatically when an application object is
# first constructed, all application-level initialization is done here
sub OnInit {
	# create a new frame (a frame is a top level window)
    my $frame = Wx::Frame->new( undef,           # parent window
                                -1,              # ID -1 means any
                                'wxPerl rules',  # title
                                [-1, -1],         # default position
                                [250, 150],       # size
                               );
                                 # show the frame
    $frame->Show( 1 );
}

1;