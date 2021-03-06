if [ -n "$RELEASE_VERSION" ]; then
    if [[ $RELEASE_VERSION =~ ([^ ]+)\#([^ ]+) ]]; then
        cd ./karma-accessibility-checker/src;
        echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" >.npmrc;
        NPM_VERSION="${BASH_REMATCH[1]}";
        EXT_VERSION="${BASH_REMATCH[2]}";
        echo "Deploy karma-accessibility-checker version $NPM_VERSION...";
        npm --no-git-tag-version version $NPM_VERSION;
        npm publish;
    fi
fi