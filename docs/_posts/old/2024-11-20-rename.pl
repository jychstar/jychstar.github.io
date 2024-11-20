#!/usr/bin/perl
use strict;
use warnings;
use File::stat;
use POSIX qw(strftime);

# Open the current directory
opendir(my $dir, ".") or die "Cannot open current directory: $!";

# Loop through all files in the directory
while (my $file = readdir($dir)) {
    # Skip directories and hidden files
    next if ($file =~ /^\./ || -d $file);

    # Get file's last modification time
    my $stat = stat($file);
    my $mtime = $stat->mtime;

    # Format the timestamp into YEAR-MONTH-DAY
    my $date_prefix = strftime("%Y-%m-%d", localtime($mtime));

    # Create the new filename
    my $new_name = "$date_prefix-$file";

    # Rename the file
    rename($file, $new_name) or warn "Cannot rename $file to $new_name: $!";
}

# Close the directory
closedir($dir);

print "File renaming completed.\n";

