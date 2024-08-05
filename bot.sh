info="### Last time I woke up: $(date), back to sleep now..."
echo "OS detected: $OSTYPE"

case "$OSTYPE" in
    darwin*) # macOS
        cd "commit-bot" #cd "`commit-bot`" || exit 1
        ;;
esac

echo "$info" > README.md
echo "$info"
echo

git add .
git commit -m "I'm so sleepy..."
git push
cd ~

# crontab runs script every 0th minute of every other hour :)
# 00 */3 * * * /bin/bash ~/commit-bot/bot.sh