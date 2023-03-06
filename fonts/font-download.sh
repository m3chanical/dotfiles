declare -a fonts=(
    BitstreamVeraSansMono
    CodeNewRoman
    FiraCode
    Go-Mono
    Hack
    Hermit
    JetBrainsMono
    Noto
    Overpass
    ProggyClean
    RobotoMono
    SpaceMono
    Ubuntu
)

version=$(curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest | grep tag_name | cut -d '"' -f 4 )
fonts_dir="${HOME}/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

for font in "${fonts[@]}"; do
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/${version}/${zip_file}"
    echo "[*] Downloading font $download_url"
    wget -nv "$download_url"
    unzip -o "$zip_file" -d "$fonts_dir"
    rm "$zip_file"
done

