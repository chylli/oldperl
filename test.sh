#/bin/bash
for ((i=1; i<=10; i++))
do
    (cd ../cpan && git checkout master)
    PERL=/usr/bin/perl
    $PERL -e 'print "$^V\n"'
    $PERL tp.pl 1 >/dev/null 2>&1
    time ($PERL tp.pl > /dev/null 2>&1)

    (cd ../cpan && git checkout chylli/v5.22.2)
    (cd ../perl && git checkout chylli/v5.22.2)
    PERL=/home/git/regentmarkets/perl/bin/perl
    $PERL -e 'print "$^V\n"'
    $PERL tp.pl 1 >/dev/null 2>&1
    time ($PERL tp.pl > /dev/null 2>&1)

    (cd ../cpan && git checkout chylli/v5.24.0)
    (cd ../perl && git checkout chylli/v5.24.0)
    PERL=/home/git/regentmarkets/perl/bin/perl
    $PERL -e 'print "$^V\n"'
    $PERL tp.pl 1 >/dev/null 2>&1
    time ($PERL tp.pl > /dev/null 2>&1)

done
