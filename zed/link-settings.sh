#!/bin/bash
set -x

ZED_CONFIG_PATH="${HOME}/.config/zed"
DOTFILES_ZED_CONFIG="${HOME}/dotfiles/zed"

# Удаление и создание символической ссылки для settings.json
rm -f "$ZED_CONFIG_PATH/settings.json"
ln -s "$DOTFILES_ZED_CONFIG/settings.json" "$ZED_CONFIG_PATH/settings.json"

# Удаление и создание символической ссылки для keymap.json
rm -f "$ZED_CONFIG_PATH/keymap.json"
ln -s "$DOTFILES_ZED_CONFIG/keymap.json" "$ZED_CONFIG_PATH/keymap.json"

# Создание каталога snippets, если он не существует
mkdir -p "$ZED_CONFIG_PATH/snippets"

# Удаление и создание символической ссылки для vue.json
rm -f "$ZED_CONFIG_PATH/snippets/vue.js.json"
ln -s "$DOTFILES_ZED_CONFIG/snippets/vue.js.json" "$ZED_CONFIG_PATH/snippets/vue.js.json"

