mkdir -p $WERCKER_CACHE_DIR/wercker/npm

if [[ "$WERCKER_NPM_INSTALL_OPTIONS" =~ "-g" ]]; then
  sudo chown -R $USER /usr/local
fi

npm config set cache $WERCKER_CACHE_DIR/wercker/npm
npm install $WERCKER_NPM_INSTALL_OPTIONS
