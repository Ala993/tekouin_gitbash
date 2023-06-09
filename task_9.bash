file="/etc/passwd"

while IFS=: read -r username password userid groupid user_info homedir shell; do
    echo "The user $username is part of the $groupid gang, lives in $homedir, and rides $shell."
    echo "User $userid's place is protected by the passcode $password."
    echo "More info about the user here: $user_info"
    echo
done < "$file"