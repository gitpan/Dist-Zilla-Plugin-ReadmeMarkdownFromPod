
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::ReadmeMarkdownFromPod',
                       'DISTNAME' => 'Dist-Zilla-Plugin-ReadmeMarkdownFromPod',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Jacob Helwig <jhelwig@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Automatically convert POD to a README.mkdn for Dist::Zilla',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100700',
                       'PREREQ_PM' => {
                                        'Test::More' => '0',
                                        'File::Find' => '0',
                                        'Dist::Zilla::Role::InstallTool' => '0',
                                        'File::Temp' => '0',
                                        'Pod::Markdown' => '0',
                                        'Dist::Zilla::File::InMemory' => '0',
                                        'Moose::Autobox' => '0',
                                        'Moose' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



