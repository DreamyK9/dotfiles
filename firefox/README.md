# Firefox Sane Defaults
These settings should be reasonable, no matter what you are intending to do with your browser.

## Settings
For settings, a `user.js` file, compiled by [Arkenfox](https://github.com/arkenfox/user.js) is used. The `prefs.js` contains basic preferences, set by the in-app settings menu. The `user-overrides.js` contains overrides for the preferences set by the user.js.
Please follow the [instructions](https://github.com/arkenfox/user.js/wiki/2.1-User.js) of Arkenfox to apply their `user.js`!

## Installed extensions

### Privacy & Security
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/): Powerful All-round content blocker. Blocks more than just your average Adblocker.
- [Decentraleyes](https://addons.mozilla.org/en-US/firefox/addon/decentraleyes/): Caches bigtech libraries used across the web to protect you against getting tracked via those.
- [Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/): Reinforcement learning based tracking blocker. To block stuff that's not yet on a uBlock list.

### Convenience
- [Dark Reader](https://addons.mozilla.org/en-US/firefox/addon/darkreader/): Provides you with an easy toggle to set any website into dark mode.


## Extension Settings
- uBlockOrigin: To import the settings, click on the extension's icon in the toolbar. Then click on the settings icon in the bottom right corner. On the settings page scroll down to the bottom. Click on restore from file, select the txt file from this repository and confirm. Wait a moment for uBlock to import everything. From now on everything should update on its own.  As uBlock's filter lists update, you might need to approve additional permissions, as it only asks to access the sites it has in its filters.
