
on run argv
	if application "Google Chrome" is running then
		tell application "Google Chrome" to make new window with properties {mode:"incognito"}
		open location item 1 of argv
	else
		do shell script "open -a /Applications/Google\\ Chrome.app --args --incognito"
		open location item 1 of argv
	end if

	tell application "Google Chrome" to activate
end run
