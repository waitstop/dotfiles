#!/bin/bash
ZED_CONFIG_PATH="${HOME}/.config/zed"
DOTFILES_ZED_CONFIG="${HOME}/dotfiles/zed"

# Удаление и создание символической ссылки для settings.json
echo "Linking settings.json..."
rm -f "$ZED_CONFIG_PATH/settings.json"
ln -s "$DOTFILES_ZED_CONFIG/settings.json" "$ZED_CONFIG_PATH/settings.json"

# Удаление и создание символической ссылки для keymap.json
echo "Linking keymap.json..."
rm -f "$ZED_CONFIG_PATH/keymap.json"
ln -s "$DOTFILES_ZED_CONFIG/keymap.json" "$ZED_CONFIG_PATH/keymap.json"

# Создание каталога snippets, если он не существует
echo "Creating snippets folder..."
mkdir -p "$ZED_CONFIG_PATH/snippets"

# Получаем список файлов и общее количество
files=("$DOTFILES_ZED_CONFIG/snippets"/*)
total_files=${#files[@]}
echo "Total files to link in snippets: $total_files"

counter=1
# Удаление и создание символических ссылок для всех файлов из каталога snippets
for file in "${files[@]}"; do
    filename=$(basename "$file")
    echo "[$counter/$total_files] Linking $filename..."

    # Удаляем старую ссылку или файл с таким именем
    rm -f "$ZED_CONFIG_PATH/snippets/$filename"

    # Создаём новую ссылку
    ln -s "$file" "$ZED_CONFIG_PATH/snippets/$filename"
    ((counter++))
done
