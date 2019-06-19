# This is a simple shell script to toggle desktop icons visibilty in OS X
#
# Written by Amar Ilindra 
# from https://www.geekdashboard.com 
#
# GitHub: https://github.com/amarilindra/Show-Hide-Mac-Desktop-Icons

if [ `defaults read com.apple.finder CreateDesktop` = true ]; then
	defaults write com.apple.finder CreateDesktop false;
	killall Finder;
	say hiding desktop icons;
else
	defaults write com.apple.finder CreateDesktop true;
	killall Finder;
	say showing desktop icons;
fi
