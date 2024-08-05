info="### $(date)"
echo "OS detected: $OSTYPE"

case "$OSTYPE" in
    darwin*) # macOS
        cd "commit-bot" #cd "`commit-bot`" || exit 1
        ;;
esac

echo "$info" >> README.md
echo "$info"
echo

git add README.md
git commit -m "The date is $info"
git push
cd ~

# crontab runs script every 0th minute of every hour :)
# 00 * * * * /bin/bash ~/commit-bot/bot.sh