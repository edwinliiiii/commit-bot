info="# $(date)"
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