#!/bin/bash


theme_name="SerialExperimentalistLain"


destination="$HOME/.config/hyde/themes/"


if [ ! -d "$theme_name" ]; then
    echo "A pasta $theme_name não existe no diretório atual."
    exit 1
fi


if [ ! -d "$destination" ]; then
    echo "Criando diretório de destino $destination..."
    mkdir -p "$destination"
fi


echo "Copiando a pasta $theme_name para $destination"
cp -r "$theme_name" "$destination"


if [ $? -eq 0 ]; then
    echo "Tema '$theme_name' copiado com sucesso para $destination"
else
    echo "Ocorreu um erro ao copiar o tema."
fi

