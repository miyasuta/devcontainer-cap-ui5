source docker/.devcontainer/.env

echo $GIT_EMAIL
echo $GIT_USER_NAME

git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_USER_NAME"
git config --global --add safe.directory $PWD/docker/.devcontainer

echo "GitHub email set to: $GIT_EMAIL"
echo "GitHub username set to: $GIT_USER_NAME"