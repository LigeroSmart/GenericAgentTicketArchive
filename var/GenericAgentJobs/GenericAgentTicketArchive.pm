package var::GenericAgentJobs::GenericAgentTicketArchive;
use strict;
use warnings;
use utf8;
use vars qw(@ISA @EXPORT %Jobs);
use Exporter;
@ISA    = qw(Exporter);
@EXPORT = qw(%Jobs);

%Jobs = (
    'arquivar' => {
        # get all tickets with these properties
        States => ["closed successful","closed unsuccessful"],
        # tickets closed older than 9 weeks (60 *24 *7* 9)
        TicketLastCloseTimeOlderMinutes => 90720,
        New => {
            # Archive!
            ArchiveFlag => 1,
        },
    },
);
1;
