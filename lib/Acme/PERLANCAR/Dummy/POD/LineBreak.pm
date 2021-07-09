package Acme::PERLANCAR::Dummy::POD::LineBreak;

# AUTHORITY
# DATE
# DIST
# VERSION

1;
# ABSTRACT: Testing linebreaks

=head1 DESCRIPTION

Other things that don't work: EZ<><br> is not recognized. EZ<><13> is ignored.


=head1 WITHOUT LINEBREAK

B<foobar> [B<--opt1>|B<-O>] [B<--regex>|B<--wildcard>] [B<-a>] [B<-u>]
[B<--moreoption1>=I<value>] [B<--moreoption2>=I<value>]
[B<--moreoption3>=I<value>] [B<--moreoption4>=I<value>]
[B<--moreoption5>=I<value>] [B<--moreoption6>=I<value>]
[B<--moreoption7>=I<value>] [B<--moreoption8>=I<value>]
[B<--moreoption9>=I<value>] [B<--moreoption10>=I<value>]
[B<--moreoption11>=I<value>] [B<--moreoption12>=I<value>]
E<lt>I<filename>E<gt> ...


=head1 WITH EZ<><10>

B<foobar> [B<--opt1>|B<-O>] [B<--regex>|B<--wildcard>] [B<-a>] [B<-u>] E<10>
[B<--moreoption1>=I<value>] [B<--moreoption2>=I<value>] E<10>
[B<--moreoption3>=I<value>] [B<--moreoption4>=I<value>] E<10>
[B<--moreoption5>=I<value>] [B<--moreoption6>=I<value>] E<10>
[B<--moreoption7>=I<value>] [B<--moreoption8>=I<value>] E<10>
[B<--moreoption9>=I<value>] [B<--moreoption10>=I<value>] E<10>
[B<--moreoption11>=I<value>] [B<--moreoption12>=I<value>] E<10>
E<lt>I<filename>E<gt> ...

The result: 1/10. B<pod2text> ignores the linebreak. B<pod2man> creates a blank
line (new paragraph) instead of line break. B<pod2html> ignores the linebreak.


=head1 WITH EZ<><10> + EZ<><8>

B<foobar> [B<--opt1>|B<-O>] [B<--regex>|B<--wildcard>] [B<-a>] [B<-u>] E<10> E<8>[B<--moreoption1>=I<value>] [B<--moreoption2>=I<value>] E<10> E<8>[B<--moreoption3>=I<value>] [B<--moreoption4>=I<value>] E<10> E<8>[B<--moreoption5>=I<value>] [B<--moreoption6>=I<value>] E<10> E<8>[B<--moreoption7>=I<value>] [B<--moreoption8>=I<value>] E<10> E<8>[B<--moreoption9>=I<value>] [B<--moreoption10>=I<value>] E<10> E<8>[B<--moreoption11>=I<value>] [B<--moreoption12>=I<value>] E<10> E<8>E<lt>I<filename>E<gt> ...

The result: 7/10. B<pod2text> renders it as intended. B<pod2man> renders it as
intended. B<pod2html> ignores the linebreak.

Reference: L<https://www.nntp.perl.org/group/perl.beginners/2006/08/msg85687.html>


=head1 WITH =item

=over

=item B<foobar> [B<--opt1>|B<-O>] [B<--regex>|B<--wildcard>] [B<-a>] [B<-u>]

=item [B<--moreoption1>=I<value>] [B<--moreoption2>=I<value>]

=item [B<--moreoption3>=I<value>] [B<--moreoption4>=I<value>]

=item [B<--moreoption5>=I<value>] [B<--moreoption6>=I<value>]

=item [B<--moreoption7>=I<value>] [B<--moreoption8>=I<value>]

=item [B<--moreoption9>=I<value>] [B<--moreoption10>=I<value>]

=item [B<--moreoption11>=I<value>] [B<--moreoption12>=I<value>]

=item E<lt>I<filename>E<gt> ...

The result: 7/10. B<pod2text> renders it as intended. B<pod2man> renders it as
intended. B<pod2html> shows a paragraph break and makes all lines bold.

=back

=head1 SEE ALSO

L<https://www.perlmonks.org/?node_id=606484>

=cut
