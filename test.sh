for ((i=1; i<=10; i++))
do
    (cd ../cpan && git checkout master)
    PERL=/usr/bin/perl
    perl -v
    /usr/bin/perl tp.pl 1 >/dev/null
    echo time (/usr/bin/perl tp.pl > /dev/null)

    (cd ../cpan && git checkout chylli/v5.22.2)
    (cd ../perl && git checkout chylli/v5.22.2)
    PERL=/home/git/regentmarkets/perl/bin/perl
    $PERL -v
    $PERL tp.pl 1 >/dev/null
    echo time ($PERL tp.pl > /dev/null)

    (cd ../cpan && git checkout chylli/v5.24.0)
    (cd ../perl && git checkout chylli/v5.24.0)
    PERL=/home/git/regentmarkets/perl/bin/perl
    $PERL -v
    $PERL tp.pl 1 >/dev/null
    echo time ($PERL tp.pl > /dev/null)

done
