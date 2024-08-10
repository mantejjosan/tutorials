#!/bin/bash

echo "You have been detained for using Windows for too long"
echo "If you fear death, answer these questions very seriously."
echo "I said seriously"

# Use -t with read to set a timeout for user input
read -t 15 -p "Who am I you ask? Ha ha I am Linux: " response

if [ "$response" = "no" ]; then
    echo "Shut up and listen"
else
    echo "I guess you are aware that Windows was hacked..."
fi

# This read statement is incorrect; it does not use the right syntax
read -t 12 -p "" noneedofthisresponse

echo "My my! Poor John doesn’t even know that it wasn’t a bug"
echo "Of course I did it"
echo ""

echo "Shut up and answer"
if read -t 13 -p "Tell me why didn’t you use Linux: " firstans; then
    echo "Oh I see... Let me think... your response makes absolutely no sense, well done stupid Windows user"
else
    echo "It’s because, of course, pigs prefer shit, right?"
fi

# Correct the read syntax for this block
if read -t 13 -p "Tell me something. Are you scared? " noneed; then
    echo "Everybody is"
    read -t 12 -p "What’s your biggest fear? Like seriously, I might let you go if you answer honestly, HONESTLY: " fear
    if [ -n "$fear" ]; then
        echo "Only pussies are afraid of $fear! Haaa ha haa, PUDGY Windows user"
    else
        echo "Time's up, Slowpoke!"
    fi
fi

echo "Since you have deeply disappointed me"
echo "I cannot let you go"
echo "Unless"
echo "You answer my next question"
echo "This is a big one"

read -s -p "Tell me your biggest secret (I won’t tell anyone, I promise): " secret
echo # for newline after the secret input

# Append the secret to the file
echo "$secret" >> secret.txt
