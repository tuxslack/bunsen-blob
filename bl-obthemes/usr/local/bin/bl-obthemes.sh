#!/bin/bash
#
# Tradução PT-BR: Fernando Souza - https://www.youtube.com/@fernandosuporte/
# Data:           03/11/2024 as 14:58:06
# Homepage:       https://github.com/tuxslack/bl-obthemes
# Licença:        GPL
#
# O conceito básico do BLOB é poder salvar e restaurar uma configuração gráfica .
#
#
#    bl-obthemes: script para salvar ou restaurar várias configurações de tema da GUI
#    Copyright (C) 2015-2020 damo         <damo@bunsenlabs.org>
#                  2018-2023 John Crawley <john@bunsenlabs.org>
#
#    Este programa é um software livre: você pode redistribuí-lo e/ou modificá-lo
#    sob os termos da GNU General Public License conforme publicada pela
#    Free Software Foundation, seja a versão 3 da Licença, ou
#    (a seu critério) qualquer versão posterior.
#
#    Este programa é distribuído na esperança de que seja útil,
#    mas SEM NENHUMA GARANTIA; sem nem mesmo a garantia implícita de
#    COMERCIALIZAÇÃO ou ADEQUAÇÃO A UM PROPÓSITO ESPECÍFICO. Veja a
#    GNU General Public License para mais detalhes.
#
#    Você deve ter recebido uma cópia da Licença Pública Geral GNU
#    junto com este programa. Se não, veja <http://www.gnu.org/licenses/>.
#
#
# As opções de salvamento são para Conky(s)
#                       Tint2(s)
#                       Tema Openbox
#                       Tema GTK
#                       Plano de fundo (usa Nitrogen ou feh, dependendo de qual
#                                       tem o arquivo de configuração bg mais recente salvo)
#                       Alt Menu (dmenu)
#                       Lightdm login gtk greeter
#                       X configs (.bashrc, .Xresources)
#                       Terminal emulator config
#
# Os caminhos são assumidos como padrões do BunsenLabs
#
# Uma captura de tela é salva (as janelas são ocultadas brevemente para que a imagem
#                        seja a área de trabalho vazia, com qualquer Tint2s
#                        ou Conkys em execução e um
#                        menu e janela representativos abertos)
#
# Um backup com carimbo de data e hora de rc.xml é salvo "só por precaução".
#
# VARIÁVEL DO USUÁRIO: xdotool é usado para mover o ponteiro do mouse e assume que o
# root-menu é exibido com as teclas "Super + Espaço", e o botão direito do mouse é
# definido para "r-click". Se você tiver definido isso para outra coisa, edite a
# Variável "MENUMODIFIER" e array "MOUSECMD".
# Defina a variável "KEYDOWN" para onde "Preferências" está no root-menu (ou
# qualquer outra coisa que você queira exibir).
# O visualizador de imagens está definido como "gthumb". Edite a variável "IMGCMD"
# para alterar isso.
#
# AVISO: Conkys em diretórios não padrão são salvos, mas
# não será visto ao executar o gerenciador bl conky.
#
##########################################################################################
#
# PROBLEMAS CONHECIDOS:
#
# O Virtualbox não permite que o convidado mova o cursor do mouse do host, usando xdotool,
# então a captura de tela pode produzir um tema incorreto exibido e/ou posicionamento ruim.
#
# Uma solução alternativa é mover o cursor para algum espaço livre e usar a tecla "Enter" no
# diálogo "Configurações a serem salvas:".
#


# bunsen-blob

# https://github.com/BunsenLabs/bunsen-blob/blob/37eedaf07e48f655baa5938871873af7cf7f31bb/bin/bl-obthemes#L3
# https://github.com/BunsenLabs/bunsen-blob/issues
# https://fosspost.org/bunsenlabs-lithium


# bunsen-docs

# https://github.com/BunsenLabs/bunsen-docs.git
# https://github.com/BunsenLabs/bunsen-docs/issues
# https://www.deviantart.com/bunsenlabs



# Pacotes:

# https://pkg.bunsenlabs.org/debian/



# Não esta funcionando restoreobmenugenerator => Se os arquivos config.pl e schema.pl estiver na pasta ~/.config/obmenu-generator/ não tem erro ao restaurar

# Não esta salvando o papel de parede


# Salvar e restaurar arquivos csv jgmenu

# https://github.com/BunsenLabs/bunsen-blob/issues/4


# ----------------------------------------------------------------------------------------

# Resultado da saída do script bl-obthemes.sh:


# ./bl-obthemes.sh: linha 1472: xmlstarlet: comando não encontrado
# ./bl-obthemes.sh: Cannot read source file /home/fernando/.gtkrc-2.0.mine
# ./bl-obthemes.sh: Failed to save /home/fernando/.gtkrc-2.0.mine
# ./bl-obthemes.sh: Failed to save the necessary GTK config files
# ./bl-obthemes.sh: Cannot read source file /home/fernando/.config/dmenu/dmenu-bind.sh
# ./bl-obthemes.sh: Failed to save /home/fernando/.config/dmenu/dmenu-bind.sh
# ./bl-obthemes.sh: Failed to save demenu config file .config/dmenu/dmenu-bind.sh
# ./bl-obthemes.sh: Cannot read source file /etc/lightdm/lightdm-gtk-greeter.conf
# ./bl-obthemes.sh: Failed to save LightDM config file /etc/lightdm/lightdm-gtk-greeter.conf to /home/fernando/.config/blob/voidlinux/lightdm-gtk-greeter.conf
# ./bl-obthemes.sh: Cannot read source file /home/fernando/.Xresources
# ./bl-obthemes.sh: Failed to save /home/fernando/.Xresources
# ./bl-obthemes.sh: Failed to save X configs file .Xresources
# ./bl-obthemes.sh: linha 1644: bl-xinerama-prop: comando não encontrado
# ./bl-obthemes.sh: linha 2987: hash: bl-restart: não encontrado
# ./bl-obthemes.sh: linha 2708: bl-xinerama-prop: comando não encontrado


# ----------------------------------------------------------------------------------------


# Cria uma variavel informando o caminho completo do arquivo de configuração do programa.

# * Backup
#
#   Copia os arquivos
#
# * Restauração
#
#   Restaurar os arquivos




# Identificar se os processos estão rodando e copiar os arquivos


# $ ps -aux | grep conky | grep -v grep
# fernando  1568  1.2  0.1 405364 13284 ?        Sl   18:53   0:04 conky --daemonize --pause=1 -c /home/fernando/.conky/conkyrc-slackware/conkyrc-slackware

# $ ps -aux | grep plank | grep -v grep
# fernando  1488  1.3  1.3 1237996 99884 ?       Sl   18:53   0:05 plank


# $ ps -aux | grep tint2 | grep -v grep
# fernando  1490  0.2  0.3 119832 29024 ?        Sl   18:53   0:01 tint2 -c /home/fernando/.config/tint2/tint2rc-macOS


# $ ps -aux | grep picom | grep -v grep
# fernando  1499  4.2  0.8 403736 62336 ?        Sl   18:53   0:25 picom --config /home/fernando/.config/picom/picom.conf



# $ ps -aux | grep "openbox --startup" | grep -v grep
# fernando  1460  0.1  0.3 121800 26672 ?        Sl   18:52   0:01 /usr/bin/openbox --startup /usr/libexec/openbox-autostart OPENBOX


# Nitrogen

# $ cat ~/.config/nitrogen/bg-saved.cfg | grep file | cut -d= -f2
# /home/fernando/Imagens/macOS/mbuntu-5.jpg



# Tema do Openbox

# cat ~/.config/openbox/rc.xml | grep "<name>" | head -n1
#    <name>Clearlooks</name>



# Como copiar as configurações que o usuário esta usando atualmente para depois restaurar.



# Gerou problema no yad com usuário comum o arquivo foi criado pelo Root

# rm /run/user/1001/dconf/user


# ----------------------------------------------------------------------------------------


# Para restaura o tema gtk no OpenBox (lxappearance):

# Copiar o arquivo settings.ini para a pasta ~/.config/gtk-3.0/


# Como o lxappearance altera o tema?

# O lxappearance é uma ferramenta gráfica usada para modificar o tema GTK no Linux, e ela 
# altera configurações específicas do GTK (como o tema, fontes, ícones e cursores). Quando 
# você usa o lxappearance, ele altera diretamente as configurações do GTK, que são 
# armazenadas em arquivos de configuração do usuário. Aqui está um detalhamento de como o 
# lxappearance altera o tema:

# O que o lxappearance altera:

#     Tema GTK: O lxappearance define o tema visual dos aplicativos que usam GTK (botões, 
# janelas, barras de rolagem, etc.).
#     Tema de Ícones: Ele também permite alterar o conjunto de ícones usado por aplicações GTK.
#     Fonte: Permite alterar a fonte usada pelas interfaces GTK.
#     Cursor: Você pode escolher um cursor diferente para os aplicativos GTK.

# Como o lxappearance funciona

# Quando você abre o lxappearance, ele altera configurações armazenadas em arquivos de 
# configuração que são lidos pelos aplicativos GTK. Esses arquivos geralmente ficam em:

#     ~/.config/gtk-3.0/settings.ini (para GTK3)
#     ~/.gtkrc-2.0 (para GTK2)

# Esses arquivos contêm as informações sobre o tema, fontes, ícones, etc., e o lxappearance 
# os edita para aplicar as mudanças.

# Passo a passo de como o lxappearance altera o tema:


# Abrir o lxappearance: Após a instalação, basta executar o lxappearance no terminal ou 
# procurá-lo no menu de aplicativos.

#  lxappearance

#  Escolher o Tema:
#         Temas GTK: Na aba "Widget", você pode escolher o tema GTK que será aplicado aos 
# aplicativos.
#         Tema de Ícones: Na aba "Icons", você pode selecionar o conjunto de ícones.
#         Fontes: Na aba "Font", você pode selecionar a fonte usada pelos aplicativos GTK.
#         Cursor: Na aba "Cursor", você pode escolher um tema de cursor.

#  Aplicar as Mudanças: Quando você escolhe um novo tema ou outras opções, o lxappearance 
# automaticamente modifica os arquivos de configuração mencionados anteriormente. A seguir 
# estão os arquivos que ele altera:

#         GTK2: Modifica o arquivo ~/.gtkrc-2.0 para aplicar o tema.
#         GTK3: Modifica o arquivo ~/.config/gtk-3.0/settings.ini.

# Exemplo de configurações no arquivo de configuração

# Após usar o lxappearance para aplicar um tema, você verá mudanças nos arquivos de 
# configuração mencionados. Aqui estão exemplos de como essas configurações podem aparecer:

# Exemplo de configuração no ~/.gtkrc-2.0 (para GTK2):

# gtk-theme-name="Adwaita"
# gtk-icon-theme-name="Adwaita"
# gtk-font-name="Sans 10"
# gtk-cursor-theme-name="DMZ-White"

# Exemplo de configuração no ~/.config/gtk-3.0/settings.ini (para GTK3):

# [Settings]
# gtk-theme-name=Adwaita
# gtk-icon-theme-name=Adwaita
# gtk-font-name=Sans 10
# gtk-cursor-theme-name=DMZ-White
# gtk-application-prefer-dark-theme=false

# Essas entradas determinam qual tema, conjunto de ícones, fonte e cursor estão sendo usados.

# Como o Openbox Interage com o GTK:

# Quando você usa o Openbox, ele não tem controle direto sobre o tema GTK. Porém, quando 
# você altera o tema via lxappearance, o Openbox vai respeitar o tema definido para os 
# aplicativos que usam GTK (como o gtk3, gedit, firefox, etc.). Isso ocorre porque o 
# Openbox apenas gerencia as janelas, enquanto o GTK cuida da aparência interna desses 
# aplicativos.


# Após alterar o tema:

#  Aplicativos GTK (como gedit, firefox, gnome-terminal, etc.) imediatamente aplicam o 
# tema novo.

# O Openbox, que é um gerenciador de janelas, não muda de aparência com o tema GTK. 
# Para alterar o visual do Openbox (como bordas, menus, etc.), você precisaria de um tema 
# para o Openbox, que é configurado separadamente no arquivo ~/.config/openbox/rc.xml.

# Recapitulando:

#  O lxappearance altera as configurações do GTK no Openbox e em outros ambientes leves.
#  Ele modifica arquivos de configuração como ~/.gtkrc-2.0 e ~/.config/gtk-3.0/settings.ini 
# para aplicar o tema escolhido.
#  Após a alteração, você verá a mudança no tema em aplicativos GTK sem precisar reiniciar 
# o sistema ou o Openbox.

# Isso deve ajudar a entender como o lxappearance altera o tema no seu sistema e como ele 
# interage com o Openbox.


# ----------------------------------------------------------------------------------------

# Tema do Fluxbox

# $ cat ~/.fluxbox/init | grep session.styleFile | cut -d: -f2 | sed 's/\t//g'
# /usr/share/fluxbox/styles/bloe


# Papel de parede do Fluxbox - Nitrogen

# $ cat ~/.config/nitrogen/bg-saved.cfg | grep file | cut -d= -f2 | tail 
# /home/fernando/Imagens/macOS/mbuntu-5.jpg

# ~/.fluxbox/startup

# ----------------------------------------------------------------------------------------


# Cores para formatação da saída dos comandos

RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
NC='\e[0m' # sem cor

# ----------------------------------------------------------------------------------------


# Defina o nome do script e a versão

script_name=$(basename "$0")  # Pega o nome do script
script_version="12.5.3-2"     # Defina a versão do script


fork="https://github.com/BunsenLabs/bunsen-blob"



# Caminho para o logo

# Localização do arquivo: /usr/share/icons/hicolor/scalable/places/distributor-logo-bunsenlabs.svg

ICON="/usr/share/icons/hicolor/scalable/places/distributor-logo-bunsenlabs.svg"
# ICON="/usr/share/icons/hicolor/scalable/places/distributor-logo-bunsenlabs-dark.svg"
# ICON="/usr/share/icons/hicolor/scalable/places/distributor-logo-bunsenlabs-hydrogen.svg"


# ICON="distributor-logo-bunsenlabs"



# Para testar outros idiomas:

# export LANG=en_US.UTF-8

# ./bl-obthemes.sh



clear

# ----------------------------------------------------------------------------------------


# Ativa o modo de depuração

# set -x


# O modo de depuração em Bash pode ser ativado usando a opção -x, que imprime cada 
# comando executado e seu resultado.

# set +x  # Desativa o modo de depuração

# ----------------------------------------------------------------------------------------



# A internalização de script para vários idiomas é uma prática importante quando você 
# deseja que seu programa seja acessível a um público diversificado. 


# Tradução para o script





# if [ $LANG == pt_BR.UTF-8 ]
# then


# HELP_MAN(){


    # Gerando o arquivo settings.cfg (parte relacionada ao papel de parede)

# }


# ========================================================================================


# elif [ $LANG == en_US.utf8 ]; then


# $mensagem_tint12

# $mensagem_erro_papel_de_parede7
# $mensagem_erro_papel_de_parede8

# $mensagem_restaura_feh5
# $mensagem_restaura_feh6
# $mensagem_restaura_feh7



    # Gerando o arquivo settings.cfg (parte relacionada ao papel de parede)




#=========================================================================================


# else

# echo "$(gettext 'No language support'): $LANG"

# exit


# fi




# https://www.reddit.com/r/bash/comments/o39cf0/bash_script_internalization/?tl=pt-br



# ----------------------------------------------------------------------------------------



# Como definir para o script shell (.sh) usar o arquivo .mo?


# Defina a língua a ser utilizada
# export LANG="pt_BR.UTF-8" # Define o idioma que o script deve usar (neste caso, português do Brasil).


# Carregue as traduções

# Defina o nome do domínio (o nome do arquivo .mo, sem a extensão .mo)
# export TEXTDOMAIN="bl-obthemes" # Define o nome do domínio, que deve corresponder ao nome do arquivo .mo (sem a extensão .mo).

# Defina o diretório onde os arquivos .mo estão localizados


# export TEXTDOMAINDIR="/usr/local/bin/bl-obthemes/usr/share/doc/bl-obthemes/po"

# export TEXTDOMAINDIR="/usr/share/locale"

export TEXTDOMAIN="bl-obthemes"


# O comando export TEXTDOMAINDIR define o diretório onde o sistema busca as traduções e 
# export TEXTDOMAIN define o nome do domínio de tradução (o nome do arquivo .mo, sem a 
# extensão).

# Certifique-se de que o arquivo .mo está presente no diretório correto e contém as 
# traduções esperadas. O arquivo .mo é um arquivo binário gerado a partir do arquivo .po 
# e deve estar em um diretório específico.


# ----------------------------------------------------------------------------------------


# Verificar se o arquivo .mo existe na pasta /usr/local/share/locale


# Definir o caminho para o arquivo .mo

arquivo_mo="/usr/share/locale/$(echo "$LANG" | cut -d. -f1)/LC_MESSAGES/bl-obthemes.mo"




# Função para definir as mensagens baseadas no idioma

translate() {

    # echo $language

    local language="$1"


    case "$language" in

        "pt_BR")

            title_yad="Erro"
            close_button="Fechar"
            file_found="Arquivo encontrado"
            file_not_found="O arquivo $arquivo_mo não foi encontrado!"
            file_mo="Nome do arquivo .mo"

            ;;

        "en_US")

            title_yad="Error"
            close_button="Close"
            file_found="File Found"
            file_not_found="The file $arquivo_mo was not found!"
            file_mo="File name .mo"

            ;;

        "es_ES")

            title_yad="Error"
            close_button="para cerrar"
            file_found="Archivo encontrado"
            file_not_found="¡No se encontró el archivo $arquivo_mo!"
            file_mo="nombre de archivo .mo"

            ;;

        "fr")

            title_yad="Erreur"
            close_button="Pour fermer"
            file_found="Fichier trouvé"
            file_not_found="Le fichier $arquivo_mo n'a pas été trouvé !"
            file_mo="nom du fichier .mo"

            ;;

        *)
            title_yad="Error"
            close_button="Close"
            file_found="File Found"
            file_not_found="The file $arquivo_mo was not found!"
            file_mo="File name .mo"

            ;;
    esac
}


# Definir o idioma (pode ser alterado dinamicamente)

language=$(echo "$LANG" | cut -d'.' -f1)

# Traduzir as mensagens

translate $language

# Exemplo de uso das traduções

# ----------------------------------------------------------------------------------------


# Verificar se o arquivo .mo existe

if [ -f "$arquivo_mo" ]; then

    echo "$file_found: $arquivo_mo"

else

    echo -e "\n$0: ${RED} $file_not_found \n ${NC}" >&2

    # Exibir mensagem de erro com yad e fechar o programa

    yad --center --window-icon="$ICON" --image=dialog-error  --title="$title_yad" --text="$file_not_found" --buttons-layout=center --button="$close_button" --width="650" # 2>/dev/null


    clear

    exit 1

fi

# ----------------------------------------------------------------------------------------



echo "
$TEXTDOMAINDIR
$file_mo: $TEXTDOMAIN

$(gettext 'Language'): $LANG
"


# ----------------------------------------------------------------------------------------



# Verificar se os programas estão instalados:


# Função para verificar se o programa está instalado

check_program() {

    local prog=$1

    local msg=$2

    which "$prog" 1>/dev/null 2>/dev/null || {

        yad --center --window-icon="$ICON" --image=dialog-error --timeout="10" --no-buttons \
            --title "$(gettext 'Notice')" --text "$msg" --width="450" --height="100" 2>/dev/null

        clear

        exit 1

    }

}



# Verificação de todos os programas


# Yet Another Dialog - crie/interaja com caixas de diálogo GTK+

which yad            1> /dev/null 2> /dev/null || { echo "$(gettext 'Yad program is not installed.')" ; exit ; }


# check_program "yad" "$(gettext 'Yad program is not installed.')"


check_program "diff"               "$(gettext 'diff program is not installed.')"


# O gettext é usado para facilitar a internacionalização de mensagens

check_program "gettext"            "$(gettext 'gettext program is not installed.')"


check_program  "sudo"              "$(gettext 'Sudo program is not installed.')"

# Ferramenta de automação X11 de linha de comando
check_program "xdotool"            "$(gettext 'xdotool program is not installed.')"

# Utilitário simples de "captura de tela" de linha de comando para X
check_program "scrot"              "$(gettext 'Scrot program is not installed.')"

# Gerenciador de janelas compatível com padrões, rápido, leve e extensível
check_program "openbox"            "$(gettext 'OpenBox program is not installed.')"

# check_program "fluxbox"               "$(gettext 'fluxbox program is not installed.')"

# Navegador e configurador de plano de fundo para X com suporte para Xinerama
check_program "nitrogen"           "$(gettext 'Nitrogen program is not installed.')"

# check_program "feh" "$(gettext 'Feh program is not installed.')"

# Visualizador de imagens e navegador para a área de trabalho GNOME
check_program "gthumb"             "$(gettext 'gThumb program is not installed.')"

# Compositor leve para X11 (anteriormente um fork Compton)
check_program "picom"              "$(gettext 'Picom program is not installed.')"

# Painel Tint2
check_program "tint2"              "$(gettext 'Tint2 program is not installed.')"

# obmenu-generator
check_program "obmenu-generator"   "$(gettext 'obmenu-generator program is not installed.')"

# Menu iniciar (jgmenu)
# check_program "jgmenu" "$(gettext 'jgmenu program is not installed.')"

# Menu genérico para X
check_program "dmenu"              "$(gettext 'dmenu program is not installed.')"


# Alternador de janelas, caixa de diálogo de execução e substituição de dmenu

# Verifique se o Rofi está instalado

check_program "rofi"               "$(gettext 'rofi program is not installed.')"



# Utilitários de linha de comando para transformar, consultar, validar e editar XML

# $ xbps-query -f xmlstarlet
# /usr/bin/xml
# /usr/share/doc/xmlstarlet/html.css
# /usr/share/doc/xmlstarlet/xmlstarlet-ug.html
# /usr/share/doc/xmlstarlet/xmlstarlet.txt
# /usr/share/licenses/xmlstarlet/COPYING
# /usr/share/man/man1/xmlstarlet.1


# check_program "xml" "$(gettext 'xmlstarlet program is not installed.')"

# xbps-query -l | grep  xmlstarlet
# ii xmlstarlet-1.6.1_2                                          Command line utilities to transform, query, validate, and edit XML

# check_program "xmlstarlet" "$(gettext 'xmlstarlet program is not installed.')"



check_program "lxappearance"      "$(gettext 'lxappearance program is not installed.')"
check_program "obconf"            "$(gettext 'obconf program is not installed.')"
check_program "conky"             "$(gettext 'conky program is not installed.')"
check_program "sed"               "$(gettext 'sed program is not installed.')"

# check_program "plank" "$(gettext 'plank program is not installed.')"


check_program "fc-list"              "$(gettext 'fc-list program is not installed.')"



# Para minimizar todas as janelas

check_program "wmctrl"               "$(gettext 'wmctrl program is not installed.')"

# Minimizar todas as janelas       => wmctrl -k on
# Restaurar as janelas minimizadas => wmctrl -k off

# FluxBox

# wmctrl -l | awk '{print $1}' | while read id; do wmctrl -i -r $id -b add,hidden; done



# No Void Linux, o comando xdg-mime faz parte do pacote xdg-utils, que é um conjunto de 
# utilitários padrão usados para interação com os ambientes de desktop, como abrir arquivos, 
# URLs e identificar associações MIME. Para instalar o xdg-utils no Void Linux, você pode 
# usar o gerenciador de pacotes xbps.

# xbps-install -Suy xdg-utils

# which xdg-mime 1> /dev/null 2> /dev/null || exit


check_program "xdg-mime"              "$(gettext 'xdg-mime program is not installed.')"



check_program "convert"               "$(gettext 'convert (part of ImageMagick) program is not installed.')"


check_program "cp"                    "$(gettext 'cp program is not installed.')"



# ----------------------------------------------------------------------------------------

# Exibe o conteúdo do arquivo /etc/os-release para depuração

# cat /etc/os-release


# Instalação no Void Linux do xmlstarlet

if grep -iq "void" /etc/os-release; then


    # Verifica se xmlstarlet está instalado

    which xml 1>/dev/null 2>/dev/null || {

        # Verifica se o comando xbps-install está disponível

        if which xbps-install 1>/dev/null 2>/dev/null; then

            echo -e "$(gettext 'Installing xmlstarlet...\n\nEnter the Root user password below to install the package.')"


            # Faz a instalação com permissões de superusuário.

            su -c "xbps-install -Suvy xmlstarlet"

            sleep 2

            clear

        else

            echo "$(gettext 'Error: xbps-install not found.')"

            exit 1

        fi
    }




fi

# ----------------------------------------------------------------------------------------



# Não tem os programas bl-xinerama-prop e bl-restart

# check_program "bl-xinerama-prop" "Programa bl-xinerama-prop não esta instalado."
# check_program "bl-restart" "Programa bl-restart não esta instalado."
# check_program "bl-install" "Programa bl-install não esta instalado."
# check_program "bl-reload-gtk23" "Programa bl-reload-gtk23 não esta instalado."
# check_program "bl-conky-session" "Programa bl-conky-session não esta instalado."


# ----------------------------------------------------------------------------------------




captura_de_tela(){

# ----------------------------------------------------------------------------------------

# Detectar o gerenciador de arquivos padrão

# O comando xdg-mime query default inode/directory retorna o gerenciador de arquivos 
# padrão para o sistema, que pode ser Nautilus, Dolphin, Thunar, Nemo, Caja, PCManFM, 
# etc., dependendo do ambiente de desktop.

# Funciona para ambientes como XFCE, LXDE e outros

# Filtra somente o nome do gerenciador de arquivo

# xdg-mime query default inode/directory | cut -d'.' -f1

# xdg-mime query default inode/directory | awk -F'.' '{print $1}'



# GNOME (Usando o Nautilus)
# nautilus-folder-handler.desktop

# Budgie (Usando o Nautilus ou Files)
# nautilus-folder-handler.desktop

# KDE (Usando o Dolphin)
# dolphin.desktop

# XFCE (Usando o Thunar)
# thunar.desktop

# Cinnamon (Usando o Nemo)
# nemo.desktop

# Mate (Usando o Caja)
# caja.desktop

# LXQt ou LXDE (Usando o PCManFM)
# pcmanfm-qt.desktop


# Outros

# pcmanfm.desktop


# Identifica o gerenciador de arquivos padrão

gerenciador_de_arquivo=$(xdg-mime query default inode/directory)

# Extrai o caminho completo do arquivo .desktop (geralmente em /usr/share/applications ou ~/.local/share/applications)

caminho_gerenciador=$(grep -i "Exec=" /usr/share/applications/$gerenciador_de_arquivo | cut -d'=' -f2-)

# Caso o arquivo .desktop esteja no diretório local

if [ -z "$caminho_gerenciador" ]; then

  caminho_gerenciador=$(grep -i "Exec=" ~/.local/share/applications/$gerenciador_de_arquivo | cut -d'=' -f2-)

fi

# Armazenar o comando exec na variável

gerenciador_de_arquivo="$caminho_gerenciador"

gerenciador_de_arquivo=$(echo $gerenciador_de_arquivo | head -n1 | cut -d' ' -f1)

# Exibe o comando exec do gerenciador de arquivos

# echo "O comando exec do gerenciador de arquivos é: $gerenciador_de_arquivo"


# Exibe o nome do gerenciador de arquivos armazenado

echo "$(gettext 'The default file manager is:') $gerenciador_de_arquivo"



# ----------------------------------------------------------------------------------------

# Busca todas as janelas abertas e as minimiza no FluxBox


wmctrl -l | awk '{print $1}' | while read id; do wmctrl -i -r $id -b add,hidden; done


# Este comando faz o seguinte:
#
#   Usa wmctrl -l para listar todas as janelas.
#   Usa awk para pegar apenas o ID da janela.
#   Para cada ID de janela, ele usa wmctrl -i -r $id -b add,hidden para minimizar (ocultar) as janelas.

sleep 2

# Abrir o menu do Fluxbox (clicando com o botão direito):

# Simula o clique com o botão direito para abrir o menu

xdotool click 3

# Navega para baixo no menu

xdotool key Down
xdotool key Down
xdotool key Down
xdotool key Down
xdotool key Down

sleep 0.5  # Espera o movimento


# Navega para a direita

xdotool key Right

sleep 0.5  # Espera o movimento


# Navega para baixo no menu

xdotool key Down


# Navega para a direita

xdotool key Right

sleep 0.5  # Espera o movimento


# ----------------------------------------------------------------------------------------

# Para abrir o gerenciador de arquivos padrão e posicioná-lo em uma posição específica da tela usando o xdotool e o wmctrl

# Abrir o gerenciador de arquivos padrão

$gerenciador_de_arquivo ~/ &

# Esperar um momento para garantir que o Thunar seja aberto

sleep 1

# Encontrar a janela do Thunar (pode precisar de um ajuste no nome da janela, caso seja diferente)

WINDOW_ID=$(xdotool search --onlyvisible --class $gerenciador_de_arquivo | head -n 1)

# Mover a janela do gerenciador de arquivo para a posição (X=100, Y=100)

xdotool windowmove $WINDOW_ID 100 100


# Usando wmctrl (Alternativa para mover a janela)

# Usar o wmctrl para mover a janela do Thunar (ajuste o nome da janela se necessário)
# wmctrl -r "$gerenciador_de_arquivo" -e 0,100,100,800,600


# Detalhamento do comando wmctrl:

#     -r "Thunar": Especifica que estamos interagindo com a janela do Thunar.
#     -e 0,100,100,800,600: Define a geometria da janela, com a posição inicial (100, 100) e o tamanho da janela (largura 800 e altura 600). Os valores podem ser ajustados conforme necessário.

# ----------------------------------------------------------------------------------------

# Para tirar um print da tela


# Para notificar o usuário sobre a captura de tela no Linux após tirá-la com um comando, 
# você pode usar uma ferramenta de notificação como notify-send. A ferramenta notify-send 
# é parte do pacote libnotify, e permite enviar notificações para o sistema de notificações 
# da área de trabalho.


# Notificar o usuário que a captura de tela será tirada

notify-send "$(gettext 'Screenshot')" "$(gettext 'The screenshot is about to be taken in') 6s..."

# Esperar um momento para garantir que a notificação seja exibida

# sleep 6


# Algumas das opções mais comuns são scrot, import (do pacote ImageMagick)


# Tirar uma captura de tela com atraso (exemplo de 6 segundos):

# scrot -d 6 ~/screenshot.png


# Notificar o usuário

notify-send "$(gettext 'Screenshot')" "$(gettext 'The screenshot was saved in') ~/screenshot.png"


# ----------------------------------------------------------------------------------------

# Para redimensionar arquivos de imagem no terminal do Linux, você pode usar diversas 
# ferramentas populares. Uma das mais comuns é o ImageMagick, que oferece uma grande 
# variedade de opções para manipulação de imagens, incluindo redimensionamento.


# convert input.jpg -resize 800x600 output.jpg


# Para criar uma miniatura (thumb) de um arquivo de imagem

# convert ~/screenshot.png -resize 170x170  ~/screenshot-thumb.jpg


}

# ----------------------------------------------------------------------------------------



# Verificar o processo de login

# Os gerenciadores de login geralmente iniciam processos específicos, como gdm, lightdm, 
# sddm, etc. Você pode verificar os processos em execução no sistema usando o comando ps 
# para encontrar o processo do gerenciador de login.


# Como funciona:

#     O comando ps aux lista todos os processos em execução no sistema.
# 
#     O grep é utilizado para procurar por processos relacionados aos gerenciadores de login.
# 
#     O uso de expressões como [g]dm evita que o próprio comando grep apareça nos 
#     resultados, tornando a busca mais precisa.


# Considerações gerais:

#     Temas: Muitos gerenciadores de login permitem a personalização de sua interface por 
#     meio de temas. Os temas geralmente estão localizados dentro do diretório 
#     /usr/share/<nome_do_gdm>/ ou /usr/share/<nome_do_dm>/.
# 
#     Greeters: O "greeter" é o componente gráfico que exibe a interface de login. 
#     Gerenciadores como LightDM e SDDM têm arquivos específicos para configurar a 
#     aparência do greeter (por exemplo, lightdm-gtk-greeter.conf ou sddm.conf).


# Função para identificar o gerenciador de login com base nos processos em execução


identificar_gerenciador_de_login() {


echo -e "
$(gettext 'Login Manager in use:')
"


    if ps aux | grep -q '[g]dm'; then


       echo -e "\n${GREEN}$(gettext 'You are using GDM (GNOME Display Manager).') ${NC} \n"

       tela_de_login="GDM Theme"

       gerenciador_de_login_config=""

       # /etc/gdm3/ — Diretório contendo arquivos de configuração do GDM 3.
       # /etc/gdm3/daemon.conf — Arquivo principal de configuração do daemon do GDM.
       # /etc/gdm3/custom.conf — Arquivo de configuração adicional para personalizações do GDM.
       # /usr/share/gdm/ — Contém recursos, como temas e greeters (interface de login).


    elif ps aux | grep -q '[l]ightdm'; then


       echo -e "\n${GREEN}$(gettext 'You are using LightDM (Display Manager).') ${NC} \n"

       tela_de_login="LightDM Theme"


       # Arquivo de configuração do greeter GTK, que define o tema da tela de login.

        # gerenciador_de_login_config="/etc/lightdm/lightdm-gtk-greeter.conf"

       # /etc/lightdm/ — Diretório contendo os arquivos de configuração do LightDM.
       # /etc/lightdm/lightdm.conf — Arquivo principal de configuração do LightDM.
       # /etc/lightdm/lightdm-gtk-greeter.conf — Arquivo de configuração do greeter GTK, que define o tema da tela de login.
       # /usr/share/lightdm/ — Contém temas e recursos do LightDM.


       ### VARIÁVEIS DE CONFIGURAÇÃO DO SISTEMA A SEREM SALVAS E RESTAURADAS

       LDMDIR="/etc/lightdm"

       LDM="lightdm-gtk-greeter.conf"



    elif ps aux | grep -q '[s]ddm'; then


       echo -e "\n${GREEN}$(gettext 'You are using SDDM (Simple Desktop Display Manager).') ${NC} \n"


       tela_de_login="SDDM Theme"


       gerenciador_de_login_config="/etc/sddm.conf"


       # /etc/sddm.conf            — Arquivo de configuração do SDDM.
       # /etc/sddm.conf.d/         — Diretório contendo arquivos adicionais de configuração para o SDDM.

       # /usr/share/sddm/          — Contém temas e configurações de greeters.
       # /usr/share/sddm/themes/

       # /var/lib/sddm/            — Contém informações de sessão do SDDM.


    elif ps aux | grep -q '[l]xdm'; then


       echo -e "\n${GREEN}$(gettext 'You are using LXDM (LXQt Display Manager).') ${NC} \n"

       tela_de_login="LXDM Theme"

       gerenciador_de_login_config=""

       # /etc/lxdm/ — Diretório contendo arquivos de configuração do LXDM.
       # /etc/lxdm/lxdm.conf — Arquivo principal de configuração do LXDM.
       # /usr/share/lxdm/ — Contém temas e arquivos de recursos do LXDM.


    elif ps aux | grep -q '[x]dm'; then


       echo -e "\n${GREEN}$(gettext 'You are using XDM (X Display Manager).') ${NC} \n"

       tela_de_login="XDM Theme"

       gerenciador_de_login_config=""

       # /etc/X11/xdm/ — Diretório contendo os arquivos de configuração do XDM.
       # /etc/X11/xdm/xdm-config — Arquivo principal de configuração do XDM.
       # /usr/share/xdm/ — Contém recursos e temas do XDM.

    elif ps aux | grep -q '[m]dm'; then


        echo -e "\n${GREEN}$(gettext 'You are using MDM (Mint Display Manager).') ${NC} \n"

       tela_de_login="MDM Theme"

        gerenciador_de_login_config=""

       # /etc/mdm/ — Diretório contendo arquivos de configuração do MDM.
       # /etc/mdm/mdm.conf — Arquivo principal de configuração do MDM.
       # /usr/share/mdm/ — Contém arquivos de temas e greeters.


    elif ps aux | grep -q '[s]lim'; then


       echo -e "\n${GREEN}$(gettext 'You are using SLiM (Simple Login Manager).') ${NC} \n"

       tela_de_login="SLiM Theme"

       gerenciador_de_login_config=""

       # /etc/slim.conf — Arquivo de configuração principal do SLiM.
       # /usr/share/slim/ — Contém arquivos de temas e recursos adicionais.


    else

        echo -e "\n$0: ${RED}$(gettext 'Unable to identify login manager.') ${NC} \n"

    fi


# Esses arquivos podem ser editados diretamente para ajustar o comportamento do 
# gerenciador de login, como configurar a sessão padrão, temas, login automático, e 
# outros ajustes relacionados à interface gráfica de login.


}



# Chamar a função para identificar o gerenciador de login

identificar_gerenciador_de_login
                                              




# ----------------------------------------------------------------------------------------


# É possível integrar esse script dentro de outro script, utilizando uma função. A ideia 
# é encapsular a lógica do bl-restart dentro de uma função no script principal. Assim, 
# você pode chamar essa função no momento que desejar reiniciar processos a partir do 
# nome do processo.


# Integração


# Função que reinicia todos os processos com o nome especificado


bl_restart() {

#
#    bl-restart: a script to restart all instances of a process name
#    Copyright (C) 2015 damo    <damo@bunsenlabs.org>
#    Copyright (C) 2015-2021  John Crawley <john@bunsenlabs.org>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

HELP='bl-restart is a script to restart all running instances of
any process name passed

Usage: bl-restart <name>
   or: bl-restart -h|--help

Optional arguments:
    -h | --help  Show this message (no other options are supported at this time)

Each running process is stopped with SIGTERM.

All previously running commands are then re-run, forked and disowned,
with any duplicates removed.
'

wait_timeout=10s

# look for a help option somewhere

for i in "$@"
do
    case "$i" in

    -h|--help)
        echo "$HELP"

        # exit 0

        return 0

        ;;
    esac
done


name=$1

pgrep -x -u "$USER" "$name" >/dev/null || {


    message=$(gettext 'No %s processes running')

    echo "$0: $(printf "$message" "$name")"


    # exit 0

    return 0
}


declare -A commands # associative array

tailpids=()

index=1


while read -r pid cmd; do


    message=$(gettext 'No %s processes found belonging to %s')

    [[ -n $pid ]] || { echo "$0: $(printf "$message" "$name" "$USER")" >&2; return 1;}


    commands["$cmd"]=C${index} # Comandos duplicados serão iniciados apenas uma vez

    mapfile -d '' -t "C${index}" < "/proc/${pid}/cmdline" # use NULL delimiter to split cmdline into array C$index

    (( index++ ))

    kill -TERM "$pid" || { echo "$0: ERROR: failed to kill $pid" >&2; return 1;}

    tail -f /dev/null --pid="$pid" & tailpids+=($!) # wait in background for process to die

done <<< "$(pgrep -ax "$name" -u "$USER")"

# an extra "tail" process for each killed process is the price of being able to "wait" for them to close
# "wait" can only wait for children of this script


trap 'exit 1' SIGUSR1

{ sleep $wait_timeout; echo "$0: Some processes still running after $wait_timeout, killing $0" >&2; kill -s SIGUSR1 $$; } & sleep_pid=$!

wait "${tailpids[@]}" # wait till all forked tail commands have terminated

kill "$sleep_pid"

wait "$sleep_pid" >/dev/null # suppress "terminated" message after killing

set -m # enable job control so forked processes are immune to signals from script



declare -n CMD # CMD is a nameref

for CMD in "${commands[@]}" # CMD will refer to each array name in turn
do

    "${CMD[@]}" >/dev/null 2>&1 &

    disown

    sleep 0.2

done

set +m

}



# Exemplo de uso da função bl_restart

# echo "Chamando a função bl_restart para reiniciar o processo 'myapp'"

# bl_restart "myapp"

# Continuar com o resto do seu script

# echo "O script principal continua após o reinício dos processos."



# ----------------------------------------------------------------------------------------


# função para obter informações relacionadas ao Xinerama (gerenciamento de múltiplos monitores no X11) usando Python.

# bl-xinerama-prop: script para obter propriedades do xinerama em um script de shell


# Este script Python é projetado para obter informações sobre o monitor no qual o cursor 
# do mouse está localizado, usando o X11 (um sistema de janela usado em muitos ambientes 
# gráficos Unix-like). Ele utiliza a biblioteca GDK (parte do GTK) para interagir com a 
# tela e o dispositivo de ponteiro (o mouse). 


# Defina a função para executar o script Python




bl-xinerama-prop() {


# O comando python3 --debug executa o script Python com o modo de depuração ativado. Isso 
# faz com que mensagens de depuração (geradas com logging.debug() no código Python) sejam 
# exibidas no terminal. Porém, no seu código Python, a flag --debug só afeta o nível de 
# log quando o logging.basicConfig é configurado para registrar mensagens de depuração.


    python3 <<'EOF'
#!/usr/bin/env python3
#
#    bl-xinerama-prop: script to get xinerama properties in a shell script
#    Copyright (C) 2016 xaos52 <xaos52@bunsenlabs.org>
#                  2020 2ion <twoion@bunsenlabs.org>
#                  2023 John Crawley <john@bunsenlabs.org>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.


from argparse import ArgumentParser, Namespace
import logging
import os
import sys

import gi                              # type: ignore
gi.require_version("Gdk", "3.0")
from gi.repository import Gdk          # type: ignore

DESCRIPTION = """Using the current cursor position, print the dimensions of the monitor the cursor is on, or the monitor name."""
LOG_FORMAT = "%(asctime)s %(levelname)s %(module)s %(funcName)s() : %(message)s"



def getopts() -> Namespace:
    ap = ArgumentParser(description=DESCRIPTION)
    ap.add_argument("-d", "--debug", action="store_true", default=False, help="print debug information")
    ap.add_argument("-m", "--monitor", action="store_true", default=False, help="print current monitor name instead of dimensions")
    opts = ap.parse_args()


    if opts.debug:
        logging.basicConfig(level=logging.DEBUG, format=LOG_FORMAT)
    else:
        logging.basicConfig(level=logging.WARN, format=LOG_FORMAT)



    return opts


def main() -> str:
    opts = getopts()


    display = os.getenv("DISPLAY", None)
    if display:
        dsp = Gdk.Display.open(display)
        assert dsp is not None, f"Failed to open X11 display {display} - does it exist?"
    else:
        dsp = Gdk.Display.get_default()
        assert dsp is not None, f"Failed to open GDK default display"
    logging.debug("Using display: %s", dsp.get_name())


    # OBSERVAÇÃO: Isso não funcionará corretamente em ambientes com vários assentos.

    seat = dsp.get_default_seat()

    ptr_device = seat.get_pointer()


# Essa mensagem é registrada no log do programa e é útil principalmente para 
# desenvolvedores ou administradores que estão depurando o código ou monitorando o 
# comportamento do sistema.

# logging.error(): Registra a mensagem no log de erros. Por padrão, essas mensagens não 
# são mostradas diretamente ao usuário, mas sim armazenadas em um arquivo de log ou exibidas 
# no terminal, dependendo do nível de log configurado. Nesse caso, como o script usa o 
# logging, você só verá essa mensagem se o nível de log estiver configurado para mostrar 
# mensagens de erro ou se o script estiver sendo executado com a opção de debug ativada 
# (ou seja, com o parâmetro --debug passado ao script).

# Para que uma mensagem logging.error seja visível ao usuário, o nível de log precisa estar 
# configurado adequadamente. No script fornecido, se o usuário passar a opção --debug, o 
# nível de log será definido como DEBUG, o que faria com que mensagens de erro também 
# fossem exibidas no terminal.


    if ptr_device is None:
        logging.error("No pointer device associated with display - none connected?")
        return 1
    else:
        logging.debug("Using pointer device is: %s", ptr_device.get_name())

    _, x, y = ptr_device.get_position()
    mon = dsp.get_monitor_at_point(x, y)
    logging.debug("Using monitor: %s (%s)", mon.get_model(), mon.get_manufacturer())

    if opts.monitor:
        print(f"{mon.get_model()}")          # Nome do monitor de saída
    else:
        rect = mon.get_geometry()
        print(f"{rect.width} {rect.height}") # Exibição das dimensões do monitor

    return 0

if __name__ == "__main__":
    sys.exit(main())
EOF

}





# Certifique-se de que a função seja chamada corretamente

# mon=$(bl-xinerama-prop --monitor) || { echo "Failed to get monitor info"; return 1; }  # Monitor onde o ponteiro está


# Imprima o nome do monitor onde o cursor está

# echo "Monitor onde o ponteiro está: $mon"



# ----------------------------------------------------------------------------------------


# Este código implementa um script Python chamado bl-reload-gtk23, que serve para 
# notificar e forçar a atualização das configurações de temas e outros ajustes de 
# aparência de aplicativos GTK2 e GTK3. Após alterações nos arquivos de configuração 
# desses aplicativos, o script pode enviar notificações para que eles recarreguem as 
# configurações alteradas sem precisar reiniciar.
# 
# Aqui está um resumo das principais funcionalidades e o que cada parte do código faz:
# Objetivos principais do script:
# 
#  Notificar clientes GTK2 e GTK3: O script envia sinais para aplicativos GTK2 e GTK3 
# para que recarreguem suas configurações de tema e aparência, após alterações nos 
# arquivos de configuração.
# 
#  Integração com xsettingsd: Para GTK3, o script interage com o serviço xsettingsd, que 
# é responsável por gerenciar a aparência e outras configurações. Caso xsettingsd não 
# esteja em execução, o script tenta iniciá-lo ou enviar um sinal para recarregar suas 
# configurações.
# 
# Funções e componentes principais:
# 
#     Argumentos de linha de comando (getopts):
#         O script permite configurar opções como ativação de debug (--debug), ignorar erros (--force), e outras opções de configuração.
#         A opção --sync-xsettingsd-from permite que as configurações do GTK3 sejam sincronizadas com o arquivo de configuração xsettingsd.
# 
#     Sincronização de configurações do GTK2 (sync_gtk2):
#         Esta função tenta notificar os aplicativos GTK2 para recarregar as configurações via X11, enviando uma mensagem para as janelas X11.
# 
#     Sincronização de configurações do GTK3 (sync_gtk3):
#         Para o GTK3, o script mapeia as configurações de GTK3 para o formato esperado por xsettingsd e pode reiniciar ou sinalizar o processo xsettingsd para aplicar as novas configurações.
# 
#     Debug de Mapeamento de Configurações GTK (debug_gtk_mappings):
#         Caso seja ativado o modo de debug, essa função imprime os mapeamentos de propriedades do GTK para suas correspondentes no xsettingsd.
# 
#     Código de saída:
#         O script retorna diferentes códigos de saída dependendo de seu sucesso ou falha ao notificar os aplicativos GTK2 e GTK3. Os códigos de saída possíveis são:
#             0: Ambos os clientes GTK2 e GTK3 foram notificados com sucesso.
#             1: Falha ao notificar clientes GTK2.
#             2: Falha ao notificar clientes GTK3.
#             3: Falha ao notificar clientes GTK2 e GTK3.
# 
# Dependências:
# 
#     A biblioteca psutil é usada para verificar se o processo xsettingsd está em execução.
#     O script também depende de bibliotecas do PyGObject (para interagir com o GTK) e do Xlib (para enviar mensagens para o servidor X11).
# 
# Resumo:
# 
# Este script é útil para usuários que frequentemente modificam os arquivos de configuração de aparência do GTK (como temas e fontes) e precisam que as alterações sejam aplicadas em tempo real nos aplicativos GTK2 e GTK3, sem precisar reiniciar os aplicativos ou o sistema. Ele oferece opções de debug, controle sobre a sincronização de configurações e a possibilidade de gerenciar a execução de xsettingsd.



function reloadGTK(){   # Recarregar tema gtk após restaurar configuração salva.

    debug "\n$(gettext 'Reloading GTK theme...')"

    if ((DEBUG_FLAG)); then

        # Iniciar código Python embutido

        python3 - <<'EOF'
import logging
import os
import shutil
import signal
import subprocess
from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter, Namespace
from configparser import ConfigParser
from pathlib import Path
import psutil
import xdg.BaseDirectory
import gi
import Xlib.display
import Xlib.protocol
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk

DESCRIPTION = """
After changing GTK2 and GTK3 configuration files, notify running GTK2 and GTK3 clients to apply
those changes. The notification mechanism used by GTK3 requires that xsettingsd is running. If it is
installed and not running, the program will launch it.
"""

LOG_FORMAT = "%(asctime)s %(levelname)s %(module)s %(funcName)s() : %(message)s"

XSETTINGSD_MAPPINGS = {
   "gtk-button-images" : "Gtk/ButtonImages",
   "gtk-color-palette" : "Gtk/ColorPalette",
   "gtk-cursor-blink" : "Net/CursorBlink",
   # ... (adicione o restante do mapeamento XSETTINGSD_MAPPINGS aqui)
}

TRUTHY = { "1", "true", "TRUE" }

def getopts() -> Namespace:
   ap = ArgumentParser(description=DESCRIPTION, formatter_class=ArgumentDefaultsHelpFormatter)
   ap.add_argument("-d", "--debug", action="store_true", default=False, help="print debug information")
   ap.add_argument("-f", "--force", action="store_true", default=False, help="ignore all errors")
   ap.add_argument("-s", "--sync-xsettingsd-from", type=Path, default=Path(xdg.BaseDirectory.save_config_path("gtk-3.0")) / "settings.ini", help="Path of GTK3 settings.ini file to sync settings for xsettingsd from", metavar="FILE")
   opts = ap.parse_args()
   if opts.debug:
       logging.basicConfig(level=logging.DEBUG, format=LOG_FORMAT)
   else:
       logging.basicConfig(level=logging.WARNING, format=LOG_FORMAT)
   return opts

def sync_gtk3(opts: Namespace) -> None:
    xsettingsd_process_found = False
    try:
        xsettingsd_config_dir = Path(xdg.BaseDirectory.save_config_path("xsettingsd"))
        xsettingsd_config_file = xsettingsd_config_dir / "xsettingsd.conf"
    except Exception as err:
        raise RuntimeError("XDG failed to create the current user's xsettingsd directory")

    # Adicionar a lógica para sincronizar o GTK3
    logging.debug("Syncing GTK3 settings...")

    # Aqui você pode adicionar o restante da lógica que manipula o xsettingsd

    if not opts.no_signal:
        for proc in psutil.process_iter():
            if proc.name() == "xsettingsd":
                proc.send_signal(signal.SIGHUP)
                xsettingsd_process_found = True
                logging.debug("Found xsettingsd process and sent SIGHUP: PID %d", proc.pid)
                break
        if not xsettingsd_process_found:
            xsettingsd_binary = shutil.which("xsettingsd")
            if xsettingsd_binary is not None:
                proc = subprocess.Popen([xsettingsd_binary], cwd="/", start_new_session=True)
                logging.debug("xsettingsd not running; started from %s; PID: %d", xsettingsd_binary, proc.pid)
            else:
                raise RuntimeError("xsettingsd not running and not in PATH, no settings changes propagated")
    else:
        logging.debug("Skipping sending of SIGHUP to xsettingsd as requested")

def main() -> int:
   opts = getopts()
   ret = 0

   try:
      sync_gtk3(opts)
   except Exception as err:
      logging.warning("Failed to reload GTK3 settings: %s", err)
      ret |= 1 << 1

   return 0 if opts.force else ret

if __name__ == "__main__":
   raise SystemExit(main())
EOF
        # Fim do código Python embutido

        debug "\n$(gettext 'bl-reload-gtk23: done')\n" || echo "$(gettext 'bl-reload-gtk23 failed')" >&2
    else

        # Executar o código Python sem debug

        python3 - <<'EOF'
import logging
import os
import shutil
import signal
import subprocess
from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter, Namespace
from configparser import ConfigParser
from pathlib import Path
import psutil
import xdg.BaseDirectory
import gi
import Xlib.display
import Xlib.protocol
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk

DESCRIPTION = """
After changing GTK2 and GTK3 configuration files, notify running GTK2 and GTK3 clients to apply
those changes. The notification mechanism used by GTK3 requires that xsettingsd is running. If it is
installed and not running, the program will launch it.
"""

LOG_FORMAT = "%(asctime)s %(levelname)s %(module)s %(funcName)s() : %(message)s"

XSETTINGSD_MAPPINGS = {
   "gtk-button-images" : "Gtk/ButtonImages",
   "gtk-color-palette" : "Gtk/ColorPalette",
   "gtk-cursor-blink" : "Net/CursorBlink",
   # ... (adicione o restante do mapeamento XSETTINGSD_MAPPINGS aqui)
}

TRUTHY = { "1", "true", "TRUE" }

def getopts() -> Namespace:
   ap = ArgumentParser(description=DESCRIPTION, formatter_class=ArgumentDefaultsHelpFormatter)
   ap.add_argument("-d", "--debug", action="store_true", default=False, help="print debug information")
   ap.add_argument("-f", "--force", action="store_true", default=False, help="ignore all errors")
   ap.add_argument("-s", "--sync-xsettingsd-from", type=Path, default=Path(xdg.BaseDirectory.save_config_path("gtk-3.0")) / "settings.ini", help="Path of GTK3 settings.ini file to sync settings for xsettingsd from", metavar="FILE")
   opts = ap.parse_args()
   if opts.debug:
       logging.basicConfig(level=logging.DEBUG, format=LOG_FORMAT)
   else:
       logging.basicConfig(level=logging.WARNING, format=LOG_FORMAT)
   return opts

def sync_gtk3(opts: Namespace) -> None:
    xsettingsd_process_found = False
    try:
        xsettingsd_config_dir = Path(xdg.BaseDirectory.save_config_path("xsettingsd"))
        xsettingsd_config_file = xsettingsd_config_dir / "xsettingsd.conf"
    except Exception as err:
        raise RuntimeError("XDG failed to create the current user's xsettingsd directory")

    logging.debug("Syncing GTK3 settings...")

    if not opts.no_signal:
        for proc in psutil.process_iter():
            if proc.name() == "xsettingsd":
                proc.send_signal(signal.SIGHUP)
                xsettingsd_process_found = True
                logging.debug("Found xsettingsd process and sent SIGHUP: PID %d", proc.pid)
                break
        if not xsettingsd_process_found:
            xsettingsd_binary = shutil.which("xsettingsd")
            if xsettingsd_binary is not None:
                proc = subprocess.Popen([xsettingsd_binary], cwd="/", start_new_session=True)
                logging.debug("xsettingsd not running; started from %s; PID: %d", xsettingsd_binary, proc.pid)
            else:
                raise RuntimeError("xsettingsd not running and not in PATH, no settings changes propagated")
    else:
        logging.debug("Skipping sending of SIGHUP to xsettingsd as requested")

def main() -> int:
   opts = getopts()
   ret = 0

   try:
      sync_gtk3(opts)
   except Exception as err:
      logging.warning("Failed to reload GTK3 settings: %s", err)
      ret |= 1 << 1

   return 0 if opts.force else ret

if __name__ == "__main__":
   raise SystemExit(main())
EOF
        # Fim do código Python embutido


        # Mensagem de falha se ocorrer erro

        echo "$(gettext 'bl-reload-gtk23 failed')" >&2

    fi

}




# ----------------------------------------------------------------------------------------






# ----------------------------------------------------------------------------------------


TXTINTRO=$(


message=$(gettext 'BLOB: Theme Manager - BunsenLabs')

message1=$(gettext 'Save or restore settings for any or all of these:')


echo "
$(printf "<big> <b> $message </b> </big>")


$(printf "<b> $message1 </b>")

$(gettext '    Openbox Theme')
    $(gettext 'Fluxbox Theme')
$(gettext '    GTK Theme')
$(gettext '    Conkys')
$(gettext '    Tint2')
$(gettext '    Plank')
$(gettext '    obmenu-generator')
$(gettext '    Desktop background')
$(gettext '    Alternative menu (dmenu)')
    $(gettext "$tela_de_login")
    $(gettext 'Rofi Menu Theme')
$(gettext '    X Settings (.bashrc, .Xresources)')
$(gettext '    Terminal (if the configuration file is known)')
$(gettext '    Compositor (if the configuration file exists)')
$(gettext '    jgmenu (if the configuration file exists)')
$(gettext '    + Screenshot')

"


# <big><b>BLOB: Gerenciador de temas - BunsenLabs </b></big>
# 
# 
# <b>Salvar ou restaurar configurações para qualquer um ou todos estes:</b>
# 
#     Tema Openbox
#     Tema do Fluxbox
#     Tema GTK
#     Conkys
#     Tint2
#     Plank
#     obmenu-generator
#     Plano de fundo da área de trabalho
#     Menu alternativo (dmenu)
#     Tema LightDM
#     Configurações X (.bashrc, .Xresources)
#     Terminal (se o arquivo de configuração for conhecido)
#     Compositor (se o arquivo de configuração existir)
#     jgmenu (se o arquivo de configuração existir)
#     + Captura de tela
# 
# 


)



# ----------------------------------------------------------------------------------------

# Verificar a inicialização automática de programas no Fluxbox


check_autostart_FluxBox(){


# Caminho do arquivo startup

arquivo="$HOME/.fluxbox/startup"


# Verifica se o arquivo existe

if [ ! -f "$arquivo" ]; then


    # Se não existir, exibe uma mensagem de erro usando yad


    message=$(gettext 'The file %s was not found!')

    yad --center --title "$(gettext 'Error')"  --window-icon="$ICON" --image="error" --text="$(printf "$message" "$arquivo")" --buttons-layout=center --button="OK":0 --width="300" --height="150"

else

    # Caso o arquivo exista, pode adicionar outro comportamento, se necessário

    message=$(gettext 'The file %s exists.')

    echo "$(printf "$message" "$arquivo")"


                                        # Verificar se esta executando o Nitrogen na inicialização do FluxBox

                                        grep "^nitrogen --restore" "$arquivo"  1>/dev/null 2>/dev/null

                                        if [ "$?" == "0" ];
                                        then 
                                                   echo -e "\n${GREEN}$(gettext 'Nitrogen is already in the FluxBox startup...') ${NC} \n"

                                              else

                                                   echo -e "\n$0: ${RED}$(gettext 'Nitrogen is not in the FluxBox startup...') ${NC} \n"

                                                   # echo "nitrogen --restore &" >> "$arquivo"

                                        fi


fi





}


# ----------------------------------------------------------------------------------------

# Verificar a inicialização automática de programas no OpenBox


check_autostart_OpenBox(){


# Caminho do arquivo autostart

arquivo="$HOME/.config/openbox/autostart"

# Verifica se o arquivo existe

if [ ! -f "$arquivo" ]; then

    # Se não existir, exibe uma mensagem de erro usando yad


    message=$(gettext 'The file %s was not found!')

    yad --center --title "$(gettext 'Error')" --window-icon="$ICON" --image="error" --text="$(printf "$message" "$arquivo")" --buttons-layout=center --button="OK":0  --width="300" --height="150"


else

    # Caso o arquivo exista, pode adicionar outro comportamento, se necessário


    message=$(gettext 'The file %s exists.')

    echo -e "\n$(printf "$message" "$arquivo")\n"


                                        # Verificar se esta executando o Nitrogen na inicialização do OpenBox/bspwm

                                        grep "^nitrogen --restore &" "$arquivo"  1>/dev/null 2>/dev/null

                                        if [ "$?" == "0" ];
                                        then 
                                                   echo -e "\n${GREEN}$(gettext 'Nitrogen is in the OpenBox startup...') ${NC} \n"

                                               else

                                                   echo -e "\n$0: ${RED}$(gettext 'Nitrogen is not in the OpenBox startup...') - [ nitrogen --restore & ] ${NC} \n"

                                                   # echo "nitrogen --restore &" >> "$arquivo"
                                        fi


fi





}


# ----------------------------------------------------------------------------------------


# Ajuda


HELP=$(


# Criar uma caixa de entrada para o feedback

# yad --center --title="Feedback" --textarea --text="" \
# --buttons-layout=center \
# --button="$close_button" \
# --width="500" --height="300" 



message=$(gettext 'This is a fork of bunsen-blob: %s')

feedback=$(gettext 'Please provide your feedback at %s for further improvement.')



# Para adicionar quebras de linha ao seu código de forma legível e formatada, basta 
# garantir que cada linha de texto tenha sua própria linha de comando echo ou que as 
# quebras de linha estejam corretamente posicionadas no conteúdo dentro das aspas.


# $(gettext '            Lightdm login gtk greeter')


echo -e "

$(gettext 'bl-obthemes is a script to save or restore gui theme settings')

$(gettext 'Usage:  bl-obthemes [-h|--help][-v|--verbose]')

$(gettext 'Optional arguments:')

$(gettext '        -h, --help      show this message')
$(gettext '        -v, -d, --verbose, --debug   describe actions being performed')

$(gettext 'No other CLI options are supported.') 

$(gettext 'Save options:')

$(gettext '            Conky(s)')
$(gettext '            Tint2(s)')
$(gettext '            Openbox theme')
            $(gettext 'Fluxbox Theme')
$(gettext '            GTK theme')
$(gettext '            Plank')
$(gettext '            obmenu-generator')
$(gettext '            Background')
$(gettext '            (uses Nitrogen or feh, depending which has the newer saved bg config file)')
$(gettext '            Alt Menu (dmenu)')
            $(gettext "$tela_de_login")
            $(gettext 'Rofi Menu Theme')
$(gettext '            X configs (.bashrc, .Xresources)')
$(gettext '            Terminal emulator config (if available)')
$(gettext '            Compositor config (if available)')
$(gettext '            jgmenu theming (if available)')


$(gettext 'Paths are assumed to be BunsenLabs defaults.')
$(gettext 'A Screenshot is saved')

$(gettext '                    (Windows are hidden briefly so the image')
$(gettext '                    is the bare desktop, with any Tint2s')
$(gettext '                    or Conkys which are running, and a representive')
$(gettext '                    menu and window open.)')

$(gettext 'A time-stamped backup of rc.xml is saved "just in case".')

$(gettext 'Configuration:')

$(gettext ' USER VARIABLE: xdotool is used to move the mouse pointer, and assumes the')
$(gettext ' root-menu is shown with "Super + Space" keys, and the right mouse button is')
$(gettext ' set for "r-click". If you have set these to something else, then edit the')
$(gettext ' "MENUMODIFIER" variable and "MOUSECMD" array.')
$(gettext ' Set the variable "KEYDOWN" to where "Preferences" is in the root-menu (or')
$(gettext ' anything else you might want displayed).')
$(gettext ' The image viewer is set to be "bl-image-viewer". Edit the "IMGCMD" variable')
$(gettext ' to change this.')

$(gettext 'WARNING:')

$(gettext ' Conkys in non-default directories are saved, but will not be seen')
$(gettext ' when running the "bl conky" manager.')

$(gettext 'KNOWN ISSUES:')

$(gettext ' Virtualbox does not allow the guest to move the host mouse cursor,')
$(gettext ' using xdotool, so the screenshot may produce an incorrect theme displayed')
$(gettext ' and/or poor positioning.')
$(gettext ' A workaround is to move the cursor to some free space, and use')
$(gettext ' the "Enter" key in the "Configurations to be saved:" dialog.')



$(printf "$message" "$fork")


$(gettext 'Thank you for using our program!')


$(printf "$feedback" "https://github.com/tuxslack/bl-obthemes/pulls")


$(gettext 'plus the software. This helps us understand your needs.')


"

# O gettext pode ter dificuldades ao lidar com o caractere de escape.

# Observação: As aspas duplas são usadas diretamente sem a necessidade de \.



# $(printf "$message" "<a href=$fork></a>")

# $(printf "$feedback" "<a href=https://github.com/tuxslack/bl-obthemes/pulls></a>")





# bl-obthemes is a script to save or restore gui theme settings.
#
# Usage:  bl-obthemes [-h|--help][-v|--verbose]
# 
# Optional arguments:
#         -h, --help      show this message
#         -v, -d, --verbose, --debug   describe actions being performed
# No other CLI options are supported.
# 
# Save options:
#             Conky(s)
# 
#             Tint2(s)
# 
#             Openbox theme
# 
#             GTK theme
# 
#             Background
#             (uses Nitrogen or feh, depending which has the newer saved bg config file)
# 
#             Alt Menu (dmenu)
# 
#             Lightdm login gtk greeter
# 
#             X configs (.bashrc, .Xresources)
# 
#             Terminal emulator config (if available)
# 
#             Compositor config (if available)
# 
#             jgmenu theming (if available)
# 
# Paths are assumed to be BunsenLabs defaults.
# 
# A Screenshot is saved
#                     (Windows are hidden briefly so the image
#                     is the bare desktop, with any Tint2s
#                     or Conkys which are running, and a representive
#                     menu and window open.)
# 
# A time-stamped backup of rc.xml is saved "just in case".
# 
# Configuration:
# 
#  USER VARIABLE: xdotool is used to move the mouse pointer, and assumes the
#  root-menu is shown with "Super + Space" keys, and the right mouse button is
#  set for "r-click". If you have set these to something else, then edit the
#  "MENUMODIFIER" variable and "MOUSECMD" array.
#  Set the variable "KEYDOWN" to where "Preferences" is in the root-menu (or
#  anything else you might want displayed).
#  The image viewer is set to be "bl-image-viewer". Edit the "IMGCMD" variable
#  to change this.
# 
# WARNING:
#  Conkys in non-default directories are saved, but will not be seen
#  when running the bl conky manager.
# 
# KNOWN ISSUES:
#  Virtualbox does not allow the guest to move the host mouse cursor,
#  using xdotool, so the screenshot may produce an incorrect theme displayed
#  and/or poor positioning.
#  A workaround is to move the cursor to some free space, and use
#  the "Enter" key in the "Configurations to be saved:" dialog.






##  bl-obthemes é um script para salvar ou restaurar configurações de tema da interface gráfica

# bl-obthemes é um script para salvar ou restaurar as configurações do tema gui.
# 
# Uso:  bl-obthemes [-h|--help][-v|--verbose]
# 
# 
# Argumentos opcionais:
# 
#         -h, --help                   mostrar esta mensagem
#         -v, -d, --verbose, --debug   descrever ações sendo executadas
# Nenhuma outra opção CLI é suportada.
# 
# 
# Opções de salvamento:
# 
#             Conky(s)
# 
#             Tint2(s)
# 
#             Plank
# 
#             obmenu-generator
# 
#             Tema OpenBox (theme)
# 
#             Tema GTK
# 
#             Papel de parede (Background)
# 
#             (usa Nitrogen ou feh, dependendo de qual tem o arquivo de configuração bg mais recente salvo)
# 
# 
#             Menu alternativo (dmenu)
# 
#             Lightdm login gtk saudação
# 
#             Configurações X (.bashrc, .Xresources)
# 
#             Configuração do emulador de terminal (se disponível)
# 
#             Configuração do compositor (se disponível)
# 
#             Tema do jgmenu (se disponível)
# 
# 
# Os caminhos são considerados padrões do BunsenLabs.
# 
# Uma captura de tela é salva
# 
#                     (As janelas ficam ocultas brevemente para que a imagem
#                      seja a área de trabalho vazia, com qualquer Tint2s
#                      ou Conkys em execução e um menu representativo
#                      e janela abertos.)
# 
# 
# Um backup com registro de data e hora do rc.xml é salvo "para garantir".
# 
# 
# Configuração:
# 
#  VARIÁVEL DO USUÁRIO: xdotool é usado para mover o ponteiro do mouse e assume que o menu 
#  raiz é exibido com as teclas "Super + Espaço" e o botão direito do mouse está definido 
#  para "clique com o botão direito". Se você tiver definido isso para outra coisa, edite a 
#  variável "MENUMODIFIER" e o array "MOUSECMD".
# 
#  Defina a variável "KEYDOWN" para onde "Preferências" está no menu raiz (ou qualquer outra 
#  coisa que você queira exibir).
# 
#  O visualizador de imagens está definido como "gThumb". Edite a variável "IMGCMD"
#  para alterar isso.
# 
# 
# AVISO:
# 
# Conkys em diretórios não padrão são salvos, mas não serão vistos
# ao executar o gerenciador de bl conky.
# 
# 
# PROBLEMAS CONHECIDOS:
# 
# O Virtualbox não permite que o convidado mova o cursor do mouse do host,
# usando xdotool, então a captura de tela pode produzir um tema incorreto exibido
# e/ou posicionamento ruim.
# 
# Uma solução alternativa é mover o cursor para algum espaço livre e usar
# a tecla "Enter" na caixa de diálogo "Configurações a serem salvas:".



)



HELP_MAN(){

echo "
$HELP
"


}



# ----------------------------------------------------------------------------------------


PROBLEMAS_CONHECIDOS=$(

echo "

****************************************************************************

$(gettext 'KNOWN ISSUES:')

$(gettext 'Virtualbox does not allow the guest to move the host mouse cursor with xdotool,')
$(gettext 'so the screenshot may display the theme incorrectly or with bad positioning.')

$(gettext 'A workaround is to move the cursor to some free space')
$(gettext 'and use the "Enter" key in the "Settings to be saved:" dialog.')

****************************************************************************


$(gettext 'In case of crash use the command below on the host machine:')

$(gettext '$ pkill VirtualBox')


"


# ****************************************************************************
# 
# PROBLEMAS CONHECIDOS:
# 
# O Virtualbox não permite que o convidado mova o cursor do mouse do host com o xdotool,
# então a captura de tela pode exibir o tema incorretamente ou com posicionamento ruim.
# 
# Uma solução alternativa é mover o cursor para algum espaço livre
# e usar a tecla "Enter" na caixa de diálogo "Configurações a serem salvas:".
# 
# ****************************************************************************
# 
# 
# Em caso de travamento usar o comando abaixo na máquina hospedeira:
# 
# $ pkill VirtualBox



)


# ----------------------------------------------------------------------------------------


# HELP_MAN

debug() { : ;}

DEBUG_FLAG=0 # Será interpretado numericamente, como booleano

for i in "$@"
do
    case "$i" in

    -h|--help)

    # Problema para abrir o link no Firefox

    # bl_restart firefox


        echo -e "$HELP \n\n"

        # yad --center --window-icon="$ICON" --image=dialog-information  --title="$(gettext 'Help')" --text="$HELP" --buttons-layout=center --button="$close_button" --width="850" --height="400"  # 2>/dev/null

yad --center --window-icon="$ICON" --image=dialog-information \
    --title="$(gettext 'Help')" \
    --form \
    --field="\n$(gettext 'Please see the documentation for more details.')\n\nFernando Souza - <a href='https://www.youtube.com/@fernandosuporte'>https://www.youtube.com/@fernandosuporte</a>  \n$(gettext 'Repository'): <a href='https://github.com/tuxslack/bl-obthemes'>https://github.com/tuxslack/bl-obthemes</a>  \n\n$script_name \n$(gettext 'Version'): $script_version \n":TXT "$HELP \n\n" \
    --buttons-layout=center \
    --button="$close_button" \
    --width="950" --height="900"


# Explicação:

#    --form: Cria um formulário com campos interativos.
#    --field="Texto de ajuda":TXT "$HELP": Cria um campo de texto (TXT) que contém o conteúdo de $HELP. O texto será exibido em uma área de texto com rolagem.


        clear

        exit 0

        ;;

    -v|-d|--verbose|--debug)

        debug() {

            echo -e "$*"

        }

        DEBUG_FLAG=1

        ;;

    *)
        echo "${0}: ${i}: $(gettext 'no such option')"

        exit 1

        ;;

    esac

done



# https://stackoverflow.com/questions/5474732/how-can-i-add-a-help-method-to-a-shell-script


######################### VARIÁVEIS ####################################

# ( Com algumas exceções, os nomes das variáveis GLOBAL estão em maiúsculas, as funções locais estão em minúsculas )


### CONFIGURAÇÕES DO USUÁRIO PARA ESTE SCRIPT


# ----------------------------------------------------------------------------------------

# Alterado de "bl-image-viewer" para "gThumb"

# Verificar qual o visualizador de imagens do usuário



# Executando vários testes condicionais.



# Lista dos comandos de visualização de imagens

viewers=(
    "gthumb"
    "ristretto"
    "qimgv"
    "geeqie"
    "eog"
    "gwenview"
    "photoqt"
    "gpicview"
    "viewnior"
    "sxiv"
    "qiv"
    "nomacs"
    "feh"
)

# https://apps.kde.org/pt-br/gwenview/


# Verifica qual comando está disponível

for viewer in "${viewers[@]}"; do

    if command -v "$viewer" &>/dev/null; then

        IMGCMD="$viewer" # Para visualizar captura de tela

        break

    fi

done

# Se IMGCMD estiver vazio, não encontrou nenhum visualizador

if [ -z "$IMGCMD" ]; then

    echo -e "\n$0: ${RED} $(gettext 'No image viewer has been defined.') \n ${NC}" >&2

    sleep 1

    exit
fi


# Caso contrário, o comando foi encontrado e está na variável IMGCMD

# echo "Visualizador de imagem encontrado: $IMGCMD"

echo -e "\n${GREEN}$(gettext 'Image viewer to use:') $IMGCMD ${NC} \n"




sleep 0.5


# Explicação das mudanças:

#     Array viewers: Todos os programas de visualização de imagens são armazenados em um array. Isso permite que você adicione facilmente novos programas sem precisar adicionar novos elif.
#     Loop for: O loop percorre cada item do array viewers e verifica se o comando está disponível usando command -v. Assim, evita-se a repetição de blocos if.
#     Condicional if [ -z "$IMGCMD" ]: Após o loop, se nenhuma das verificações retornar verdadeira, a variável IMGCMD ficará vazia e uma mensagem de erro será exibida. Caso contrário, o programa encontrado será exibido e usado.

# Este código é mais compacto e facilita a adição ou remoção de visualizadores de imagens.



# https://www.shellscriptx.com/2016/12/estrutura-condicional-if-then-elif-else-fi.html
# https://blogdoatila.wordpress.com/2013/05/15/lista-bem-completa-de-comandos-linux/
# https://pt.stackoverflow.com/questions/294387/comando-que-verifique-se-um-software-est%C3%A1-instalado-no-ubuntu
# https://www.monolitonimbus.com.br/script-em-bash-para-redimensionar-e-renomear-imagens/
# https://sempreupdate.com.br/linux/tutoriais/conheca-os-30-melhores-visualizadores-de-imagens-graficas-gratuitos-e-de-codigo-aberto/
# https://www.edivaldobrito.com.br/visualizador-de-imagens-qimgv-no-ubuntu-e-derivados/
# https://community.linuxmint.com/software
# https://help.gnome.org/users/eog/stable/commandline.html.en
# https://community.linuxmint.com/software/view/eog
# https://www.vivaolinux.com.br/topico/Shell-Script/Verificar-se-um-programa-esta-instalado
# https://www.geeksforgeeks.org/how-to-install-nomacs-image-viewer-on-ubuntu/

# ----------------------------------------------------------------------------------------


# Reinicia o Fluxbox




# Para recarregar as configurações do Fluxbox


atualiza_tema_Flux(){


      echo -e "\n$(gettext 'Updating the theme...')\n"


# 1. Minimiza todas as janelas abertas

wmctrl -l | awk '{print $1}' | while read id; do wmctrl -i -r $id -b add,hidden; done

# 2. Simula clique com o botão direito e navega no menu para reconfigurar o FluxBox
# Abrindo o menu e pressionando "Down" para navegar até a opção de reconfiguração

xdotool click 3

sleep 0.3 # Espera o movimento


# Simular interação com o menu:

#     O xdotool é usado para simular um clique com o botão direito do mouse (click 3), o 
#     que abriria o menu do FluxBox.
# 
#     Em seguida, a tecla Down é pressionada para navegar pelas opções do menu.
# 
#     A quantidade de vezes que Down é pressionada pode precisar de ajustes, dependendo 
#     do seu menu (pode ser necessário pressionar mais ou menos vezes até chegar à opção 
#     de "Reconfigurar").


xdotool key Down
xdotool key Down
xdotool key Down
xdotool key Down
xdotool key Down


# Navega para a direita

xdotool key Right

sleep 0.5  # Espera o movimento



# A navegação para o comando de recarregar o tema pode variar de acordo com a configuração do menu
# Pode ser necessário ajustar o número de teclas Down para selecionar a opção correta

xdotool key Down
xdotool key Down
xdotool key Down
xdotool key Down
xdotool key Down
xdotool key Down

xdotool key Return  # Pressiona Enter para aplicar a opção



# Considerações Finais:

#   Simulação de eventos de teclado e mouse: A navegação no menu com xdotool pode variar 
# dependendo do seu FluxBox. Se você tiver um menu customizado ou um número diferente de 
# opções no menu, você pode precisar ajustar os comandos xdotool key Down para navegar 
# corretamente até a opção de recarregar ou reconfigurar o FluxBox.

# Alternativa para problemas de reconfiguração: Se fluxbox --reconfigure não funcionar, 
# reiniciar o FluxBox manualmente pode ser a solução.


return 0  # Retorna 0 se a atualização for bem-sucedida, ou outro valor se falhar

}


# ----------------------------------------------------------------------------------------

# Para recarregar as configurações do Fluxbox


atualiza_tema_FluxBox(){


      echo -e "\n$(gettext 'Updating the theme...')\n"

# Forçar o reinício do FluxBox

killall fluxbox

sleep 1

fluxbox &

return 0  # Retorna 0 se a atualização for bem-sucedida, ou outro valor se falhar

}


# ----------------------------------------------------------------------------------------



Restart_FluxBox(){


# No Fluxbox, a opção Restart no menu reinicia o gerenciador de janelas sem precisar 
# fechar ou reiniciar toda a sessão. Isso faz com que o Fluxbox recarregue sua configuração 
# e reinicie os processos relacionados ao ambiente gráfico, como as janelas e os menus.

# Especificamente, quando você seleciona Restart no menu do Fluxbox, ele realiza as seguintes ações:

#     Reinicia o processo do Fluxbox: O gerenciador de janelas é reiniciado sem fechar a sessão de usuário.
#     Recarrega as configurações: O Fluxbox recarrega suas configurações a partir dos arquivos de configuração, como o ~/.fluxbox/init, ~/.fluxbox/menu, etc.
#     Reinicia os aplicativos e janelas: As janelas abertas e aplicativos que estavam em execução geralmente permanecem inalterados, mas o ambiente gráfico em si será recarregado.

# Isso pode ser útil quando você faz alterações na configuração do Fluxbox, como atualizar o menu, mudar a aparência, ou ajustar preferências, e quer que essas mudanças tenham efeito imediatamente, sem precisar sair ou reiniciar a sessão inteira.


# O comando xdotool key permite enviar eventos de teclado para o sistema, o que pode 
# simular a pressão de teclas.


# Busca todas as janelas abertas e as minimiza no FluxBox


wmctrl -l | awk '{print $1}' | while read id; do wmctrl -i -r $id -b add,hidden; done


sleep 1

# ----------------------------------------------------------------------------------------


# Simula o clique com o botão direito para abrir o menu

xdotool click 3


# Para navegar para cima (geralmente equivalente à tecla "Page Up" ou à seta para cima).

# xdotool key "Page_Up"

xdotool key "Up"


# Navega para a direita

xdotool key Right

sleep 0.5  # Espera o movimento


# Para navegar para cima 

xdotool key "Up"
xdotool key "Up"
xdotool key "Up"



# Para simular a tecla Enter usando o xdotool

# A tecla "Return" é a representação do Enter no xdotool. Esse comando simula o pressionamento da tecla Enter em seu sistema.

xdotool key "Return"

sleep 1


# ----------------------------------------------------------------------------------------

# Verifica se o processo 'nitrogen' está em execução

# if pgrep -x "nitrogen" > /dev/null
# then

    # Se o processo estiver em execução
    # notify-send "Nitrogen Running" "O processo Nitrogen está carregado no sistema."


    # pkill -x "nitrogen"

    # Reinicia o Nitrogen

    nitrogen --restore &

    sleep 1

# else

    # Se o processo não estiver em execução
    # notify-send "Nitrogen Not Running" "O processo Nitrogen não está carregado no sistema."

# fi

# ----------------------------------------------------------------------------------------


# Envia a notificação

notify-send -i "$ICON" -t 30000 "$(gettext 'Fluxbox restarted')" "\n$(gettext 'Fluxbox has been successfully restarted!') \n"

# Explicação:

#    -i "$ICON": Define a imagem que será exibida na notificação. Substitua pelo caminho real da imagem.
#    -t 30000: Define o tempo de exibição da notificação em milissegundos. No exemplo, 5000 significa 30 segundos.


# O comando notify-send no Linux, usado para enviar notificações ao usuário, não tem uma 
# opção direta para definir um "tema" específico atualmente.

# ----------------------------------------------------------------------------------------


}




# ----------------------------------------------------------------------------------------

# Tem como objetivo identificar o atalho de teclado associado à ação ShowMenu no Openbox, 
# especificamente o atalho configurado para abrir o menu do Openbox (como o root-menu ou 
# qualquer outro menu associado).


identifica_atalho_menu(){


# ----------------------------------------------------------------------------------------


# Por padrão, o Fluxbox não configura automaticamente um atalho de teclado para abrir o 
# menu principal no arquivo $HOME/.fluxbox/keys. No entanto, é possível adicionar esse 
# atalho manualmente. O Fluxbox é altamente configurável, e você pode definir um atalho 
# de teclado para abrir o menu conforme necessário.

# Para configurar isso, siga estas etapas:

#     Abra o arquivo $HOME/.fluxbox/keys em um editor de texto.
#     Adicione uma linha como a seguinte para configurar o atalho de teclado desejado 
# (por exemplo, para o atalho Mod1+Space):


# Mod4 space :RootMenu

# Aqui, o Mod4 geralmente se refere à tecla Super, ou a tecla do Windows. O space é a 
# tecla de espaço.

#     Salve o arquivo e reinicie o Fluxbox ou faça o reload das configurações 
# (pressionando Ctrl+Alt+Backspace ou utilizando o menu de reinicialização do Fluxbox).

# Agora, ao pressionar Super+Space, o menu principal do Fluxbox será aberto.




# Verifica se o processo 'fluxbox' está em execução

if pgrep -x "fluxbox" > /dev/null
then

    # O processo Fluxbox está carregado no sistema.


echo "
FluxBox:
"

# Identifique a linha que chama o RootMenu no arquivo $HOME/.fluxbox/keys

# grep ":RootMenu" $HOME/.fluxbox/keys | grep -v Mouse

# Mod4 space :RootMenu

# Isso indica que a tecla Super + Space está configurada para abrir o menu do Fluxbox.

# Se o comando não encontrar nada ou se a linha não estiver presente, você pode adicionar 
# manualmente a configuração para o atalho de teclado no arquivo keys


# Verifique se a configuração do atalho para abrir o menu não está presente no arquivo 
# $HOME/.fluxbox/keys e, caso não esteja, adicione a linha Mod4 Space :RootMenu automaticamente.


# Uso excessivo de grep: Você está chamando grep ":RootMenu" $HOME/.fluxbox/keys | grep -v Mouse duas vezes no seu comando. Isso pode ser otimizado, já que o resultado da busca pode ser armazenado em uma variável para evitar múltiplas buscas no arquivo.


grep ":RootMenu" $HOME/.fluxbox/keys | grep -v Mouse 1> /dev/null && echo -e "\n${GREEN}Atalho do teclado \"$(grep ":RootMenu" $HOME/.fluxbox/keys | grep -v Mouse)\" para chama o menu do Fluxbox já está presente no arquivo $HOME/.fluxbox/keys. ${NC} \n" || { echo -e "${RED} $(gettext 'Shortcut not found. Adding shortcut') Mod4 Space :RootMenu... ${NC}" ; echo "Mod4 Space :RootMenu" >> $HOME/.fluxbox/keys; }



# Verificando se o atalho existe
# shortcut=$(grep ":RootMenu" $HOME/.fluxbox/keys | grep -v Mouse)

# if [[ -n "$shortcut" ]]; then
    # Caso o atalho já exista, exibe a mensagem de sucesso
#     echo -e "\n${GREEN}Atalho do teclado \"${shortcut}\" para chamar o menu do Fluxbox já está presente no arquivo $HOME/.fluxbox/keys. ${NC} \n"
# else
    # Caso o atalho não exista, exibe a mensagem de erro e adiciona o atalho
#     echo -e "${RED}$(gettext 'Shortcut not found. Adding shortcut') Mod4 Space :RootMenu...${NC}"
#     echo "Mod4 Space :RootMenu" >> $HOME/.fluxbox/keys
# fi



# grep "Mod4 Space :RootMenu" $HOME/.fluxbox/keys > /dev/null && echo "Atalho 'Mod4 Space :RootMenu' já está presente no arquivo." || { echo "$(gettext 'Shortcut not found. Adding shortcut') Mod4 Space :RootMenu..."; echo "Mod4 Space :RootMenu" >> $HOME/.fluxbox/keys; }






# else

    # O processo Fluxbox não está carregado no sistema.

fi




# ----------------------------------------------------------------------------------------





# Verifica se o processo 'openbox' está em execução

if pgrep -x "openbox" > /dev/null
then

    # O processo Openbox está carregado no sistema.


echo "
OpenBox:
"



# Caminho para o arquivo de configuração do Openbox (ajuste se necessário)

CONFIG_FILE="$HOME/.config/openbox/rc.xml"


# O caminho do arquivo de configuração do Openbox pode variar dependendo da distribuição 
# ou da configuração personalizada. Caso o caminho de instalação seja diferente, você pode 
# precisar ajustar a variável CONFIG_FILE.

# Para garantir que o arquivo de configuração existe antes de tentar ler dele:

if [ ! -f "$CONFIG_FILE" ]; then


    # Mensagem de erro

    message=$(gettext 'Config file %s not found.')


    # Exibe mensagem de erro no terminal

    echo -e "$0: ${RED}$(printf "$message" "$CONFIG_FILE") \n$ cp -r /etc/xdg/openbox/  $HOME/.config/ ${NC}" >&2


    yad --center --window-icon="$ICON" --image=dialog-error  --title="$title_yad" --text="$(printf "$message" "$CONFIG_FILE") \n\n$ cp -r /etc/xdg/openbox/  $HOME/.config/" --buttons-layout=center --button="$close_button" --width="650" # 2>/dev/null


# ----------------------------------------------------------------------------------------

    # Usando yad para perguntar ao usuário

    message=$(gettext 'The configuration file (rc.xml) was not found. Do you want to copy the file to the %s directory now?')


    # Não esta copiando o arquivo rc.xml


    # Para exibir uma janela de confirmação, onde o usuário pode escolher entre "Sim" e "Não".

    response=$(yad --center --title="$(gettext 'Confirm Copy')" --question --text="$(printf "$message" "$HOME/.config/openbox/")" --buttons-layout=center --button="Yes":0 --button="No":1) # --button="$(gettext 'Yes')":0 --button="$(gettext 'No')":1


# Verifica se o valor de response é um número inteiro (0 ou 1)

if [[ "$response" =~ ^[0-1]$ ]]; then

    # Verifica se o usuário clicou em "Sim" ou "Não"

    if [ "$response" -eq 0 ]; then

        clear

        # Cria diretório de configuração, se não existir

        mkdir -p $HOME/.config/openbox


        # Copia os arquivos de configuração

        cp -r /etc/xdg/openbox/rc.xml  $HOME/.config/openbox/

        echo "Arquivo copiado para $HOME/.config/openbox/"


    else


        # Mensagem de erro

        message=$(gettext 'File rc.xml not copied to %s')


        # Exibe mensagem de erro no terminal

        echo -e "$0: ${RED}$(printf "$message" "$HOME/.config/openbox/") ${NC}" >&2


        yad --center --window-icon="$ICON" --image=dialog-error  --title="$title_yad" --text="$(printf "$message" "$HOME/.config/openbox/")" --buttons-layout=center --button="$close_button" --width="650" # 2>/dev/null


        exit 1

    fi

else

    echo -e "$0: ${RED} $(gettext 'Invalid response') ${NC}" >&2

fi


# ----------------------------------------------------------------------------------------



fi


# ----------------------------------------------------------------------------------------


# Buscando diretamente o atalho com a ação ShowMenu

# KEYBIND=$(sed -n '/<keybind.*key=".*">/,/<\/keybind>/p' "$CONFIG_FILE" | \
#      grep -B 1 "<action name=\"ShowMenu\">" | \
#      grep -oP 'key="\K[^"]+')



# grep -A 1 => O -A significa "after" (após), e exibe as linhas que aparecem após a linha que contém a correspondência.

# grep -B 1 => O -B significa "before" (antes), e exibe as linhas que aparecem antes da linha que contém a correspondência.


# sed -n '/<keybind.*key=".*">/,/<\/keybind>/p' ~/.config/openbox/rc.xml | grep -B 1 "<action name=\"ShowMenu\">" | awk 'NR==4' |   grep -oP 'key="\K[^"]+'
# w-m


# Buscando por teclas de atalho 

KEYBIND=$(sed -n '/<keybind.*key=".*">/,/<\/keybind>/p' "$CONFIG_FILE" | \
  grep -B 1 "<action name=\"ShowMenu\">" | \
  grep -oP 'key="\K[^"]+' | \
  awk 'NR==2')



# Verificando se um atalho foi encontrado

if [ -n "$KEYBIND" ]; then

    # Atribuindo o atalho encontrado à variável $MENUMODIFIER

    export MENUMODIFIER="$KEYBIND"


    # Atalho do menu encontrado: $MENUMODIFIER

    message=$(gettext 'Menu shortcut found: %s')


    echo -e "\n${GREEN}$(printf "$message" "$MENUMODIFIER") ${NC} \n"


else

    # Atalho do menu não encontrado no arquivo $HOME/.config/openbox/rc.xml.

    message=$(gettext 'Menu shortcut not found in %s file.')

    echo -e "$0: ${RED}$(printf "$message" "$HOME/.config/openbox/rc.xml") ${NC}" >&2

fi





# else

    # O processo Openbox não está carregado no sistema.

fi



}






identifica_atalho_menu


# Atalho do menu encontrado: A-space
# w-m

# Está encontrando múltiplos atalhos de teclado ou que o atalho "A-space" está associado 
# a uma configuração, e em seguida há outro atalho "w-m" sendo detectado. Isso pode 
# acontecer porque a expressão regular usada no grep pode estar pegando múltiplas ocorrências.







# Buscar por "root-menu" no arquivo ~/.config/openbox/rc.xml para verificar as teclas de atalho para chama o menu do OpenBox.

# Ex: xdotool key --clearmodifiers "Super+m"


# Identificar qual o atalho de teclado que mostrar o menu inicial do OpenBox e salva na variavel $MENUMODIFIER

# MENUMODIFIER="Super+m"      # Atalho de teclado para mostrar o menu raiz


# echo $MENUMODIFIER



# ----------------------------------------------------------------------------------------




KEYDOWN="10"                # Ajuste isso para onde "Preferências" está no menu
MOUSECMD=(click 3)          # Clique direito do mouse


### GLOBAIS

USRCONFIGPATH="$HOME/.config/bl-obthemes"

SYSCONFIGPATH="/usr/share/bl-obthemes"

CURSESSFILE="$USRCONFIGPATH/current"

### USER CONFIG VARIABLES TO BE SAVED AND RESTORED


# Pasta do Fluxbox

# * Arquivo de tema do FluxBox

FLUXPATH=".fluxbox"



OBPATH="$HOME/.config/openbox"
RCFILE="$OBPATH/bl-rc.xml" # NB now using the new BunsenLabs file name
OLDRCFILE="$OBPATH/rc.xml"
GTK2=".gtkrc-2.0"
GTK2MINE=".gtkrc-2.0.mine"
GTK3=".config/gtk-3.0"
GTK3x=".config/xfce4/xfconf/xfce-perchannel-xml/xfce4-notifyd.xml"

# Para definir o papel de parede com feh => feh --bg-scale ~/Imagens/wallhaven-j827vy.jpg 
# isso gerar o arquivo ~/.fehbg

FEHFILE=".fehbg"


# Arquivo de configuração do Nitrogen onde fica a localização do papel de parede

NITROFILE=".config/nitrogen/bg-saved.cfg"

DMENU=".config/dmenu/dmenu-bind.sh"


# Arquivo de configuração principal do Rofi

ROFI=".config/rofi/config.rasi"


XFILE=".Xresources"
BASHRC=".bashrc"
#TERMFILE='' # agora termfile é definido dinamicamente por checkTerm() em saveSettings()


# Programa esta desatualizado ~/.config/compton.conf

COMPFILE=".config/picom.conf"

OLDCOMPFILE=".config/picom/picom.conf"



# jgmenu

JGMENUPATH=".config/jgmenu"
JGMENURC="$JGMENUPATH/jgmenurc"       # Tema jgmenu, não conteúdo do menu
JGMENUCONT1="$JGMENUPATH/append.csv"  # Conteúdo do jgmenu
JGMENUCONT2="$JGMENUPATH/prepend.csv" # Conteúdo do jgmenu



# Pasta do Conky

CONKYPATH=".config/conky"


# Pasta do painel Tint2

TINTPATH=".config/tint2"


# Pasta do Plank

PLANKPATH=".config/plank"


# Pasta do obmenu-generator

obmenu_generator_PATH=".config/obmenu-generator"


# These sessions will not be saved as-is,
# but generated from the running conky/tint2 processes.
# Saved files will be restored.

CONKYSESSION="$CONKYPATH/conky-sessionfile"
TINTSESSION="$TINTPATH/tint2-sessionfile"


### END CONFIGS VARIABLES

# current running openbox session, tested when script starts
# usually set to "bunsenlabs", but "openbox" for a vanilla openbox session
OBSESSION=''

# used by forkncheck()
FORKWAIT='0.3' # time to wait before checking if a forked process is still running
# use any value which is  accepted by 'sleep'

# used when translating paths in system preset themes
HOME_MARKER='%USERHOME%'


# ----------------------------------------------------------------------------------------

# Estilo:

# Tema WhiteSur


# Não tem tema para o OpenBox, Tint2 e nem para o Plank


# Tema openbox: Adwaita-openbox (fica com tema escuro no aviso de sair do OpenBox) trocado por Clearlooks.

# Tema Plank: Arian Theme Light


# Tema GTK: WhiteSur Light (Problema com o Thunar)

# Ícones: Whitesur Light



# Wallpapers: 

# Mac OS Sequoia Light

# https://static1.squarespace.com/static/5e949a92e17d55230cd1d44f/t/66679789de52f27958b42936/1718065050515/SequoiaLight.png


# Remoção

# rm -rf "${HOME}/.config/gtk-4.0/"{gtk.css,gtk-dark.css,gtk-Light.css,gtk-Dark.css,assets,windows-assets}


# https://basicappleguy.com/haberdashery/sequoiawallpaper


# https://plus.diolinux.com.br/t/gnome-whitesur-theme/70468

# ----------------------------------------------------------------------------------------


# Pacotes necessários para temas GTK específicos

declare -A theme_pkgs=(
[Beam]=bunsen-themes
[Beam-HiDPI]=bunsen-themes
[BL-Fever_Room]=bunsen-themes
[BL-Lithium]=bunsen-themes
[BL-Lithium-light]=bunsen-themes
[Boron-aqua]=bunsen-themes
[Boron-darkred]=bunsen-themes
[Boron-light-aqua]=bunsen-themes
[Bunsen-He]=bunsen-themes
[Bunsen-He-flatish]=bunsen-themes
[Dragon]=bunsen-themes
[Yeti]=bunsen-themes
[Be-Penguin]=bunsen-themes-extra
[Be-Penguin-light]=bunsen-themes-extra
[Boron-blue]=bunsen-themes-extra
[Boron-dark]=bunsen-themes-extra
[Boron-light]=bunsen-themes-extra
[Boron-light-moss]=bunsen-themes-extra
[Boron-moss]=bunsen-themes-extra
[Bunsen-Blackish-Remix]=bunsen-themes-extra
[Crocus-Remix]=bunsen-themes-extra
[RainForest]=bunsen-themes-extra
[SoftWaves]=bunsen-themes-extra
[Yeti-Lith]=bunsen-themes-extra
)


# Pacotes necessários para temas de ícones específicos

# O comando declare -A icon_pkgs=() é uma forma de declarar e inicializar um array 
# associativo em Bash. Nesse caso, o array associativo icon_pkgs mapeia nomes de temas 
# de ícones para os pacotes correspondentes a esses temas.

declare -A icon_pkgs=(
[Faenza-Dark-Bunsen]='bunsen-faenza-icon-theme'
[Faenza-Bunsen]='bunsen-faenza-icon-theme'
[Paper-Bunsen]='bunsen-paper-icon-theme'
[Papirus-Bunsen-grey]='bunsen-papirus-icon-theme'
[Papirus-Bunsen-bluegrey]='bunsen-papirus-icon-theme'
[Papirus-Bunsen-Dark-grey]='bunsen-papirus-icon-theme'
[Papirus-Bunsen-Dark-bluegrey]='bunsen-papirus-icon-theme'
[Papirus-Bunsen-Dark-black]='bunsen-papirus-icon-theme'
[Numix-Bunsen-Circle-aqua]='bunsen-numix-icon-theme'
[Numix-Bunsen-Circle-aqua-Light]='bunsen-numix-icon-theme'
[Numix-Bunsen-Circle-darkred]='bunsen-numix-icon-theme'
[Numix-Bunsen-Circle-darkred-Light]='bunsen-numix-icon-theme'
[Adwaita]='adwaita-icon-theme'
)

# Pacotes necessários para papéis de parede BL específicos

declare -A wallpaper_pkgs=(
[Boron-Emerald-logo-1280x1024.png]='bunsen-images-base'
[Boron-Emerald-logo-1440x900.png]='bunsen-images-base'
[Boron-Emerald-logo-1920x1080.png]='bunsen-images-base'
[Boron-Emerald-plain-1280x1024.png]='bunsen-images-base'
[Boron-Emerald-plain-1440x900.png]='bunsen-images-base'
[Boron-Emerald-plain-1920x1080.png]='bunsen-images-base'
[Ruby-flame-1280x1024.png]='bunsen-images-base'
[Ruby-flame-1440x900.png]='bunsen-images-base'
[Ruby-flame-1920x1080.png]='bunsen-images-base'
[Ruby-plain-1280x1024.png]='bunsen-images-base'
[Ruby-plain-1440x900.png]='bunsen-images-base'
[Ruby-plain-1920x1080.png]='bunsen-images-base'
[tile.png]='bunsen-images-base'
[default]='bunsen-images-base'
[Boron-dark-1280x1024.png]='bunsen-images'
[Boron-dark-1440x900.png]='bunsen-images'
[Boron-dark-1920x1080.png]='bunsen-images'
[Before-Sunrise.jpg]='bunsen-images'
[Beryllium-1280x1024.jpg]='bunsen-images'
[Beryllium-1440x900.jpg]='bunsen-images'
[Beryllium-1920x1080.jpg]='bunsen-images'
[Fever_Room.jpg]='bunsen-images'
[grey.png]='bunsen-images'
[Networks.png]='bunsen-images'
[Yeti.jpg]='bunsen-images'
[BL-beam.png]='bunsen-images-archives'
[BL-beam-grey.png]='bunsen-images-archives'
[BL-beam-plain.png]='bunsen-images-archives'
[BL-beam-plain-grey.png]='bunsen-images-archives'
[flame-text-1920x1200-centre-blue.png]='bunsen-images-archives'
[flame-text-1920x1200-centre.png]='bunsen-images-archives'
[flame-text-1920x1200-right.png]='bunsen-images-archives'
[flame-text-2560x1080.png]='bunsen-images-archives'
[Lithium.png]='bunsen-images-archives'
[Lithium-grey-logo-only.png]='bunsen-images-archives'
[Lithium-logo-only.png]='bunsen-images-archives'
)



# Coleção de wallpaper no Google Drive:

# https://drive.google.com/drive/folders/1o1qjRgkJtnF_8uGB1z6MRsQUjWinHUsw?usp=drive_link



###

THEMEPATH_1="$HOME/.themes"
THEMEPATH_2="$HOME/.local/share/themes"
THEMEPATH_3="/usr/share/themes"
THEMEPATH_4="/usr/local/share/themes"
gtkPaths=("$THEMEPATH_1" "$THEMEPATH_2" "$THEMEPATH_3" "$THEMEPATH_4")

ICONPATH_1="$HOME/.icons"
ICONPATH_2="$HOME/.local/share/icons"
ICONPATH_3="/usr/share/icons"
ICONPATH_4="/usr/local/share/icons"
iconPaths=("$ICONPATH_1" "$ICONPATH_2" "$ICONPATH_3" "$ICONPATH_4")

wallpath_sys1="/usr/share/images"
wallpath_sys2="/usr/share/backgrounds"
wallpath_sys3="$HOME/Imagens"
wallpath_usr="$HOME/Pictures/wallpapers"
wallpaths=("$wallpath_sys1" "$wallpath_usr" "$wallpath_sys2" "$wallpath_sys3")

### VARIÁVEIS DE DIÁLOGO





yad_args=( '--center'  '--borders=20' "--window-icon=$ICON" )
popup_args=( "${yad_args[@]}" "--title=$(gettext 'Theme Manager')" '--undecorated' '--fixed' )
OK="--button=$(gettext 'OK'):0"
CANCEL="--button=$(gettext 'Cancel'):1"
EXIT="--button=$(gettext 'Close'):1"
CLOSE="--button=$(gettext 'Close'):1"
HLPBTN="--button=_$(gettext 'Help'):10"




# ----------------------------------------------------------------------------------------

## ETIQUETAS LEGÍVEIS PELO USUÁRIO

PICKOB="$(gettext 'Openbox Theme')"
PICKFLUXBOX="$(gettext 'Fluxbox Theme')"
PICKGTK="$(gettext 'GTK Theme')"
PICKICONS="$(gettext 'Icon Theme')"
PICKBG="$(gettext 'Wallpaper')"
PICKCONKY="$(gettext 'Conky')"
PICKTINT="$(gettext 'Tint2')"
PICKPLANK="$(gettext 'Plank')"
PICKDMENU="$(gettext 'dmenu (Alternative menu)')"
PICKROFI="$(gettext 'Rofi Menu Theme')"
PICKLDM="$(gettext 'Lightdm Login Theme')"
PICKSDDM="$(gettext 'SDDM Theme')"


# PICKEXIT="Exit dialog theme" # bl-exit no longer has separate themes
# PICKTERM=''                  # now not global, pickterm is from checkTerm(), local in saveSettings()

PICKX="$(gettext 'X Settings')"
PICKBASH="$(gettext 'Bash Settings')"
PICKCOMP="$(gettext 'Composer')"

PICKJGMENU="$(gettext 'jgmenu theme')"
PICKJGMENUCONT="$(gettext 'jgmenu content')"


# ----------------------------------------------------------------------------------------


### VARIÁVEIS DE DIÁLOGO FINAL

####################### VARIÁVEIS FINAIS ##################################


#########################    FUNÇÕES   ####################################

### FUNÇÕES DE DIÁLOGO

# yad exibe botões cancelar e OK por padrão
# --button=* argumentos anularão esse padrão


# Opções arbitrárias (por exemplo --entry) podem ser passadas *depois* do texto

yad_prompt() {
    yad "${popup_args[@]}" --center --window-icon="$ICON"  --text="$1" --buttons-layout=center --width="300" "${@:2}"
}

yad_question() {
    yad "${popup_args[@]}" --center --window-icon="$ICON" --text="$1" \
    --image="dialog-question" --buttons-layout=center --width="300" "${@:2}"
}

yad_warning() {
    yad "${popup_args[@]}" --center --window-icon="$ICON" --text="$1" \
    --image="dialog-warning" --buttons-layout=center --width="300" --button="$(gettext 'Close')":0
}

yad_warning_option() {
    yad "${popup_args[@]}" --center --window-icon="$ICON"  --text="$1" \
    --image="dialog-warning" --buttons-layout=center --width="300" --button="$(gettext 'Keep it up anyway'):0" "$EXIT"
}



yad_fatal_error() {
    yad "${popup_args[@]}" --center --window-icon="$ICON" --text="$1" \
    --image="dialog-error" --buttons-layout=center --width="300" "$EXIT"
}


### FUNÇÕES DE DIÁLOGO FINAL

# Trap passará o número da linha onde o erro ocorreu como $1,
# e o comando executado naquela linha como $2.
# Isso não deve ser necessário uma vez que o tratamento de erros é feito separadamente.

trap_error(){

    local msg="$(gettext 'An error occurred online') ${1}, $(gettext 'run function') '${2}', $(gettext 'command') '${3}' $(gettext 'Please consider reporting this to the developers').\n."

    # echo -e "$0: $msg" >&2

    echo -e "$0: ${RED}$msg ${NC}" >&2

    if yad_warning_option "$msg"
    then

        debug "$(gettext 'Continuing despite restore error.')"

    else

        exit 1

    fi
}



# Uso: createFlag filename
# Atualmente usado em Intro()
# para registrar se a janela "Sobre" foi exibida.

# createFlag() {
    # mkdir -p "$HOME/.config/bunsen"
    # touch "$HOME/.config/bunsen/$1"
# }


# Isso é executado no início.

# OBSESSION global used in getScrot()

firstChecks() {

    # Não execute como Root (coisas ruins podem acontecer).

    if [[ $( id -u ) -eq 0 ]]; then

        echo $"$0: $(gettext 'Error: This script should not be run by Root.')" >&2

        exit 1

    fi


# No Linux, gerenciadores de janelas (window managers - WMs) são softwares que controlam a aparência e o comportamento das janelas em um ambiente gráfico. Eles são uma parte fundamental das interfaces gráficas de usuário (GUIs) no Linux, mas diferem das interfaces completas de desktop (como GNOME ou KDE) por serem mais leves e minimalistas. Dependendo da filosofia do gerenciador de janelas, ele pode ser flutuante (onde as janelas podem ser movidas livremente) ou tiling (onde as janelas são organizadas em um layout de mosaico).


    # Verificar informações sobre o ambiente gráfico atual.


    # Teste se o Fluxbox está em execução

    # Verificar o nome do ambiente gráfico

    # echo "$XDG_SESSION_DESKTOP"

    # Esse comando geralmente retorna o nome do ambiente de desktop que está em uso.


    # Verificar o processo em execução

    # Pode usar o comando ps para verificar os processos em execução. Se o Fluxbox estiver 
    # em uso, deve haver um processo relacionado ao Fluxbox.

    # ps -e | grep fluxbox


    # Verificar com o comando wmctrl

    # Outra maneira é verificar o gerenciador de janelas ativo usando o comando wmctrl, 
    # que mostra o nome do gerenciador de janelas em execução:

    # wmctrl -m


    # Verifica se Openbox ou Fluxbox está em execução e com qual arquivo de sessão o OpenBox esta usando.
    
    # obline=$(pgrep -ax -u "$USER" openbox) || {

    #obline=$(ps -u "$USER" -eo command | grep -E 'openbox|fluxbox-1' | head -n 1) || {

     # obline=$(ps aux | grep -E 'openbox|fluxbox' | head -n 1) || {



     # Verifica todos os processos no sistema e procura por openbox ou fluxbox, sem incluir o próprio comando grep
  
     obline=$(ps aux | grep -E '[o]penbox|[f]luxbox|[w]maker|[j]wm|[f]vwm|[t]wm|[i]3|[s]way|[a]wesome|[x]monad|[d]wm|[h]erbstluftwm|[b]spwm|[r]atpoison|[s]pectrwm|[c]wm|[e]lightenment|[i]cewm|[h]yprland' | grep -v grep ) || {


        yad_fatal_error "$(gettext 'This script can only be used with window managers.')


Openbox, Fluxbox, Window Maker, JWM, FVWM, Twm, i3wm, Sway, Awesome, Xmonad, dwm, Herbstluftwm, Bspwm, 
Ratpoison, spectrwm, CWM, Enlightenment, IceWM, Hyprland ...
"
        clear

        exit 1

    }


# Verificar se a variável $obline está vazia

if [ -z "$obline" ]; then

    debug "$(gettext 'No window manager found.')"

    yad_fatal_error "$(gettext 'No window manager found.')"

    exit 1

else

    # Exibe o processo encontrado para depuração

    debug "
$(gettext 'Process found'): $obline
"

    
fi



# O padrão --start[[:blank:]]+([a-zA-Z0-9\-]+) é uma expressão regular que busca algo 
# como --start seguido de espaços em branco e então um ou mais caracteres alfanuméricos 
# ou hífens. Isso sugere que o script está tentando capturar alguma opção ou parâmetro no 
# comando de inicialização do gerenciador de janelas.
#
# || {: O operador || executa o bloco de código entre as chaves { ... } apenas se o teste 
# condicional anterior falhar (ou seja, se o padrão não for encontrado na linha do processo).


    # Verifica se o script foi iniciado com o arquivo de autostart

    # Verifica se o comando contém o parâmetro --startup e captura o valor

    # Verifica se "fluxbox" aparece como uma palavra isolada (com espaços antes)

    [[ $obline =~ --startup[[:blank:]]+([^[:blank:]]+) || $obline =~ [[:space:]](fluxbox) ]] || {


    # [[ $obline =~ --start[[:blank:]]+([a-zA-Z0-9\-]+) ]] || {

        # A linha não contém --startup ou fluxbox.

        # yad_fatal_error "$(gettext 'Openbox was started without a startup file.')"

        yad_fatal_error "$(gettext 'The window manager was started without a startup file.')"

        clear

        exit 1
    }

# echo "${BASH_REMATCH[@]}"
# echo "${BASH_REMATCH[1]}"


# BASH_REMATCH é uma variável especial em Bash que armazena os resultados das 
# correspondências feitas por expressões regulares quando usadas com =~ (operador de 
# comparação regex) dentro de um if ou outra estrutura de controle.
#
# Quando você usa uma expressão regular e a sintaxe =~, o Bash preenche BASH_REMATCH com 
# os resultados da correspondência:
#
#    BASH_REMATCH[0] contém a correspondência completa.
#
#    BASH_REMATCH[1], BASH_REMATCH[2], etc., contêm as partes correspondentes da regex 
# (os grupos de captura).
#
#  Portanto, ${BASH_REMATCH[1]} acessa o primeiro grupo de captura da expressão regular.


    # Verifica qual gerenciador de janelas está sendo usado e realiza ações específica

    case ${BASH_REMATCH[1]} in

    # */bunsen-autostart)

   #    debug "  Sessão do BunsenLabs detectada."

   #     OBSESSION=bunsenlabs

   #     ;;



    # *openbox*)

    # *openbox-autostart*)

      */openbox-autostart)

        debug "  $(gettext 'Openbox session detected.') \n"

#        yad_warning "O BunsenLabs usa o Openbox com alguns arquivos de configuração personalizados,
# mas detectamos que você está executando uma sessão padrão do Openbox.
# Algumas coisas podem não funcionar como esperado sem editar este script.
# Você pode copiar /usr/local/bin/bl-obthemes.sh para ~/bin/ e editá-lo lá.
# Pelo menos, verifique se MENUMODIFIER e KEYDOWN no ​​topo do arquivo
# estão definidos apropriadamente para acionar a exibição do menu para capturas de tela." "$OK" "$EXIT" || exit 1

            OBSESSION="openbox"

            check_autostart_OpenBox

        ;;

     *fluxbox*)

            debug "  $(gettext 'Fluxbox session detected.') \n"

            OBSESSION="fluxbox"

            check_autostart_FluxBox

        ;;


        *i3*)

            debug "  $(gettext 'i3wm session detected.') \n"

            OBSESSION="i3wm"

            ;;

        *sway*)

            debug "  $(gettext 'Sway session detected.') \n"

            OBSESSION="sway"

            ;;

        *awesome*)

            debug "  $(gettext 'AwesomeWM session detected.') \n"

            OBSESSION="awesome"

            ;;

        *xmonad*)

            debug "  $(gettext 'Xmonad session detected.') \n"

            OBSESSION="xmonad"

            ;;

        *dwm*)

            debug "  $(gettext 'dwm session detected.') \n"

            OBSESSION="dwm"

            ;;

        *herbstluftwm*)

            debug "  $(gettext 'Herbstluftwm session detected.') \n"

            OBSESSION="herbstluftwm"

            ;;

        *bspwm*)

            debug "  $(gettext 'Bspwm session detected.') \n"

            OBSESSION="bspwm"

            ;;

        *ratpoison*)

            debug "  $(gettext 'Ratpoison session detected.') \n"

            OBSESSION="ratpoison"

            ;;

        *spectrwm*)

            debug "  $(gettext 'Spectrwm session detected.') \n"

            OBSESSION="spectrwm"

            ;;

        *cwm*)

            debug "  $(gettext 'CWM session detected.') \n"

            OBSESSION="cwm"

            ;;

        *enlightenment*)

            debug "  $(gettext 'Enlightenment session detected.') \n"

            OBSESSION="enlightenment"

            ;;

        *icewm*)

            debug "  $(gettext 'IceWM session detected.') \n"

            OBSESSION="icewm"

            ;;

        *hyprland*)

            debug "  $(gettext 'Hyprland session detected.') \n"

            OBSESSION="hyprland"

            ;;

    *)
        yad_fatal_error "$(gettext 'Unable to determine the current session.')"

        exit 1

        ;;

    esac
}






# ----------------------------------------------------------------------------------------




# Verificar se esta usando esse script no VirtualBox


function verificar_virtualbox(){


# Isso deve mostrar informações sobre sua placa de vídeo no Linux:

# lspci -k | grep -EA3 'VGA|3D|Display'

# lspci | grep VGA 

# lspci -nn | grep -E "Display|VGA|3D|VMware"


lspci -nn | grep -E "VirtualBox|VMware"


if [ "$?" == "0" ]; then

yad \
--center \
--title="$(gettext 'Notice')" \
--timeout="40" \
--text="$PROBLEMAS_CONHECIDOS\n\n" \
--no-buttons \
2>/dev/null


fi


}


# ----------------------------------------------------------------------------------------


# NOTA: não recomendado, veja: http://mywiki.wooledge.org/ProcessManagement#Starting_a_.22daemon.22_and_checking_whether_it_started_successfully
# Bifurque um processo para o segundo plano, retorne 1 se ele sair em breve.
# Não use com processos como conky, que podem se bifurcar para um novo pid.
# Global $FORKWAIT é o tempo de espera antes de verificar se o processo ainda está em execução.
# Argumentos são o comando a ser executado.


forkncheck() {

    local pid

    set -m

    "$@" >/dev/null 2>&1 & pid=$!

    disown

    set +m

    sleep "$FORKWAIT" || return 1 # Verifique se há sintaxe incorreta em $FORKWAIT

    kill -0 "$pid" >/dev/null 2>&1 && return 0

    return 1 # O processo não está em execução

}



# Necessário se um diretório BLOB foi gerado pela última vez no BL Lithium antes de outubro de 2019
# Soltar isso no BL Carbon?

function upgradeBlobs(){

    moveFile(){ # $1 é arquivo, $2 é diretório de destino

        [[ -f "$2/${1##*/}" ]] && return 0

        [[ -f "$1" ]] || {

            message=$(gettext 'Updating %s: WARNING Cannot move file %s, it does not exist')

            echo "$0: $(printf "$message" "${i}" "${1}")" >&2

            return 1

        }

        mkdir -p "$2"

        mv "$1" "$2" || exit

    }

    moveDir(){

        [[ -d "$2/${1##*/}" ]] && return 0

        [[ -d "$1" ]] || {

            
            message=$(gettext 'Updating %s: WARNING Cannot move directory %s, it does not exist')

            echo "$0: $(printf "$message" "${i}" "${1}")" >&2

            return 1

        }

        mkdir -p "$2"

        mv "$1" "$2" || exit

    }


    # checks tint sessionfile, updates filenames to new format
    # tint2 config files will have been renamed from tint2rc-something to something.tint2rc
    # variable VAL is rewritten

    check_tintsess() {


        debug "$(gettext 'Checking') ${i}/user/$TINTPATH $(gettext 'for Tint2 file names...')"

        local t2file t2name newt2name

        local -a tintsession

        VAL=''

        mapfile -t tintsession < "$i/user/$TINTSESSION"

        for t2file in "${tintsession[@]}"
        do
            [[ -n $t2file ]] || continue

            t2name=${t2file##*/}

            [[ $t2name = *'.tint2rc' || $t2name = tint2rc ]] && {

                VAL+=${t2file}';'

                continue # already using new name style

            }

            newt2name=${t2name#tint2rc-}.tint2rc

            if [[ -f $i/user/$TINTPATH/$t2name ]] # have local copy, rename
            then

                debug "$(gettext 'Renaming') $t2name $(gettext 'to') $newt2name $(gettext 'in') ${i}/user/$TINTPATH"

                mv "${i}/user/$TINTPATH/$t2name" "${i}/user/$TINTPATH/$newt2name" || {

                    echo "$0: $(gettext 'Updating') ${i}: $(gettext 'WARNING Cannot rename') $i/user/$TINTPATH/$t2name" >&2

                    VAL+=${t2file}';'
                }

                VAL+=$HOME/$TINTPATH/${newt2name}';'

            else

                [[ -f $HOME/$TINTPATH/$newt2name ]] && { # Arquivo de usuário já existe com novo nome, copie-o localmente

                    debug "$(gettext 'Copying') $HOME/$TINTPATH/$newt2name $(gettext 'to') ${i}/user/$TINTPATH/"

                    cp "$HOME/$TINTPATH/${newt2name}" "${i}/user/$TINTPATH/" || echo "$0: $(gettext 'Updating') ${i}: $(gettext 'as') $HOME/$TINTPATH/$newt2name $(gettext 'to') $i/user/$TINTPATH/" >&2

                    VAL+=$HOME/$TINTPATH/${newt2name}';'

                    continue
                }

                [[ -f $t2file ]] && { # user file with current oldstyle name exists, copy it locally with new name

                    debug "$(gettext 'Copying') $t2file $(gettext 'to') ${i}/user/$TINTPATH $(gettext 'WARNING Cannot find tint2 configuration file') $newt2name"

                    cp "$t2file" "${i}/user/$TINTPATH/$newt2name" || {

                        echo "$0: $(gettext 'Updating') ${i}: $(gettext 'as')  $t2file $(gettext 'to') $i/user/$TINTPATH/" >&2

                        VAL+=${t2file}';'
                    }

                    VAL+=$HOME/$TINTPATH/${newt2name}';'

                    continue
                }

                echo "$0: $(gettext 'Updating') ${i}: $(gettext 'mentioned in') $t2file $mensagem_tint12 $i/user/$TINTSESSION" >&2

                VAL+=${t2file}';'
            fi

        done

    }


    for i in "$USRCONFIGPATH"/*; do

        [[ -d $i ]] || continue

        mkdir -p "$i/user"

        local themename=${i##*/}

        moveFile "$USRCONFIGPATH/${themename}.jpg" "$i"

        :> "$i/newsettings"

        while read -r TAG VAL; do

            case "$TAG" in
                "[TINT2]"       )   [[ -f "$i/user/$TINTSESSION" ]] || {

                                        mkdir -p "$i/user/${TINTSESSION%/*}"

                                        printf '%s' "${VAL//;/$'\n'}" > "$i/user/$TINTSESSION"

                                    }

                                    check_tintsess # VAL é reescrito

                                    printf '%s' "${VAL//;/$'\n'}" > "$i/user/$TINTSESSION" # Reescrever arquivo de sessão com novos nomes de arquivo

                                    printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                "[CONKY]"       )   [[ -f "$i/user/$CONKYSESSION" ]] || {

                                        mkdir -p "$i/user/${CONKYSESSION%/*}"

                                        printf '%s\n' "${VAL//;/$'\n'}" > "$i/user/$CONKYSESSION"

                                    }

                                    printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                "[ICONS]"       )   printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                "[GTK]"         )   moveFile "$i/.gtkrc-2.0" "$i/user"

                                    moveFile "$i/.gtkrc-2.0.mine" "$i/user"

                                    moveFile "$i/xfce4-notifyd.xml" "$i/user/.config/xfce4/xfconf/xfce-perchannel-xml"

                                    moveDir "$i/gtk-3.0" "$i/user/.config"

                                    printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                "[OBTHEME]"     )   printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                "[FLUXBOX]"     ) 
                                    # Realizar o backup do tema do Fluxbox
                                 
                                    printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                "[BACKGROUND]"  )   

# ----------------------------------------------------------------------------------------

                                    if [[ $VAL = FEH ]];then


                                    # Se utilizar o feh, para definir o wallpaper.

                                    # Verificar se o arquivo $HOME/.fehbg existe

                                    # Ele cria na sua /home um arquivo executável oculto chamado .fehbg, com os comandos e o caminho da imagem usada.

                                    if [ -e "$HOME/.fehbg" ] ; then

                                        moveFile "$i/.fehbg" "$i/user"

                                        # Verificar se esta executando o feh na inicialização do OpenBox/bspwm

                                        grep ^feh $HOME/.config/openbox/autostart

                                        if [ "$?" == "0" ];
                                        then 
                                                   echo -e "\n${GREEN}$(gettext 'feh is in the OpenBox startup... ')${NC} \n"

                                              else

                                                   echo -e "\n$0: ${RED}$(gettext 'feh is not in the OpenBox startup...') ${NC} \n"
                                        fi


                                    fi


# https://plus.diolinux.com.br/t/ranger-como-eu-faco-pra-setar-um-wallpaper-utilizando-o-ranger/46286

# ----------------------------------------------------------------------------------------

                                    elif [[ $VAL = NITROGEN ]];then


                                    # Verificar se o arquivo $HOME/.config/nitrogen/bg-saved.cfg existe

                                    # Verifica se o arquivo bg-saved.cfg existe no diretório ~/.config/nitrogen/ do usuário atual.


                                    if [ -e "$HOME/.config/nitrogen/bg-saved.cfg" ] ; then


                                        # echo -e "\n${GREEN}$(gettext 'File bg-saved.cfg found.') ${NC} \n"

                                        moveFile "$i/bg-saved.cfg" "$i/user/.config/nitrogen/"


                                       # Verificar a inicialização automática de programas no OpenBox

                                       # check_autostart_OpenBox


                                       # Verificar a inicialização automática de programas no Fluxbox

                                       # check_autostart_FluxBox


                                   else

                                        echo -e "\n$0: ${RED}$(gettext 'File bg-saved.cfg not found.') ${NC} \n"

                                   fi


                                    fi


                                    printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"


                                    ;;
# ----------------------------------------------------------------------------------------

                "[DMENU]"       )   moveFile "$i/dmenu-bind.sh" "$i/user/.config/dmenu" && {

                                        printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    }

                                    ;;

                "[ROFI]"       )    moveDir "$i/config/rofi" "$i/user/.config/" && {

                                        printf '%s %s\n' '[ROFI]' '~/.config/rofi/' >> "$i/newsettings"
                                    }

                                    ;;

                "[LIGHTDM]"     )   printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                "[EXITRC]"      )   printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                                    # split [XFILES] into two tags

                "[XFILES]"      )   moveFile "$i/$XFILE" "$i/user" && {
                                        printf '%s\n' '[XFILE]' >> "$i/newsettings"
                                    }

                                    moveFile "$i/$BASHRC" "$i/user" && {
                                        printf '%s\n' '[BASHRC]' >> "$i/newsettings"
                                    }

                                    ;;

                "[TERMINATOR]"  )   moveFile "$i/config" "$i/user/.config/terminator" && {

                                        printf '%s %s\n' '[Terminator]' '.config/terminator/config' >> "$i/newsettings"
                                    }

                                    ;;

                "[obmenu-generator]" )  moveDir "$i/config/obmenu-generator" "$i/user/.config/" && {

                                        printf '%s %s\n' '[obmenu-generator]' '.config/obmenu-generator/' >> "$i/newsettings"
                                    }

                                    ;;

                "[plank]" )         moveDir "$i/config/plank" "$i/user/.config/" && {

                                        printf '%s %s\n' '[Plank]' '.config/plank/' >> "$i/newsettings"

                                    }

# Embora as preferências de cada dock sejam armazenadas no banco de dados dconf e não em 
# texto simples, às vezes faz sentido obter e armazenar essas informações de qualquer maneira 
# e então alimentá-las de volta em algum momento. Por exemplo, fazer backup das configurações 
# ou migrar as configurações, etc.

# Portanto, pode ser que você queira salvar todas as docas:

dconf dump /net/launchpad/plank/docks/ > $i/user/.config/plank/docks.ini

# E então você pode querer recarregar as configurações salvas:

# $ cat /caminho/onde/salvo/plank/docks.ini | dconf load /net/launchpad/plank/docks/


# https://wiki.archlinux.org/title/Plank



                                    ;;

                '['*']'         )   printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                '('*')'         )   printf '%s %s\n' "$TAG" "$VAL" >> "$i/newsettings"

                                    ;;

                *               )   echo -e "$(gettext 'Updating') ${i}: ${TAG}:  $(gettext 'Unknown value!')" >&2

                                    continue

                                    ;;
            esac

        done < "$i/settings.cfg"

        mv -f "$i/newsettings" "$i/settings.cfg"

    done

}


# ----------------------------------------------------------------------------------------


# Matar somente com correspondência exata, e somente se o processo pertencer ao executor.
# Retorna sucesso mesmo se o processo não estiver em execução.
# Uso: safeKill <processname>

function safeKill() {

    local procname
    procname=$1

    debug "$(gettext 'Killing') $procname"

    pgrep -x -u "$USER" "$procname" >/dev/null || {

        debug "${procname}: $(gettext 'no process running')"

        return 0
    }

    pkill -x -u "$USER" "$procname" || {

        debug "$(gettext 'WARNING failed to kill') $procname"

        return 1
    }

}


# ----------------------------------------------------------------------------------------


# $1 é o caminho para o arquivo de chaves (por exemplo, gtk3 settings.ini)
# matriz associativa global KEYS será gerada


# Essa função, chamada parseKeyfile, é responsável por ler um arquivo de texto 
# (arquivo de configuração) e extrair pares de chave-valor. Ela armazena esses 
# pares na matriz associativa KEYS


# Resumo:

# A função parseKeyfile lê um arquivo de texto e converte linhas no formato chave = valor 
# em uma matriz associativa em Bash. As chaves e valores podem ser cercados por aspas, e 
# a função também ignora linhas vazias e comentários.

parseKeyfile(){


# Verifica se o arquivo existe e é um arquivo regular:

#    A função verifica se o argumento $1 (que é o nome do arquivo a ser lido) é um arquivo regular usando [[ -f $1 ]].
#    Se não for um arquivo válido, a função exibe uma mensagem de erro e retorna com o código de erro 1.

    [[ -f $1 ]] || { echo "$1 $(gettext 'is not a file.')" >&2; return 1;}


    # Limpeza e declaração da variável KEYS:

    # A função usa unset KEYS para garantir que a variável KEYS não tenha valores anteriores.

    unset KEYS


    # Cria uma matriz associativa chamada KEYS.

    declare -Ag KEYS


# Define um regex para capturar chaves e valores:

#   A variável entry_regex contém uma expressão regular para capturar linhas no formato chave = valor. O regex suporta:
# 
#     Chaves que consistem em letras, números, sublinhados e hífens.
#     Valores que podem ser strings entre aspas simples ou duplas, ou valores sem aspas.
#     Comentários (iniciados com #).

    local entry_regex line key value

    entry_regex="^[[:blank:]]*([[:alnum:]_][[:alnum:]_-]*)[[:blank:]]*=[[:blank:]]*('[^']+'|\"[^\"]+\"|[^#[:blank:]]+([[:blank:]]+[^#[:blank:]]+)*)[[:blank:]]*(#.*)*$"


# Lê o arquivo linha por linha:
# 
#     A função lê o arquivo linha por linha com o comando while read -r line.
# 
#     Se a linha estiver vazia, ela é ignorada ([[ -n $line ]] || continue).
# 
#     Se a linha não corresponder ao regex ([[ $line =~ $entry_regex ]]), a linha é ignorada.


    while read -r line
    do
        [[ -n $line ]] || continue

        [[ $line =~ $entry_regex ]] || continue


# Extrai a chave e o valor usando a expressão regular:
# 
#  Se a linha corresponder ao regex, a chave é extraída como ${BASH_REMATCH[1]} e o valor como ${BASH_REMATCH[2]}.
#  O valor é então processado para remover aspas simples (') ou duplas (") ao redor do valor, se presentes.

        key=${BASH_REMATCH[1]}

        value=${BASH_REMATCH[2]}

        case $value in # Tiras citações
        \'*\')
            value=${value#\'}; value=${value%\'};;
        \"*\")
            value=${value#\"}; value=${value%\"};;
        esac


       # Armazena o par chave-valor:

       # O par chave-valor é armazenado na matriz associativa KEYS["${key}"]="${value}".

        KEYS["${key}"]="${value}"


    done < "$1"


# Verifica se a matriz KEYS não está vazia:

    #    Após o término da leitura do arquivo, a função verifica se a matriz KEYS contém elementos ((( ${#KEYS[@]} ))).

    #    Se a matriz estiver vazia, a função exibe um erro.


     message=$(gettext 'Parsing file %s: Global KEYS array is empty')       


    (( ${#KEYS[@]} )) || { echo "$0: $(printf "$message"  "${1}")" >&2; return 1;}


}


# ----------------------------------------------------------------------------------------


# Esta função é usada ao restaurar ícones sem GTK ou vice-versa.
# Ela é colocada aqui porque está relacionada a parseKeyfile.
# editKeyfile [--gtk2] file name=value [name2=value2...]
# --gtk2 coloca aspas em torno de valores de string escritos

editKeyfile(){

    local type=gtk3 file bkp_file name value sed_pattern sed_replace sed_args
    [[ $1 = '--gtk2' ]] && {
        type=gtk2
        shift
    }
    [[ -f $1 ]] || { echo "$1 $(gettext 'is not a file.')" >&2; return 1;}
    file=$1
    shift
    parseKeyfile "$file" || { echo "$0: editKeyfile() Falha ao analisar ${file}." 2>&1; return 1;} # gera CHAVES globais para as duas verificações
    boolean_enum_re='^([01]|GTK_[[:upper:]_]*)$' # nos arquivos GTK2 gtkrc esses valores não são citados
    sed_args=()
    while [[ $1 ]]; do
        unset name value sed_pattern sed_replace
        name="${1%%=*}"
        value="${1#*=}"
        shift
        [[ -v KEYS["$name"] ]] || {
            echo "$0: a chave de configuração $name não existe" >&2
            return 1
        }
        [[ ${KEYS["$name"]} = "${value}" ]] && {
            debug "A chave KEYS[$name] já está definida como ${value}"
            continue
        }
        [[ $type = gtk2 ]] && {
            [[ $value =~ $boolean_enum_re ]] || { # strings de citação para arquivo gtk2
                value="\"$value\""
            }
        }
        (( ${#sed_args[@]} == 0 )) && sed_args=("-ri")
        sed_pattern="^[[:blank:]]*${name}[[:blank:]]*=[[:blank:]]*('[^']+'|\"[^\"]+\"|[^#[:blank:]]+([[:blank:]]+[^#[:blank:]]+)*)[[:blank:]]*(#.*)*$"
        sed_replace+="${name}=${value}"
        sed_args+=("-e")
        sed_args+=("s/$sed_pattern/$sed_replace/")
    done
    unset KEYS
    (( ${#sed_args[@]} )) && {
        needBackup "${file}" && {
            bkp_file="${file}${BKP_SFX}"
            cp "$file" "$bkp_file" || return 1
            debug "$(gettext 'Made a backup of') $file"
        }
        sed "${sed_args[@]}" "$file" || { echo "$0: $(gettext 'sed error')" >&2; return 1;}
    }
    return 0
}


# define os globais NUMDIRS e CURRENTSESSION, dentro de intro() e UpdateDisplayDialog()

function getCurrent(){      # obter o nome da configuração BLOB definida atualmente
    local dirs
    NUMDIRS=0
    shopt -s nullglob
    dirs=( "$USRCONFIGPATH"/*/ "$SYSCONFIGPATH"/*/ )
    NUMDIRS=${#dirs[@]}
    shopt -u nullglob
    if (( NUMDIRS == 0 ));then
        if [[ -f $CURSESSFILE ]];then
            rm "$CURSESSFILE"
        fi
    elif (( NUMDIRS > 0 )) && [[ -f $CURSESSFILE ]];then
        CURRENTSESSION=$(< "$CURSESSFILE")
    fi
}



# passe --one-view-only para pular a janela de introdução
# após a primeira visualização

function Intro(){



    debug "\n$(gettext 'Welcome to the Theme Manager!')\n"

    getCurrent # Gera globais NUMDIRS e CURRENTSESSION

    if [[ $1 = '--one-view-only' ]] && (( NUMDIRS > 0 ));then

    # if [[ $1 = '--one-view-only' && -e $HOME/.config/bunsen/blob-intro-viewed ]] && (( NUMDIRS > 0 ));then

        displayBlobs

    else
        

        # createFlag 'blob-intro-viewed'


        #  Se blob/ estiver vazio, não exiba a opção "Exibir salvos" na caixa de diálogo Introdução

        if (( NUMDIRS > 0 ));then

            yad "${yad_args[@]}" "--text=$TXTINTRO\n" \
            --title="$(gettext 'Theme Manager')" --borders="30" \
            --button="_$(gettext 'Save current'):0" --button="_$(gettext 'View Saved Themes'):2" $HLPBTN $CLOSE

        else
            yad "${yad_args[@]}" "--text=$TXTINTRO\n" \
            --title="$(gettext 'Theme Manager')" --borders="30" \
            --button="_$(gettext 'Save current'):0" $HLPBTN $CLOSE

        fi


        case $? in
            0)  
                # Gera um tema com base nas configurações do usuário

                saveNewBlob
                displayBlobs

                ;;

            1)  debug "$(gettext 'CANCELED...')"

                sleep 0.5

                clear

                exit

                ;;

            2) 
               # Mostra os temas salvos na tela

               displayBlobs

                ;;

            10) 


echo "$HELP" > /tmp/helpfile-blob.txt

# /usr/share/doc/bl-obthemes/helpfile-blob.txt

yad \
--center \
--window-icon="$ICON"  \
--title="$(gettext 'Theme Manager')" \
--text-info \
--fontname=Monospace \
--filename="/tmp/helpfile-blob.txt" \
--buttons-layout=center \
--button="$(gettext 'OK')":0 \
--width="900" --height="700"  \
2> /dev/null


rm -Rf /tmp/helpfile-blob.txt

                Intro

                ;;

            *)  
                clear

                # echo "$(gettext 'RETURN ERROR')" >&2

                exit 1

                ;;

        esac
    fi

}


####################### Salvar funções #################################


# Define globais CONFIGDIR CONFIGDIR_BKP SETTINGS LISTMSG NEWNAME  para armazenar novo tema.


function setName(){  # Definir nome da coleção, criar diretório e arquivo de configurações de sessão.

    local msg msg2


    msg="  $(gettext 'The settings will be saved in a new directory under')     \n  "$USRCONFIGPATH"\n\n  $(gettext 'Enter the name of the new collection...')   "

    msg2="  $(gettext 'No file specified for new saved session.\n\n  Try again?')"

    local del time txt
    del=0

    while true;do  # diálogo de loop se nada for selecionado

        NEWNAME=$( yad_prompt "$msg" --entry --button="$(gettext 'Cancel')":252 --button="$(gettext 'OK')":0)

        if (( $? == 1 )) ;then # Cancelar foi selecionado
            return 1

        elif [[ ! $NEWNAME ]] ;then     # A entrada estava vazia

            debug "\n  $(gettext 'No name entered for new collection!')"

            yad_question "$msg2" --button="$(gettext 'Cancel')":252 --button="$(gettext 'OK')":0

            RET=$?
            if (( RET == 0 ));then
                continue
            else
                return 1
            fi
        else

            NEWNAME=${NEWNAME// /_}    # Substitua quaisquer espaços no nome do diretório

            CONFIGDIR="$USRCONFIGPATH/$NEWNAME"

            CONFIGDIR_BKP="${CONFIGDIR}.bkp"

            if [[ -d $CONFIGDIR ]];then

                debug "\n  $CONFIGDIR $(gettext 'already exists')"

                if yad_question "$(gettext 'Replace existing saved session?')"
                then
                    mv "$CONFIGDIR" "$CONFIGDIR_BKP" # && mkdir -p "$CONFIGDIR"
                    del=1
                else
                    continue
                fi
            fi

            mkdir -p "$CONFIGDIR" || return 1

            SETTINGS="$CONFIGDIR/settings.cfg"

            LISTMSG="$CONFIGDIR/LISTMSG.txt"

            :> "$SETTINGS"
            :> "$LISTMSG"

            break
        fi

    done # Imprimir somente o primeiro arquivo encontrado.


    time=$(date +%d/%m/%Y-%H:%M:%S)
    if (( del == 1 ));then
        txt="  ($(gettext 'Existing session replaced'))"
    else
        txt=""
    fi

    debug "\n  $(gettext 'The configuration will be saved as'): $NEWNAME$txt"


#     Armazenar lista em $LISTMSG

    echo -e "<b>Nome da configuração: $NEWNAME</b>\t$txt\n\nSalvo em: $time\n" >> "$LISTMSG"

}


# ----------------------------------------------------------------------------------------

# $1 [$2...] são caminhos relativos passados ​​de funções de salvamento

# Salva o arquivo de configuração do usuário no diretório correspondente em $CONFIGDIR/user.

# CONFIGDIR é global definido por setName()


function saveFiles(){

    local i src_file target_file

    for i in "$@"
    do

        # Pasta de origem

        src_file="$HOME/$i"

        # Pasta de destino

        target_file="$CONFIGDIR/user/$i"


        saveFileAbs "$src_file" "$target_file" || {

            echo "$0: $(gettext 'Failed to save') $src_file" >&2

            return 1
        }

    done
}

# ----------------------------------------------------------------------------------------


# $1 e $2 são caminhos de arquivo de origem e destino absolutos
# destino deve estar dentro do CONFIGDIR recém-criado
# se a origem for um diretório, ele será salvo recursivamente

function saveFileAbs(){

    local src_file target_file target_dir

    src_file="$1"

    [[ -L "$src_file" ]] && debug "$src_file $(gettext 'is a symbolic link, pointing to') $(readlink -f "$src_file")"

    [[ -r $src_file ]] || {

        echo "$0: $(gettext 'Cannot read source file') $src_file" >&2
        return 1

    }

    target_file="$2"

    [[ $target_file = $CONFIGDIR/* ]] || {

        echo "$0: $(gettext 'The target is not within') $CONFIGDIR" >&2
        return 1
    }

    target_dir="${target_file%/*}"

    mkdir -p "$target_dir" || return 1

    if [[ -d $src_file ]];then
        cp -r "$src_file" "$target_file" || return 1
        debug "diretório $src_file e conteúdo salvo em $target_dir"
    else
        cp "$src_file" "$target_file" || return 1
        debug "arquivo $src_file salvo em $target_dir"
    fi
}


# ----------------------------------------------------------------------------------------


# CONFIGDIR é um conjunto global definido por setName()

function saveDconf(){ # passed dconf directory as #1 and name of app (for dumpfile) as $2
    local dconfdir appname dumpfile
    dconfdir=$1
    appname=$2
    mkdir -p "$CONFIGDIR/dconf" || return 1
    dumpfile="$CONFIGDIR/dconf/${appname// /_}" # remove any spaces from name
    dconf dump "$dconfdir" > "$dumpfile" || return 1
    if [[ -s $dumpfile ]]
    then
        debug "Saved dconf $dconfdir to $dumpfile"
    elif [[ -e $dumpfile ]]
    then
        debug "dconf $dconfdir is default, created empty file $dumpfile"
    else
        "$0: $(gettext 'failed to create') $dumpfile" >&2
        return 1
    fi
}

# ----------------------------------------------------------------------------------------

# prints newest of files in "$@", returns 1 if no file is passed
# used in getBg

function newest() {

    [[ -n $1 ]] || return 1

    local i candidate

    for i in "$@"
    do
        [[ -f $i ]] || continue

        if [[ -n $candidate ]]
        then
            [[ $i -nt $candidate ]] && candidate="$i"
        else
            candidate="$i"
        fi

    done

    [[ -n $candidate ]] || return 1

    printf '%s' "$candidate"
}



# ----------------------------------------------------------------------------------------

function getBg(){  # Descubra se feh, Nitrogen ou outro foi usado. Salve o(s) arquivo(s) de configuração, se possível.

    local bgsetter='' bgsetterfile img # img é definido pelas funções get* filhas

    bgsetter=$(checkBgDaemon) || debug "$(gettext 'No background configuration daemon running')"

    [[ -z $bgsetter ]] && {
        if bgsetterfile="$( newest "$HOME/$NITROFILE" "$HOME/$FEHFILE" )"; then
            case $bgsetterfile in
            "$HOME/$NITROFILE")
                bgsetter=NITROGEN
                ;;
            "$HOME/$FEHFILE")
                bgsetter=FEH
                ;;
            esac
        else
            
            echo -e "\n$0: ${RED} xxxxxxxxxxxx ${NC} \n" >&2

            bgsetter="None"
        fi
    }


    debug "\n$(gettext 'Background to be set with') $bgsetter"

    case "$bgsetter" in
    NITROGEN)
        getNitrogen || {
            echo -e "\n$0: ${RED} $(gettext 'Failed to save Nitrogen configuration.') ${NC} \n" >&2
            return 1
        }
        ;;

    FEH)
        getFeh || {
            echo -e "\n$0: ${RED} $(gettext 'Failed to save Feh configuration.') ${NC} \n" >&2
            return 1
        }
        ;;

    XFDESKTOP)
        getXfdesktop || {
            echo -e "\n$0: ${RED} $(gettext 'Failed to save xfdesktop configuration.') ${NC} \n" >&2
            return 1
        }
        ;;

    PCMANFM)
        getPcmanfm || {
            echo -e "\n$0: ${RED} $(gettext 'Failed to save pcmanfm configuration.') ${NC} \n" >&2
            return 1
        }
        ;;

    None)
            echo -e "\n$0: ${RED} $(gettext 'No background setting application found.') ${NC} \n" >&2

            echo -e "$mensagem_erro_papel_de_parede8\n" >> "$LISTMSG"
        ;;

    esac


    # Gerando o arquivo settings.cfg (parte relacionada ao papel de parede)

    img=$( readlink -f "$img" )

    # echo "[$(gettext 'BACKGROUND')] $bgsetter" >> "$SETTINGS"

    # echo "($(gettext 'wallpaper')) $img" >> "$SETTINGS" # As funções de restauração poderão acessar isso

    echo "[BACKGROUND] $bgsetter" >> "$SETTINGS"

    echo "(BACKGROUND) $img" >> "$SETTINGS" # As funções de restauração poderão acessar isso


}


# ----------------------------------------------------------------------------------------

# NITROFILE é uma configuração global
#
# CONFIGDIR é um conjunto global definido por setName()


function getNitrogen(){  # Obter fundos salvos de Nitrogen

    local nfile="$CONFIGDIR/user/$NITROFILE" imgfile imglist

    saveFiles "$NITROFILE" || {

        echo -e "\n$0: ${RED} $(gettext 'Failed to save Nitrogen configuration file') $NITROFILE ${NC} \n"  >&2

        return 1
    }

    img=""     # img é local para getBg
    imgfile=""
    imglist=""

    while read -r line;do
        [[ $line = 'file='* ]] || continue
        imgfile=${line#file=}
        imglist="${imglist}${imgfile}\n\t"
        img=${img:-${imgfile}} # Salvar apenas a primeira imagem (pode ser restaurada por outro definidor de plano de fundo se o Nitrogen não estiver disponível)
    done < "$nfile"


echo "
$(gettext 'Nitrogen defined backgrounds, using:') $img $(gettext 'in') $CONFIGDIR/user/.config/nitrogen/
"
    cp "$img"  $CONFIGDIR/user/.config/nitrogen/


    debug "\n$(gettext 'Nitrogen defined backgrounds, using:')\t$CONFIGDIR/user/$NITROFILE"

    debug "$imglist"

    echo -e "$(gettext 'Background set with Nitrogen:')\n\t$imglist\n" >> "$LISTMSG"


}

# ----------------------------------------------------------------------------------------

# FEHFILE é uma configuração global
# CONFIGDIR é um conjunto global definido por setName()


function getFeh(){    # Obter fundos salvos do Feh

    local ffile="$CONFIGDIR/user/$FEHFILE" imglist

    saveFiles "$FEHFILE" || {

    echo -e "\n$0: ${RED}$(gettext 'Restoring the wallpaper') $FEHFILE ${NC} \n" >&2

        return 1
    }

    img="" # img é local para getBg


    # Obter campos entre aspas simples

    while read -r line;do

        imglist="${imglist}${line}\n\t"

        img="${img:-${line}}" # Salvar apenas a primeira imagem (pode ser restaurada por outro definidor de plano de fundo se feh não estiver disponível)

    done < <(grep -o "'[^']*'" "$ffile" | sed "s/'//g" 2>/dev/null)



    # Salvando o papel de parede com base no arquivo ~/.fehbg

echo "
$(gettext 'Funds defined with Feh, using:') $img $(gettext 'in') $CONFIGDIR/user/.config/Feh/
"

    mkdir -p $CONFIGDIR/user/.config/Feh/

    cp "$img"  $CONFIGDIR/user/.config/Feh/



    debug "\n$(gettext 'Using feh to set wallpaper')\t$CONFIGDIR/user/$FEHFILE"

    debug "$imglist"

    echo -e "\n$(gettext 'failed to parse new')\t$imglist\n" >> "$LISTMSG"


}

# https://wiki.archlinux.org/title/Feh

# ----------------------------------------------------------------------------------------

function getXfdesktop(){

    local mon ws props prop

    debug "$(gettext 'Getting wallpaper set by xfdesktop')"

    mon=$(bl-xinerama-prop --monitor) || return 1 # Monitor onde o ponteiro está

    debug "$(gettext 'on monitor') $mon"

    ws=$(xdotool get_desktop)

    debug "$(gettext 'on desktop') $ws"

    props=$(xfconf-query -c xfce4-desktop -l | grep --fixed-strings "/monitor${mon}/workspace${ws}/last-image")

    [[ -z $props ]] && return 1

    # save first image found on connected monitor, current workspace
    while read -r prop
    do
        img=$(xfconf-query -c xfce4-desktop -p "$prop") # img is local to getBg
        [[ -r "$img" ]] && break

    done <<< "$props"

    debug "\n$(gettext 'Background set with xfdesktop'):"

    debug "\t$img"

    echo -e "$(gettext 'Background set with xfdesktop'):\n\t$img\n" >> "$LISTMSG"
}

# ----------------------------------------------------------------------------------------

# get profile currently running pcmanfm is using

function getPcmanfmProfile(){
    local cmdline profile
    cmdline=$(pgrep -afx 'pcmanfm[[:blank:]].*') || {
        echo "$0: $(gettext 'pcmanfm is not running')" >&2
        return 1
    }
    cmdline=${cmdline#* } # remove pid
    if [[ $cmdline =~ [[:blank:]]-p[[:blank:]]([^[:blank:]]+) ]]
    then
        profile="${BASH_REMATCH[1]}"
    elif [[ $cmdline =~ [[:blank:]]--profile(=|[[:blank:]]+)([^[:blank:]]+) ]]
    then
        profile="${BASH_REMATCH[2]}"
    else
        profile=default
    fi
    printf '%s' "$profile"
}

# ----------------------------------------------------------------------------------------

function getPcmanfm(){

    local profile ws line

    debug "$(gettext 'Getting wallpaper set by pcmanfm')"

    profile=$(getPcmanfmProfile) || {

        echo "$0: $(gettext 'failed to get pcmanfm profile')"

        return 1
    }

    debug "$(gettext 'pcmanfm profile is') $profile"

    ws=$(xdotool get_desktop)

    debug "$(gettext 'on desktop') $ws"

    for i in "$HOME/.config/pcmanfm/$profile/"desktop-items-*.conf
    do
        while read -r line
        do
            [[ $line =~ wallpaper=(.*)$ || $line =~ wallpaper${ws}=(.*)$ ]] && {
                img="${BASH_REMATCH[1]}"       # img is local to getBg
                [[ -r "$img" ]] && break 2
            }
        done < "$i"
    done

    debug "\n$(gettext 'Background set with pcmanfm'):"

    debug "\t$img"

    echo -e "$(gettext 'Background set with pcmanfm'):\n\t$img\n" >> "$LISTMSG"
}

# ----------------------------------------------------------------------------------------

# generates command array idCmd from window id (hex or decimal)
# WARNING WM_COMMAND is deprecated: https://www.x.org/releases/X11R7.6/doc/xorg-docs/specs/ICCCM/icccm.html#obsolete_session_manager_conventions
# TODO switch to using mapfile with pids and /proc/${pid}/cmdline as in getTint()
# but, need to handle conkys on specific desktops.

# Usage: getIdCmd <id>
# called in getConky() where idCmd is local array variable
# NOTE: this works with conky windows, but not with tint2 which provides no WM_COMMAND data.

function getIdCmd(){
    local wmc del s
    wmc=$(xprop -id "$1"  WM_COMMAND)
    wmc=${wmc#*\"} # strip first & last quotes & everything outside
    wmc=${wmc%\"*}
    wmc=${wmc//\\\"/\"} # unescape any inner quotes
    del='", "' # delimiter
    s=${wmc}${del}
    idCmd=()
    while [[ -n $s ]]; do
        idCmd+=("${s%%${del}*}")
        s=${s#*${del}}
    done
}

# ----------------------------------------------------------------------------------------

# extracts path to conky config file from idCmd array generated by getIdCmd()
# conkyfile is local to getConky()
function getCfile(){
    local i
    conkyfile=''
    for i in "${!idCmd[@]}"; do
        [[ ${idCmd[i]} = '-c' ]] && { conkyfile="${idCmd[i+1]}"; break;}
        [[ ${idCmd[i]} = '--config='* ]] && { conkyfile="${idCmd[i]#--config=}"; break;}
    done
}

# ----------------------------------------------------------------------------------------

# trim /home/<user>/ from filepath
# reject absolute path elsewhere in system
# pass relative path as-is, assume relative to ~/

userFilepath(){
    local file=$1
    if [[ $file = "$HOME"/* ]]
    then
        file=${file#"$HOME"/}
    elif [[ $file = /* ]]
    then
        debug "${file} is not in user HOME, not using."
        return 1
    fi
    printf '%s' "$file"
}

# ----------------------------------------------------------------------------------------


# If conky is not to be saved in new theme, pass '--tmp <filepath>'
# to store current conkys in tempfile <filepath> while making scrot.

function getConky(){

    local conkyfile conkyline saved_conkysession num_desktops CONKYCMDS CONKYTXT
    local -a idCmd
    local -A arrSTICKY
    local save=1
    if [[ $1 = '--tmp' ]]
    then
        saved_conkysession=$2 # temporary sessionfile while scrot is taken
        save=0
    else
        saved_conkysession="$CONFIGDIR/user/$CONKYSESSION"
        mkdir -p "${saved_conkysession%/*}"
    fi

    num_desktops=$(xdotool get_num_desktops)
    CONKYCMDS=''
    CONKYTXT=''

    :> "$saved_conkysession"

    pgrep -x conky -u "$USER" >/dev/null || {

        debug "$(gettext 'No conky is running')"

        ((save)) && {

            echo "[CONKY] $(gettext 'none')" >> "$SETTINGS"

            echo -e "$(gettext 'No conky.\n(Any running Conky will be stopped.)')\n" >> "$LISTMSG"

        }

        return 0

    }


    while read -r id;do  # get all running conky id's
        arrSTICKY["$id"]=1
    done < <(xdotool search --class conky)

    for (( d=0; d<num_desktops; d++ ));do  # get all conkys running on specific desktops
        while read -r id;do
            unset arrSTICKY["$id"] # remove from sticky list
            if [[ -n "$id" ]];then
                getIdCmd "$id" # generates array idCmd
                getCfile # extract conky config file as variable $conkyfile
                if [[ "${idCmd[*]}" == "conky" ]] || [[ "${idCmd[*]}" == "conky -q" ]];then # $conkyfile will be empty
                    conkyfile='.config/conky/conky.conf'
                    CONKYTXT="$CONKYTXT\n\tDesktop $i:  Default Conky"

                    debug "$(gettext 'Found running default conky on Desktop') $d"

                    ((save)) && debug "$(gettext 'Saving a copy of the default conky file')"
                else
                    conkyfile=$( userFilepath "$conkyfile" ) || continue
                    CONKYTXT="$CONKYTXT\n\tDesktop $d:  ~/$conkyfile"
                    debug "Encontrado arquivo conky $conkyfile em execução no Desktop $d"
                    ((save)) && debug "$(gettext 'Saving copy of') $conkyfile"
                fi
                ((save)) && { saveFiles "$conkyfile" || {
                    echo "$0: $(gettext 'Failed to save conky configuration file') $conkyfile" >&2
                    return 1
                    }
                }
                # line to start on specified desktop with bl-conky-session
                conkyline="D[$d] $conkyfile"
                CONKYCMDS="${CONKYCMDS}${conkyline};" # add semicolon separator here
                echo "$conkyline" >> "$saved_conkysession"
                debug "Adicionado '$conkyline' ao arquivo conkysession salvo"
            fi
        done < <(xdotool search --desktop $((d)) --class conky)
    done

    for id in "${!arrSTICKY[@]}";do  # get commands - we don't need wmctrl for these
        if [[ -n "$id" ]];then
            getIdCmd "$id" # generates array idCmd
            getCfile # extract conky config file
            if [[ "${idCmd[*]}" == "conky" ]] || [[ "${idCmd[*]}" == "conky -q" ]];then
                conkyfile='.config/conky/conky.conf'
                CONKYTXT="$CONKYTXT\n\t$(gettext 'Default Conky')"

                debug "$(gettext 'Found running default conky')"

                ((save)) && debug "$(gettext 'saving copy of default conky file')"
            else
                conkyfile=$( userFilepath "$conkyfile" ) || continue
                CONKYTXT="$CONKYTXT\n\t~/$conkyfile"

                debug "$(gettext 'Found conky file running') $conkyfile"

                ((save)) && debug "$(gettext 'Saving copy of') $conkyfile"
            fi
            ((save)) && { saveFiles "$conkyfile" || {

                echo "$0: $(gettext 'Failed to save conky configuration file') $conkyfile" >&2

                return 1

                }
            }
            conkyline="$conkyfile"
            CONKYCMDS="${CONKYCMDS}${conkyline};" # add semicolon separator here
            echo "$conkyline" >> "$saved_conkysession"
            debug "Adicionado '$conkyline' ao arquivo conkysession salvo"
        fi
    done
    ((save)) && {
        echo "[CONKY] $CONKYCMDS" >> "$SETTINGS" # semicolon-delimited list CONKYCMDS is now only a fallback in case sessionfile is missing
        echo -e "$(gettext 'Running Conkys'):\t$CONKYTXT\n" >> "$LISTMSG"
    }
    debug "\n  $(gettext 'Conky(s) running saved')\n"
}


# ----------------------------------------------------------------------------------------


# If tint2 is not to be saved in new theme, pass '--tmp <filepath>'
# to store current tint2s in tempfile <filepath> while making scrot.

function getTint(){
    local tpath saved_tintsession TINTCMDS TINT2TXT
    local save=1
    if [[ $1 = '--tmp' ]]
    then
        saved_tintsession=$2 # temporary sessionfile while scrot is taken
        save=0
    else
        saved_tintsession="$CONFIGDIR/user/$TINTSESSION"
        mkdir -p "${saved_tintsession%/*}"
    fi

    TINTCMDS=""
    TINT2TXT=""

    :> "$saved_tintsession"

    pgrep -x tint2 -u "$USER" >/dev/null || {
        debug "$(gettext 'No tint2 instance is running')"
        ((save)) && {
            echo "[TINT2] $(gettext 'none')" >> "$SETTINGS"
            echo -e "$(gettext 'No tint2.\n(Any running tint2 will be stopped.)')" >> "$LISTMSG"
        }
        return 0
    }

    while read -r pid; do
        mapfile -d '' -t command < "/proc/${pid}/cmdline"

        [[ ${command[0]} = 'tint2' ]]  || {

            echo "$0: $(gettext 'pgrep parsing failed: command is not 'tint2'')" >&2

            continue

        }
        if (( ${#command[@]} > 1 )); then
            tpath=${command[-1]} # tint2 takes no options other than -c, which is optional
            tpath=$( userFilepath "$tpath" ) || continue # assume path is relative to $HOME
        else
            tpath='.config/tint2/tint2rc'
        fi
        [[ -f $HOME/$tpath ]] || {
            echo "$0: A análise do pgrep tint2 falhou: $HOME/$tpath não é um arquivo" >&2
            continue
        }
        echo "$tpath" >> "$saved_tintsession"
        debug "Adicionado '$tpath' ao arquivo tintsession salvo"
        ((save)) || continue
        TINTCMDS="$TINTCMDS$tpath;"
        if (( ${#command[@]} == 1 ));then

            TINT2TXT="$TINT2TXT\n\t$(gettext 'Default Tint2')"

            debug "$(gettext 'Saving a copy of the default tint2 configuration file')"

        else

            TINT2TXT="$TINT2TXT\n\t~/$tpath"

            debug "$(gettext 'Saving copy of') $tpath"

        fi
        saveFiles "$tpath" || {

            echo "$0: $(gettext 'Failed to save tint2 configuration file') $tpath" >&2

            return 1

        }

    done < <(pgrep -x 'tint2' -u "$USER")

    ((save)) && {

        echo "[TINT2] $TINTCMDS" >> "$SETTINGS" # $TINTCMDS only fallback if sessionfile is missing

        echo -e "$(gettext 'Running Tint2s'):\t$TINT2TXT\n" >> "$LISTMSG"

    }

    debug "\n$(gettext 'Tint2(s) saved while running')\n"
}




# ----------------------------------------------------------------------------------------

function getPlank(){


# Só salva se o processo do Plank estiver rodando para o usuário atual.

 pgrep -fx "plank" -u "$USER" >/dev/null || {

        echo "$0: $(gettext 'Plank is not running.')"

        return 1

    }


# Salva os lançadores do Plank ~/.config/plank/dock1/launchers/

    local txt
    saveFiles "$PLANKPATH" || {
        echo "$0: $(gettext 'Failed to save Plank configuration file') $PLANKPATH" >&2
        return 1
    }
    txt="\n$(gettext 'Plank Configuration'):  ~/$PLANKPATH\n"

    debug "\n $(gettext 'Saved') $txt"

    echo "[plank]" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"


# Salvar o tema do Plank ~/.local/share/plank/themes/ que o usuário esta usando atualmente.



}

# ----------------------------------------------------------------------------------------

function getobmenu-generator(){


# Só salva se o obmenu-generator estiver no arquivo ~/.config/openbox/menu.xml para o usuário atual.

cat ~/.config/openbox/menu.xml | grep obmenu-generator || {

        echo "$0: $(gettext 'obmenu-generator is not being used by the current user.')"

        return 1

    }


# Salva as configurações do obmenu-generator ~/.config/obmenu-generator/

    local txt

    saveFiles "$obmenu_generator_PATH" || {

        echo "$0: $(gettext 'Failed to save obmenu-generator configuration file') $obmenu_generator_PATH" >&2

        return 1
    }
    txt="\n$(gettext 'obmenu-generator configuration'):  ~/$obmenu_generator_PATH\n"

    debug "\n $(gettext 'Saved') $txt"

    echo "[obmenu-generator]" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"

}

# ----------------------------------------------------------------------------------------

# Fluxbox

# Salva o tema do FluxBox .fluxbox/init


# Declaração da função

function getfluxbox(){


    # Declaração da variável txt

    # A variável txt é declarada localmente dentro da função. Isso significa que ela só 
    # será acessível dentro dessa função.

    local txt 


# Chamada de saveFiles
#
# A função saveFiles está sendo chamada com o argumento ".fluxbox/init". Isso é uma 
# tentativa de salvar a configuração do FluxBox.
#
# Se saveFiles retornar um erro (ou seja, se a execução falhar), o script entra no 
# bloco || (o que significa "se o comando anterior falhar"). Nesse caso, o script exibe 
# uma mensagem de erro indicando que a tentativa de salvar o arquivo de configuração do 
# FluxBox falhou. A variável $FLUXPATH (que é o caminho do tema para o FluxBox) é 
# utilizada aqui.
#
# Após exibir a mensagem de erro, o comando return 1 é executado para sair da função com 
# um código de erro 1, indicando falha.

saveFiles ".fluxbox/init" || {

        echo "\n$0: $(gettext 'Failed to save FluxBox theme configuration file:') $FLUXPATH \n" >&2

        return 1
    }


    # Construção da mensagem txt

# A variável txt é definida com uma string que descreve a configuração do FluxBox. Ela 
# inclui o caminho para o arquivo init (configuração) do FluxBox, que está localizado em 
# ~/$FLUXPATH/init, onde $FLUXPATH é uma variável que contém o caminho para a configuração 
# do FluxBox.

# A função gettext é usada para garantir que a string seja traduzida, permitindo 
# internacionalização.

    txt="\n$(gettext 'FluxBox configuration'):    ~/$FLUXPATH/init\n"


    # Chamada de debug

# A função debug é chamada com uma mensagem que inclui a palavra "Saved" (também traduzida 
# com gettext), seguida da variável txt que contém o caminho da configuração salva.
# 
# A função debug serve para registrar ou exibir informações de depuração (por exemplo, 
# mostrar mensagens no terminal ou registrar em um arquivo de log).

    debug "\n $(gettext 'Saved') $txt"


    # Escrita nos arquivos de configuração:

# A primeira linha adiciona a string [FLUXBOX] ao final do arquivo indicado pela variável 
# $SETTINGS ($HOME/.config/bl-obthemes/settings.cfg).

    echo "[FLUXBOX]" >> "$SETTINGS"

# A segunda linha escreve a variável $txt, que contém a mensagem sobre a configuração do 
# FluxBox, no arquivo indicado pela variável $LISTMSG ($HOME/.config/bl-obthemes/LISTMSG.txt).

    echo -e "$txt" >> "$LISTMSG"

}


# ----------------------------------------------------------------------------------------

# Copie a seção <theme> de bl-rc.xml para obtheme.txt

function getOBtheme(){

    local obfile obtheme xpath

    obfile="$CONFIGDIR/obtheme.txt"
    [[ -r $RCFILE ]] || {
        RCFILE="$OLDRCFILE"
        debug "Getting openbox theme from $OLDRCFILE instead of $RCFILE"
    }
    [[ -r $RCFILE ]] || {
        echo "$0: Openbox config file $RCFILE not found" >&2
        return 1
    }
    xsl='<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ob="http://openbox.org/3.4/rc">
  <xsl:output method="xml" encoding="UTF-8" omit-xml-declaration="yes" />

  <xsl:template match="/">
    <xsl:apply-templates select="/ob:openbox_config/ob:theme" />
  </xsl:template>

  <xsl:template match="*">
    <xsl:element name="{local-name()}">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>

  <xsl:template match="@*|text()|comment()">
    <xsl:copy/>
  </xsl:template>

</xsl:stylesheet>
'

# Alterado de xmlstarlet para xml

    xmlstarlet transform <(cat <<<"$xsl") "$RCFILE" > "$obfile" || return 1

    [[ -s $obfile ]] || {

        echo "$0: $(gettext 'Failed to generate Openbox theme settings on') $obfile" >&2

        return 1

    }

    # $obfile has no namespace declarations, so '_:' syntax unnecessary
    xpath='/theme/name/text()'

# Alterado de xmlstarlet para xml

    obtheme=$(xmlstarlet sel --template --value-of "$xpath" "$obfile")
    [[ -n $obtheme ]] || {

        echo "$0: $(gettext 'Failed to determine the name of the Openbox theme to save')" >&2

        return 1
    }

    echo "$(gettext 'Openbox Theme'):  $obtheme" >> "$LISTMSG"

    echo "[OBTHEME] $obtheme" >> "$SETTINGS"

    debug "seção do tema Openbox (${obtheme}) copiada de $RCFILE"

}


# ----------------------------------------------------------------------------------------

function getGTKtheme(){

    saveFiles "$GTK2" "$GTK2MINE" "$GTK3/settings.ini" "$GTK3/gtk.css" "$GTK3x" || {

        echo "$0: $(gettext 'Failed to save required GTK configuration files')" >&2

        return 1
    }

    getGTKname || {

        echo "$0: $(gettext 'Failed to parse') $gtk3_settings" >&2

        return 1
    }
}

# ----------------------------------------------------------------------------------------


function getGTKname(){ # get saved GTK3 theme name and Icon theme name

    local gtk3_settings gtktheme icontheme txt

    gtk3_settings="$CONFIGDIR/user/$GTK3/settings.ini"

    # parseKeyfile generates global associative array KEYS

    parseKeyfile "$gtk3_settings" || { echo "$0: getGTKname() $(gettext 'Failed to parse') $gtk3_settings." 2>&1; return 1;}

    gtktheme=${KEYS[gtk-theme-name]}

    echo "[GTK] $gtktheme" >> "$SETTINGS"

    icontheme=${KEYS[gtk-icon-theme-name]}

    echo "[ICONS] $icontheme" >> "$SETTINGS"

    unset KEYS

    txt="$(gettext 'GTK Theme'):  $gtktheme\n$(gettext 'Icon Theme'): $icontheme\n"

    debug "\n $(gettext 'Saved') $txt"

    echo -e "$txt" >> "$LISTMSG"

}

# ----------------------------------------------------------------------------------------

function getDmenu(){

    local txt

    saveFiles "$DMENU" || {

        echo "$0: $(gettext 'Failed to save dmenu configuration file') $DMENU" >&2

        return 1
    }

    txt="$(gettext 'dmenu configuration'):  ~/$DMENU\n"

    debug "\n $(gettext 'Saved') $txt"

    echo "[DMENU]" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"

}

# ----------------------------------------------------------------------------------------

# Backup do Rofi


# Personalizar a aparência do Rofi utilizando arquivos de tema, que permitem alterar 
# cores, fontes, bordas e outros aspectos visuais.

# Para usar um tema no Rofi, você pode criar um arquivo de configuração no formato CSS 
# ou definir variáveis diretamente no arquivo de configuração padrão 
# (~/.config/rofi/config.rasi). Alguns exemplos incluem temas pré-configurados ou temas 
# criados por outros usuários, que podem ser encontrados em sites como o GitHub.

# echo -e "\nRofi: `rofi -v`\n"

# os arquivos .rasi (que são arquivos de configuração de tema para o Rofi) geralmente ficam no diretório de configuração do usuário, que é ~/.config/rofi/. 

# Defina o tema na linha de comando: Você pode aplicar um tema diretamente ao executar o Rofi com o seguinte comando:

# rofi -theme /caminho/para/o/tema.rasi


# Alternativamente, configure o arquivo de configuração: Abra o arquivo de configuração 
# do Rofi, normalmente localizado em ~/.config/rofi/config.rasi, e edite as variáveis ou 
# a configuração visual conforme necessário.

# Exemplo simples de configuração de tema no config.rasi:

# configuration {
#     theme: "your-theme.rasi";
# }

# Isso aplicará o tema especificado sempre que o Rofi for iniciado.

# Essa flexibilidade permite ajustar a aparência do Rofi para combinar com o estilo do 
# seu ambiente desktop.



# Esse comando instrui o rofi a gerar um arquivo de configuração padrão, contendo todas 
# as opções configuráveis e seus valores default. Ele não apenas cria uma cópia das 
# configurações atuais, mas sim um arquivo de configuração com todos os parâmetros 
# possíveis que você pode modificar.

# Se você executar esse comando, o conteúdo do arquivo ~/.config/rofi/config.rasi será 
# preenchido com as configurações padrão, que podem incluir:

#     Tamanho da fonte
#     Cores e temas
#     Comportamento do menu
#     Opções de layout
#     E muitas outras configurações.

# Depois, você pode editar esse arquivo para ajustar as preferências de como o rofi deve 
# se comportar ou parecer.


# // Arquivo gerado pelo comando "rofi -dump-config > ~/.config/rofi/config.rasi"

# rofi -dump-config > ~/.config/rofi/config.rasi

# rofi -show run


# Como Usar um Tema:

#     Baixe ou copie o arquivo de tema para o diretório de temas do rofi, normalmente localizado em ~/.config/rofi/themes/.

#     Altere o arquivo de configuração config.rasi para apontar para o tema que você escolheu. Exemplo:

# @theme "~/.config/rofi/themes/denvit.rasi"

# Reinicie o rofi para ver as mudanças aplicadas.


# A pasta onde os temas do rofi podem ser armazenados não é criada automaticamente pelo 
# rofi, então ela precisa ser criada manualmente se você quiser manter os temas 
# organizados. O local padrão onde os temas podem ser armazenados depende da sua escolha 
# pessoal, mas o caminho comum é dentro do diretório de configuração do usuário.

# Isso significa que os temas personalizados podem ser colocados dentro do diretório 
# ~/.config/rofi/themes/. Se essa pasta não existir, você pode criá-la manualmente.

# mkdir -p ~/.config/rofi/themes


# Referenciar o tema no arquivo de configuração:
# No arquivo de configuração do rofi (~/.config/rofi/config.rasi), você deve referenciar o tema assim:

# @theme "~/.config/rofi/themes/seu-tema.rasi"


# usar o rofi apenas com ícones em vez de uma lista?

# https://www.reddit.com/r/unixporn/comments/15ybsjc/rofi_created_my_own_first_rofitheme_how_did_i_do/
# https://github.com/w8ste/Tokyonight-rofi-theme/tree/main


function getRofi(){

local txt

# A verificação de pasta e arquivo não deixa fazer o backup mesmo na existencia dos mesmos.


# echo "$(gettext 'Rofi Menu Theme')"


#if [ -d "~/.config/rofi/" ]; then

#    echo "A pasta ~/.config/rofi/ existe."


# Para verificar se o arquivo ~/.config/rofi/config.rasi

#if [ -f "~/.config/rofi/config.rasi" ]; then

    # echo "O arquivo ~/.config/rofi/config.rasi existe"

echo "
Execuntando o comando saveFiles $ROFI agora...
"

    # saveFileAbs 

    saveFiles  "$ROFI" || {

        echo -e "\n$0: ${RED} $(gettext 'Failed to save Rofi configuration file.') $ROFI ${NC} \n"  >&2

        return 1
    }

    txt="$(gettext 'Rofi Configuration'):  ~/$ROFI \n"

    debug "\n $(gettext 'Saved') $txt"

    echo "[ROFI] $ROFI" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"


#else

#    echo -e "\n$0: ${RED} O arquivo ~/.config/rofi/config.rasi não existe. ${NC} \n"  >&2

#fi


# else

#    echo "A pasta ~/.config/rofi/ não existe."
    
# fi



}


# https://github.com/davatorium/rofi

# https://plus.diolinux.com.br/t/script-instale-as-personalizacoes-e-temas-archcraft-em-diversas-distros/40325
# https://dev.to/lissatransborda/criando-um-ambiente-de-desenvolvimento-minimalista-32o9
# 


# ----------------------------------------------------------------------------------------

# Backup do SDDM


function getSDDM(){


# Resumo:

# Essa parte do script verifica três coisas:

#     Se o processo do SDDM está rodando.
#     Se o arquivo de configuração do SDDM existe.
#     Se o diretório de temas do SDDM existe.




# Verifica se o processo sddm está em execução.


# A função pgrep -x "sddm" busca o processo exato chamado "sddm" em execução. Se 
# encontrar, o código segue dentro do bloco then; se não, entra na parte else e exibe 
# uma mensagem de erro.


if pgrep -x "sddm" > /dev/null
then

    # O processo SDDM está em execução.





# Verifica a existência do arquivo de configuração do SDDM (/etc/sddm.conf).

# Se o arquivo de configuração sddm.conf existir, o código segue dentro do bloco 
# then. Caso contrário, ele exibe uma mensagem de erro dizendo que o arquivo não 
# foi encontrado.


if [ -f /etc/sddm.conf ]; then

    # O arquivo /etc/sddm.conf existe.




# O SDDM usa temas para personalizar a tela de login do seu sistema, e você pode escolher 
# entre os temas predefinidos ou instalar novos.

# Verificar o tema atualmente em uso

tema_SDDM_atual=$(cat /etc/sddm.conf | grep "Current=" | cut -d= -f2)

# Você pode escolher entre os temas que já estão instalados ou baixar novos temas. Para 
# ver quais temas estão disponíveis no seu sistema, você pode verificar o diretório de 
# temas do SDDM:




# Verifica se o diretório de temas do SDDM (/usr/share/sddm/themes/) existe.

if [ -d /usr/share/sddm/themes/ ]; then

    # A pasta /usr/share/sddm/themes/ existe.



# ls -lh /usr/share/sddm/themes/


    echo -e "\n${GREEN}$(gettext 'Theme SDDM currently in use'):${NC} $tema_SDDM_atual \n" 

    ls -lh /usr/share/sddm/themes/ | grep `cat /etc/sddm.conf | grep "Current=" | cut -d= -f2`
      
    echo ""


# Realizando o backup do tema

backup_sddm(){

    local txt backup_sddm

    saveFileAbs "$gerenciador_de_login_config" "$CONFIGDIR/sddm.conf" || {


        message=$(gettext 'Failed to save SDDM configuration file %s to %s')

        echo -e "\n$0: ${RED} $(printf "$message" "$gerenciador_de_login_config" "$CONFIGDIR/sddm.conf" ) ${NC} \n"  >&2


        return 1
    }


    message=$(gettext 'SDDM configuration: %s (password will be required to restore)')

    txt="\n$(printf "$message" "$gerenciador_de_login_config")\n"


    debug "\n $(gettext 'Saved') $txt"

    echo "[SDDM] $gerenciador_de_login_config" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"

}


backup_sddm







# Reinicie o SDDM

# Para aplicar as mudanças, reinicie o SDDM:

# sudo systemctl restart sddm


# Verifique o novo tema

# Quando o sistema reiniciar, você verá a tela de login com o novo tema.

# Se você enfrentar problemas ao alterar o tema, verifique o diretório de temas e 
# certifique-se de que o tema selecionado esteja corretamente instalado e disponível.

# Dica:

# Para personalizar ainda mais o SDDM, você pode modificar as configurações de estilo, 
# como fontes, cores e animações, no arquivo de configuração do tema, geralmente 
# encontrado em /usr/share/sddm/themes/[nome-do-tema]/theme.conf ou similar.

# Com esses passos, você pode facilmente mudar o tema do SDDM e personalizar a tela de 
# login do seu sistema!



# Void Linux

# ln -s /etc/sv/sddm  /var/service/

# reboot


# Para remove: # rm -Rf /var/service/sddm



else

    echo -e "\n${RED}$(gettext 'The folder /usr/share/sddm/themes/ does not exist. Check if SDDM is installed correctly or if the folder is created.') ${NC} \n"  >&2

fi



else

    echo -e "\n$0: ${RED}$(gettext 'The /etc/sddm.conf file does not exist. You may need to create a new configuration file or verify that SDDM is installed correctly.')${NC} \n\nhttps://github.com/sddm/sddm \n"  >&2


# O arquivo /usr/share/man/man5/sddm.conf.5 é uma página de manual (man page) que fornece 
# informações sobre a configuração do arquivo /etc/sddm.conf no SDDM, mas não é um modelo 
# diretamente utilizável para ser copiado. Em vez disso, ele serve como uma documentação 
# explicando as várias opções que podem ser configuradas dentro de /etc/sddm.conf.

# Criando o arquivo /etc/sddm.conf


# Embora o /usr/share/man/man5/sddm.conf.5 não seja um arquivo de exemplo diretamente 
# copiável, ele pode ser utilizado como referência para configurar /etc/sddm.conf. O 
# /etc/sddm.conf não vem com o SDDM por padrão e deve ser criado manualmente se 
# necessário. Você pode usar as informações da man page para preencher esse arquivo de 
# configuração.




# Pergunta ao usuário se deseja criar o arquivo /etc/sddm.conf

response=$(yad \
--center \
--title="Criar arquivo de configuração" \
--question --text="Deseja criar o arquivo /etc/sddm.conf?" \
--button=Sim:0 --button=Não:1 \
--width="300" --height="150")

# Verifica a resposta do usuário

if [ $? -eq 0 ]; then

    # Se o usuário clicou em "Sim", cria o arquivo /etc/sddm.conf

    if [ ! -f /etc/sddm.conf ]; then



#        sudo bash -c 'cat > /etc/sddm.conf <<EOF

# Conteudo...

# EOF'





# Criando o arquivo /etc/sddm.conf

echo "[Autologin]
# Whether sddm should automatically log back into sessions when they exit
Relogin=false

# Name of session file for autologin session (if empty try last logged in)
Session=

# Username for autologin session
User=


[General]
# Which display server should be used.
# Valid values are: x11, x11-user, wayland. Wayland support is experimental
DisplayServer=x11

# Comma-separated list of environment variables to be set
GreeterEnvironment=

# Halt command
HaltCommand=/usr/bin/loginctl poweroff

# Input method module
InputMethod=qtvirtualkeyboard

# Comma-separated list of Linux namespaces for user session to enter
Namespaces=

# Initial NumLock state. Can be on, off or none.
# If property is set to none, numlock won't be changed
# NOTE: Currently ignored if autologin is enabled.
Numlock=none

# Reboot command
RebootCommand=/usr/bin/loginctl reboot


[Theme]
# Current theme name
Current=maldives


# Cursor size used in the greeter
CursorSize=

# Cursor theme used in the greeter
CursorTheme=

# Number of users to use as threshold
# above which avatars are disabled
# unless explicitly enabled with EnableAvatars
DisableAvatarsThreshold=7

# Enable display of custom user avatars
EnableAvatars=true

# Global directory for user avatars
# The files should be named <username>.face.icon
FacesDir=/usr/share/sddm/faces

# Font used in the greeter
Font=

# Theme directory path
ThemeDir=/usr/share/sddm/themes


[Users]
# Default $PATH for logged in users
DefaultPath=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin

# Comma-separated list of shells.
# Users with these shells as their default won't be listed
HideShells=

# Comma-separated list of users that should not be listed
HideUsers=

# Maximum user id for displayed users
MaximumUid=60000

# Minimum user id for displayed users
MinimumUid=1000

# Remember the session of the last successfully logged in user
RememberLastSession=true

# Remember the last successfully logged in user
RememberLastUser=true

# When logging in as the same user twice, restore the original session, rather than create a new one
ReuseSession=true


[Wayland]
# Path of the Wayland compositor to execute when starting the greeter
CompositorCommand=weston --shell=fullscreen-shell.so

# Enable Qt's automatic high-DPI scaling
EnableHiDPI=true

# Path to a script to execute when starting the desktop session
SessionCommand=/usr/share/sddm/scripts/wayland-session

# Comma-separated list of directories containing available Wayland sessions
SessionDir=/usr/local/share/wayland-sessions,/usr/share/wayland-sessions

# Path to the user session log file
SessionLogFile=.local/share/sddm/wayland-session.log


[X11]
# Path to a script to execute when starting the display server
DisplayCommand=/usr/share/sddm/scripts/Xsetup

# Path to a script to execute when stopping the display server
DisplayStopCommand=/usr/share/sddm/scripts/Xstop

# Enable Qt's automatic high-DPI scaling
EnableHiDPI=true

# Arguments passed to the X server invocation
ServerArguments=-nolisten tcp

# Path to X server binary
ServerPath=/usr/bin/X

# Path to a script to execute when starting the desktop session
SessionCommand=/usr/share/sddm/scripts/Xsession

# Comma-separated list of directories containing available X sessions
SessionDir=/usr/local/share/xsessions,/usr/share/xsessions

# Path to the user session log file
SessionLogFile=.local/share/sddm/xorg-session.log

# Path to Xephyr binary
XephyrPath=/usr/bin/Xephyr


" > /etc/sddm.conf



           echo -e "\n${GREEN}Arquivo /etc/sddm.conf criado com sucesso! ${NC} \n"

           sleep 1

           backup_sddm

    else

          echo -e "\n${GREEN}O arquivo /etc/sddm.conf já existe! ${NC} \n"


    fi



else

    # Se o usuário clicou em "Não"

    echo -e "\n$0: ${RED}O arquivo /etc/sddm.conf não foi criado. ${NC} \n"  >&2

fi




fi




# else

#    echo -e "\n$0: ${RED}$(gettext 'The SDDM process is NOT running.') ${NC} \n"  >&2


fi




}



# ----------------------------------------------------------------------------------------

# Backup do LightDM


function getLightdm(){


# Verifica se o processo lightdm está em execução

if pgrep -x "lightdm" > /dev/null
then

    # O processo LightDM está em execução.



    local txt

    saveFileAbs "$LDMDIR/$LDM" "$CONFIGDIR/$LDM" || {


        message=$(gettext 'Failed to save LightDM configuration file %s to %s')

        echo -e "\n$0: ${RED} $(printf "$message" "$LDMDIR/$LDM" "$CONFIGDIR/$LDM" ) ${NC} \n"  >&2


        return 1
    }


    message=$(gettext 'Lightdm configuration: %s (password will be required to restore)')

    txt="$(printf "$message" "$LDMDIR/$LDM")\n"


    debug "\n $(gettext 'Saved') $txt"

    echo "[LIGHTDM]" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"


# else

#    echo -e "\n$0: ${RED}$(gettext 'The LightDM process is NOT running.') ${NC} \n"  >&2

fi



# Void Linux

# ln -s /etc/sv/lightdm  /var/service/

# reboot


# Para remove: # rm -Rf /var/service/lightdm


}


# Como altera o tema do lightdm?


# Para alterar o tema do LightDM, você precisa modificar os arquivos de configuração e 
# garantir que o tema desejado esteja instalado corretamente.

# Passos para alterar o tema do LightDM:

# Instale o tema desejado (caso não tenha feito isso ainda):

# Baixe e instale o tema do LightDM que deseja usar. Os temas do LightDM geralmente ficam 
# em diretórios como /usr/share/themes/ ou /usr/share/lightdm-gtk-greeter/.

# Caso você queira usar o BL-Lithium, por exemplo, siga o processo de download do 
# repositório do GitHub.

# Edite a configuração do LightDM:
# O arquivo de configuração do LightDM que define o tema do greeter (tela de login) 
#  geralmente está localizado em /etc/lightdm/lightdm-gtk-greeter.conf ou 
# /etc/lightdm/lightdm.conf.

# Abra o arquivo de configuração com um editor de texto com privilégios de administrador. 
# Por exemplo, usando o nano:

# sudo nano /etc/lightdm/lightdm-gtk-greeter.conf

# Caso o arquivo não exista ou não tenha a opção para alterar o tema, você pode precisar 
# criá-lo ou alterar o arquivo principal de configuração do LightDM 
# (/etc/lightdm/lightdm.conf).

# Modifique o tema:

# Dentro do arquivo de configuração (lightdm-gtk-greeter.conf), localize a linha que 
# define o tema. Pode ser algo assim:

# greeter-theme = "Adwaita"

# Modifique essa linha para o nome do tema desejado. Por exemplo, para usar o tema 
# BL-Lithium, ficaria assim:

# greeter-theme = "BL-Lithium"

# Se o tema estiver em um diretório diferente (por exemplo, /usr/share/themes/BL-Lithium), 
# você pode precisar especificar o caminho completo:

# greeter-theme = "/usr/share/themes/BL-Lithium"

# Salvar e sair:

# Após fazer a alteração, salve o arquivo e saia do editor de texto. No nano, você faz 
# isso pressionando CTRL + O (salvar) e depois CTRL + X (sair).

# Reiniciar o LightDM:

# Para que as alterações entrem em vigor, você precisa reiniciar o serviço do LightDM. 
# Você pode fazer isso com o seguinte comando:

# Debian:

# sudo systemctl restart lightdm

#     Após reiniciar, o novo tema será aplicado na tela de login do LightDM.

# Observações:

# Outros tipos de greeters: Se você estiver usando um greeter diferente, como o 
# lightdm-webkit-greeter ou lightdm-slick-greeter, a configuração pode ser diferente. No 
# caso do webkit-greeter, o tema será configurado no arquivo 
# /etc/lightdm/lightdm-webkit2-greeter.conf.

# Dependendo da distribuição, os caminhos de diretórios podem variar, então sempre 
# verifique onde os temas estão localizados no seu sistema.





# ----------------------------------------------------------------------------------------


# passed termfile as $1 and pickterm as $2 by saveSettings()

function getTerminal(){
    local termname termfile txt
    termfile="$1"
    termname="$2"
    case "$termfile" in # dconf "directories" get prefixed with %dconf% in checkTerm()
    '%dconf%'*)
        saveDconf "${termfile#'%dconf%'}" "$termname" || {
            echo "$0: Falha ao salvar $termname dconf config: $termfile" >&2
            return 1
        }
        txt="$termname dconf config: ${termfile#'%dconf%'}\n"
        ;;
    *)
        saveFiles "$termfile" || {
            echo "$0: Falha ao salvar o arquivo de configuração $termname $termfile" >&2
            return 1
        }
        txt="$(gettext 'settings') $termname:  ~/$termfile\n"
        ;;
    esac

    debug "\n $(gettext 'Saved') $txt"

    echo "[$termname] $termfile" >> "$SETTINGS"
    echo -e "$txt" >> "$LISTMSG"
}

# ----------------------------------------------------------------------------------------

function getXconfig(){

    local txt

    saveFiles "$XFILE" || {

        echo "$0: $(gettext 'Failed to save X configuration file') $XFILE" >&2

        return 1
    }

    txt="$(gettext 'X Configuration'):  ~/$XFILE\n"

    debug "\n $(gettext 'Saved') $txt"

    echo "[XFILE]" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"

}

# ----------------------------------------------------------------------------------------

function getBashRC(){

    local txt

    saveFiles "$BASHRC" || {

        echo "$0: $(gettext 'Failed to save bash configs file') $BASHRC" >&2

        return 1
    }


    txt="$(gettext 'Bash Configuration'): ~/$BASHRC\n"

    debug "\n $(gettext 'Saved') $txt"

    echo "[BASHRC] $BASHRC" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"

}

# ----------------------------------------------------------------------------------------


function getComp(){

    local txt

    [[ -r "$HOME/$COMPFILE" ]] || COMPFILE=$OLDCOMPFILE

    saveFiles "$COMPFILE" || {

        echo "$0: $(gettext 'Failed to save composer configuration file') $COMPFILE" >&2

        return 1
    }

    txt="$(gettext 'Compositor settings'): ~/$COMPFILE\n"

    debug "\n $(gettext 'Saved') $txt"

    echo "[COMPOSITOR] $COMPFILE" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"

}

# ----------------------------------------------------------------------------------------

function getJgmenu(){

    local txt

    [[ -r $HOME/$JGMENURC ]] || {

        debug "$(gettext 'No jgmenu configuration file, not saving')"

        return 0

    }


    saveFiles "$JGMENURC" || {

        echo "$0: $(gettext 'Failed to save jgmenu configuration file') $JGMENURC" >&2

        return 1

    }

    txt="$(gettext 'jgmenu settings'): ~/$JGMENURC\n"

    debug "\n  $txt salvo"

    echo "[JGMENU]" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"

}

# ----------------------------------------------------------------------------------------

# Precisamos de uma nova função getJgmenuContent(), ela pode ir para qualquer lugar, mas logo após getJgmenu

function getJgmenuContent(){

    local file txt txt2=''

    [[ -r $HOME/$JGMENUCONT1 || -r $HOME/$JGMENUCONT2 ]] || {

        debug "$(gettext 'No jgmenu content file, not saving')"

        return 0

    }

    for file in "$JGMENUCONT1" "$JGMENUCONT2"
    do
        filename=${file##*/}

        [[ -r $HOME/$file ]] && {

            txt2+="$filename "

            debug "$(gettext 'Saving') $HOME/$file"

            saveFiles "$file" || {

                echo "$0: $(gettext 'Failed to save jgmenu content file') $file" >&2

                return 1

            }
        }
    done


    txt="$(gettext 'jgmenu content'): ~/$JGMENUPATH/ ${txt2}\n"

    debug "\n $(gettext 'Saved') $txt"

    echo "[JGMENUCONT] $txt2" >> "$SETTINGS"

    echo -e "$txt" >> "$LISTMSG"
}


# ----------------------------------------------------------------------------------------

function getScrot(){


# Chama a função verificar_virtualbox para identificar se esta usando esse script no VirtualBox

verificar_virtualbox


    debug "\n $(gettext 'Preparing to take a screenshot...')"

    local conkyFLAG tint2FLAG currDesktop scrot mons hiddenWins

    conkyFLAG=1
    tint2FLAG=1

    grep -q "CONKY" "$SETTINGS" || {

        conkyFLAG=0    # Conkys não devem ser salvos

        tmpConky=$(mktemp --tmpdir blob.XXXX)

        getConky --tmp "$tmpConky" # Salvar sessão conky atual para restaurar após tirar scrot

        debug "$(gettext 'Hiding Conkys - they are not to be saved to this BLOB.')"

        safeKill conky
    }


    grep -q "TINT2" "$SETTINGS" || {

        tint2FLAG=0    # Tint2s não devem ser salvos

        tmpTint=$(mktemp --tmpdir blob.XXXX)

        getTint --tmp "$tmpTint" # Salvar sessão tint2 atual para restaurar após tirar scrot

        debug "$(gettext 'Hiding tint2s - they are not to be saved to this BLOB')"

        safeKill tint2
    }


    currDesktop=$(xdotool get_desktop)

    debug "$(gettext 'Current desktop is') $currDesktop"

    scrot="$USRCONFIGPATH/$NEWNAME/${NEWNAME}.jpg"

    mons=$(xrandr -q | grep -c " connected")    # Número de monitores


    # Definir posição do mouse, para aparência do root-menu

    local -a dim

    read -r -a dim < <(bl-xinerama-prop)

    screenW=${dim[0]}
    screenH=${dim[1]}

    if (( mons == 1 ));then # Monitor único
        appX=$(( (screenW/20)*8 ))
        menuX=$(( (screenW/20)*2 ))
    else
        appX=$(( (screenW/20)*4 ))
        menuX=$(( (screenW/20)*1 ))
    fi
    appY=$(( (screenH/20)*4 ))
    menuY=$(( (screenH/20)*4 ))


    debug "$(gettext 'minimizing open windows')"



    # Minimizar todas as janelas visíveis não fixas na área de trabalho atual (a maioria dos conkys são fixos)

    sleep 0.5 # Certifique-se de que a janela yad anterior esteja completamente fechada antes de listar

    hiddenWins=()

    for w in $(xdotool search --onlyvisible --desktop "$currDesktop" --name '.*')
    do
        grep -iq <<<"$(xprop WM_CLASS -id "$w")" 'conky' && continue # remove any non-sticky conkys from hide list / remova qualquer conky não pegajoso da lista de ocultação

        hiddenWins+=("$w")

        xdotool windowminimize "$w"

    done


    # Iniciar lxappearance

    lxappearance 2>/dev/null &

    sleep 0.5


    # get lx window, make sure it loses focus, then move mouse and start root-menu / pegue a janela lx, certifique-se de que ela perca o foco, mova o mouse e inicie o menu raiz

    LX=$(xdotool getwindowfocus)

    xdotool windowmove --sync "$LX" "$appX" "$appY" && sleep 0.3 && \
    xdotool mousemove --sync --window "$LX" -- -50 0 && xdotool click 1

    sleep 0.3

    xdotool mousemove --sync "$menuX" "$menuY"

    sleep 0.1


    case $OBSESSION in

    bunsenlabs)

        jgmenu_run &

        sleep 0.5

        xdotool key --delay 100 Home

        i=1

        while (( i <= KEYDOWN ));do
            xdotool key --delay 100 Down
            i=$(( i+1 ))
        done

        xdotool key --delay 50 Right

        xdotool key --delay 50 Right && sleep 0.5

        ;;

    openbox)

        xdotool key --clearmodifiers "$MENUMODIFIER"

        i=1

        while (( i <= KEYDOWN ));do

            xdotool key --delay 100 Down

            i=$(( i+1 ))

        done

        xdotool key --delay 50 Right && sleep 0.5

        ;;

    esac

    debug "$(gettext 'Taking a screenshot...')"


    # Pegue o scrot

    scrot -t 9 "$scrot"    # miniatura do scrot @9% em tamanho real

    sleep 0.5

    debug "$(gettext 'Restoring desktop')"

    # close root menu

    xdotool mousemove_relative --sync --polar 0 10 "${MOUSECMD[@]}"

    sleep 0.5


    # kill lxappearance

    pkill -P "$$" lxappearance

    sleep 0.5


    # Restaurar janelas ocultas

    for w in "${hiddenWins[@]}"
    do
        xdotool windowmap --sync "$w"

        sleep 0.5

    done


    # Se conkys ou tint2s foram mortos, restaurar sessão em execução anterior

    ((conkyFLAG)) || {

        bl-conky-session "$tmpConky"

        rm -f "$tmpConky"

        sleep 0.5

    }

    ((tint2FLAG)) || {

        bl-tint2-session "$tmpTint"

        rm -f "$tmpTint"

        sleep 0.5

    }

}


# ----------------------------------------------------------------------------------------



# Escolha as configurações do terminal para salvar, com base no que é x-terminal-emulator
# define termfile e pickterm, local dentro de saveSettings()

function checkTerm(){

    case $( readlink /etc/alternatives/x-terminal-emulator ) in
    /usr/bin/lxterminal)
        termfile='.config/lxterminal/lxterminal.conf'
        pickterm='Lxterminal'
        ;;
    /usr/bin/terminator)
        termfile='.config/terminator/config'
        pickterm='Terminator'
        ;;
    /usr/bin/xfce4-terminal)
        termfile='.config/xfce4/terminal/terminalrc'
        pickterm='Xfce4-terminal'
        ;;
    /usr/bin/sakura)
        termfile='.config/sakura/sakura.conf'
        pickterm='Sakura'
        ;;
    /usr/bin/gnome-terminal.wrapper)
        termfile='%dconf%/org/gnome/terminal/'
        pickterm='Gnome-terminal'
        ;;
    /usr/bin/mate-terminal.wrapper)
        termfile='%dconf%/org/mate/terminal/'
        pickterm='Mate-terminal'
        ;;
    /usr/bin/tilix.wrapper)
        termfile='%dconf%/com/gexperts/Tilix/'
        pickterm='Tilix'
        ;;
    *)
        termfile=''
        ;;
    esac

}


# ----------------------------------------------------------------------------------------


# Mostra a tela do que vai ser salvo no tema


# Configurações de array

# NEWNAME conjunto global por setName()

function saveSettings(){

    local configs termfile pickterm txt txt2

    configs=(
        "$PICKOB"
        "$PICKFLUXBOX"
        "$PICKGTK"
        "$PICKBG"
        "$PICKCONKY"
        "$PICKTINT"
        "$PICKPLANK"
        "$PICKobmenugenerator"
        "$PICKDMENU"
        "$PICKROFI"
        "$PICKLDM"
        "$PICKSDDM"
        "$PICKX"
        "$PICKBASH"
        "$PICKCOMP"
        "$PICKJGMENU"
        "$PICKJGMENUCONT"

    )


    checkTerm # Define termfile e pickterm

    # Adicione um terminal ao array se um com um arquivo de configuração estiver em uso.

    if  [[ -n $termfile ]];then
        configs+=("$pickterm")
    fi


    for item in "${configs[@]}";do  # Agora salvando todas as configurações

        case "$item" in

            "$PICKOB"   )   getOBtheme
                            ;;


       "$PICKFLUXBOX"   )   # FluxBox
                            getfluxbox
                            ;;

            "$PICKGTK"  )   getGTKtheme
                            ;;
            "$PICKBG"   )   getBg
                            ;;
            "$PICKCONKY")   getConky
                            ;;
            "$PICKTINT" )   getTint
                            ;;
            "$PICKPLANK" )  getPlank
                            ;;
            "$PICKobmenugenerator" )  getobmenu-generator
                            ;;

            "$PICKDMENU")   getDmenu
                            ;;

            "$PICKROFI")    getRofi
                            ;;

            "$PICKLDM"  )   getLightdm
                            ;;
            "$PICKSDDM" )   getSDDM
                            ;;
            "$PICKX"    )   getXconfig
                            ;;
            "$PICKBASH" )   getBashRC
                            ;;
            "$PICKCOMP" )   getComp
                            ;;
            "$PICKJGMENU")  getJgmenu
                            ;;
            "$PICKJGMENUCONT") getJgmenuContent
                            ;;
            "$pickterm" )   getTerminal "$termfile" "$pickterm"
                            ;;

            *           )   echo "$0: $(gettext 'Unknown configuration value in saveSettings function')" >&2

                            exit 1

                            ;;
        esac
    done


   # Tela mostrando as cconfigurações do tema que serão salvas (gera o arquivo LISTMSG.txt)

    txt="<big><b><u>$(gettext 'Theme settings to be saved'):</u></b></big>\n\n"

    txt2=$(cat "$LISTMSG")

    yad_prompt "$txt$txt2" --button="$(gettext 'Cancel')":1 --button="$(gettext 'OK')":0

    ret=$?

    if (( ret == 1 ));then

        cleanup all

        return 1

    else

        debug "$(gettext 'Current settings saved as') \"$NEWNAME\""

        echo "$NEWNAME" > "$CURSESSFILE"     # Substituir entrada no arquivo de sinalizador de configuração salvo

    fi

}


# ----------------------------------------------------------------------------------------




###################### Fim das funções de salvamento ##############################





######################      Restaurar funções       ###############################



# ----------------------------------------------------------------------------------------


# Passe o nome do tema do ícone como $1


function checkICONS(){ # Verifique se o tema do ícone ainda está presente

#    local ICOTXT="Icon theme <b>$1</b> not found\n\n  The default icon theme will be used..."


    debug "$(gettext 'Checking the icon theme') $1"


    for i in "${iconPaths[@]}";do # iconPaths configura no topo

        if [[ -d "$i/$1" ]];then


            # Encontrado $1 tema de ícones.

            message=$(gettext 'Found %s icon theme.')

            debug "\n $(printf "$message" "$1")"


            return 0

        fi

    done


    local pkg="${icon_pkgs[$1]}"

    if [[ -n "${pkg}" ]] && hash bl-install >/dev/null
    then

        # Tema de ícones $1 não foi encontrado\n Oferecendo para instalar $pkg...

        message=$(gettext 'Icon theme %s not found \nOffering to install %s...')

        debug "\n $(printf "$message" "$1" "$pkg")"


        # Tema de ícone necessário <b>$1</b> não encontrado\n Você gostaria de instalar o pacote <b>${pkg}</b> que contém esse tema?

        message=$(gettext 'Required icon theme %s not found \nWould you like to install the %s package that contains this theme?')


        if yad_question "$(printf "$message" "<b>$1</b>" "<b>${pkg}</b>")" --button="$(gettext 'Cancel')":1 --button="$(gettext 'OK')":0
        then

            local retfile retval

            retfile="$( mktemp )"

            bl-install -f "$retfile" "$pkg"

            # sleep 0.3 # dê tempo para o bl-install gravar em $retfile (agora feito no bl-install)

            retval="$(<"$retfile")"

            rm "$retfile"

            if [[ "$retval" = 0 ]]
            then


                # O pacote de ícones $pkg foi instalado.

                message=$(gettext 'The %s icon pack has been installed.')

                debug "\n $(printf "$message" $pkg)"


                return 0

            else

                # Pacote de ícones ${pkg}: falha na instalação.

                message=$(gettext 'Icon pack %s: Installation failed.')

                debug "\n $(printf "$message" $pkg)"

                yad_warning "$(printf "$message" $pkg)" --button="$(gettext 'Cancel')":1 --button="$(gettext 'OK')":0

                return 1
            fi

        fi


    fi


    # Tema de ícones $1 não foi encontrado.

    message=$(gettext 'Icon theme %s not found.')

    debug "\n $(printf "$message" $1)"



#        yad_warning "$ICOTXT"

    return 1

}


# ----------------------------------------------------------------------------------------


# Passe o nome do tema GTK como $1

function checkGTK(){    # Verifique se o tema gtk ainda está presente.


    # Tema GTK necessário <b>$1</b> não encontrado\n Você gostaria de instalar o pacote <b>${pkg}</b> que contém esse tema?

    message=$(gettext 'Required GTK theme %s not found\nWould you like to install the package %s that contains this theme?')

    local INSTGTKTXT="$(printf "$message" "<b>$1</b>" "<b>${pkg}</b>")"


    # Tema GTK <b>$1</b> não encontrado\n\n  Continuar com o tema GTK atual ou sair?

    message=$(gettext 'GTK theme %s not found\n\n  Continue with current GTK theme or exit?')

    local NOGTKTXT="$(printf "$message" "<b>$1</b>")"


    message=$(gettext 'Checking GTK theme %s')

    debug "$(printf "$message" "$1")"


    for i in "${gtkPaths[@]}";do # gtkPaths defined at top
        if [[ -d "$i/$1" ]];then


            # Tema GTK de $1 encontrado.

            message=$(gettext 'GTK theme for %s found.')

            debug "\n  $(printf "$message" $1)"

            return 0

        fi
    done

    local pkg="${theme_pkgs[$1]}"

    if [[ -n "${pkg}" ]] && hash bl-install >/dev/null
    then

        # O tema GTK $1 não foi encontrado\n Oferecendo a instalação do $pkg...

        message=$(gettext 'GTK theme %s not found\n Offering to install %s...')

        debug "\n  $(printf "$message" "$1" "$pkg")"


        if yad_question "$INSTGTKTXT"
        then

            local retfile retval
            retfile="$( mktemp )"
            bl-install -f "$retfile" "$pkg"
            # sleep 0.3 # allow time for bl-install to write to $retfile (now done in bl-install)
            retval="$(<"$retfile")"

            rm "$retfile"

            if [[ "$retval" = 0 ]]
            then
                return 0
            else

                yad_warning "$(gettext 'Package installation failed.')"

            fi

        fi
    fi



    # Tema GTK $1 não foi encontrado.

    message=$(gettext 'GTK theme %s not found.')

    debug "\n  $(printf "$message" "$1")"



#    yad_warning_option "$NOGTKTXT"

    return 1
}


# ----------------------------------------------------------------------------------------


# restoreIcons <icontheme>
# $1 is $VAL from restoreSettings()
# This function is needed only when not restoring GTK settings - icon theme is included there.

function restoreIcons(){

    local new_icon_theme current_gtk3_settings current_gtk2_settings new_gtk3_settings new_icon_theme

#    new_icon_theme=$1

    current_gtk3_settings="$HOME/$GTK3/settings.ini"

    current_gtk2_settings="$HOME/$GTK2"

    new_gtk3_settings="$THEMEPATH/user/$GTK3/settings.ini"

    parseKeyfile "$new_gtk3_settings" || { echo "$0: restoreIcons() $(gettext 'Failed to parse') $new_gtk3_settings." 2>&1; return 1;} # As novas configurações do GTK não serão restauradas, lendo apenas o tema do ícone

    new_icon_theme=${KEYS[gtk-icon-theme-name]}

    unset KEYS


    message=$(gettext 'Set icon theme %s found in %s')

    debug "\n $(printf "$message" "$new_icon_theme" "$new_gtk3_settings")"

    


    checkICONS "$new_icon_theme" || {


        message=$(gettext 'Icon theme %s not found, continuing to use current icon theme.')

        debug "$(printf "$message" "$new_icon_theme")"


        message=$(gettext 'Icon theme %s not found\n\nThe current icon theme will be used.')

        yad_warning "$(printf "$message" "<b>$new_icon_theme</b>")"


        return 0 # retornar 1 acionaria uma mensagem de erro
    }



    message=$(gettext 'Definir tema de ícone para %s, O tema GTK não foi alterado.')

    debug "\n $(printf "$message" "$new_icon_theme")"


    editKeyfile "$current_gtk3_settings" "gtk-icon-theme-name=$new_icon_theme" || return 1

    editKeyfile --gtk2 "$current_gtk2_settings" "gtk-icon-theme-name=$new_icon_theme" || return 1

    reloadGTK

}


# ----------------------------------------------------------------------------------------


# THEMEPATH is global set by displayBlobs()
# restoreGTK [--noicons] <gtktheme> <icontheme>
# gtk/icon themes to be restored are $VAL from restoreSettings()
#  (these could be parsed from "$THEMEPATH/user/$GTK3/settings.ini" instead)
# option --noicons causes icon theme to be reset to current setting

function restoreGTK(){

    local restore_icons current_gtk3_settings new_gtk3_settings current_gtk2_settings current_gtk_theme new_gtk_theme current_icon_theme new_icon_theme

    restore_icons=true

    [[ $1 = '--noicons' ]] && { restore_icons=false; debug "$(gettext 'Not setting a new icon theme.')"; shift; }

#    new_gtk_theme=$1
#    [[ -n $2 ]] && new_icon_theme=$2

    current_gtk2_settings="$HOME/$GTK2"

    current_gtk3_settings="$HOME/$GTK3/settings.ini"

    new_gtk3_settings="$THEMEPATH/user/$GTK3/settings.ini"

    parseKeyfile "$current_gtk3_settings" || { echo "$0: restoreGTK() $(gettext 'Failed to parse') ${current_gtk3_settings}." 2>&1; return 1;} # Configurações antes de restaurar arquivos com novo tema

    current_gtk_theme=${KEYS[gtk-theme-name]}

    current_icon_theme=${KEYS[gtk-icon-theme-name]}

    unset KEYS


    message=$(gettext 'current gtk theme is %s, icon theme is %s')

    debug "\n $(printf "$message" "${current_gtk_theme}" "$current_icon_theme")"




    parseKeyfile "$new_gtk3_settings" || { echo "$0: restoreGTK() $(gettext 'Failed to parse') $new_gtk3_settings." 2>&1; return 1;} # Configurações após restaurar arquivos com novo tema

    new_gtk_theme=${KEYS[gtk-theme-name]}

    new_icon_theme=${KEYS[gtk-icon-theme-name]}

    unset KEYS



    message=$(gettext 'Setting GTK theme %s found in %s')

    debug "\n $(printf "$message" "$new_gtk_theme" "$new_gtk3_settings")"


    checkGTK "$new_gtk_theme" || {


        message=$(gettext 'GTK theme %s not found \n\nContinue with the current GTK theme, or exit?')

        local NOGTKTXT="$(printf "$message"  "<b>$new_gtk_theme</b>")"


        if yad_warning_option "$NOGTKTXT"; then

            debug "$new_gtk_theme not found, continuing with current GTK theme $current_gtk_theme"

            if [[ $restore_icons = 'true' ]]; then

                debug "icon theme $new_icon_theme will be applied"

                restoreIcons "$new_icon_theme" || return 1 # Aplicando novo tema de ícone sem tema gtk (inclui checkICONS)
            fi
            return 0
        else
            exit 1
        fi
    }


    [[ $restore_icons = 'true' ]] && {

        debug "Definir tema de ícone $new_icon_theme encontrado em $new_gtk3_settings"

        checkICONS "$new_icon_theme" || {

            local NOICOTXT="Tema de ícones <b>$new_icon_theme</b> não encontrado\n\n O tema de ícones atual será usado."

            yad_warning "$NOICOTXT"

            restore_icons=false
        }
    }



    safeKill jgmenu # If jgmenu is not running, GTK3 file edit will not trigger hook.

    restoreFiles "$GTK2" "$GTK2MINE" "$GTK3" "$GTK3x"

    # $HOME/$GTK3/settings.ini has now been updated

    [[ $restore_icons = 'false' ]] && {

        debug "$(gettext 'Setting icon theme back to current') $current_icon_theme"

        editKeyfile "$current_gtk3_settings" "gtk-icon-theme-name=$current_icon_theme" || return 1

        editKeyfile --gtk2 "$current_gtk2_settings" "gtk-icon-theme-name=$current_icon_theme" || return 1

    }


    # If jgmenu cache is set, restart will not trigger GTK sync.
    # This means GTK sync will have to be done in this script, if wanted.
    # Currently done in restoreSettings().
    jgmenu_write_gtkcache "$current_gtk3_settings"
    reloadGTK
    reloadXfceNotifyd
    # restartThunar # not needed now that bl-reload-gtk23 updates xsettings
}


# ----------------------------------------------------------------------------------------


function reloadGTK(){   # Recarregar tema gtk após restaurar configuração salva.

    debug "\n$(gettext 'Reloading GTK theme...')"

    if ((DEBUG_FLAG)); then

        bl-reload-gtk23 --force && debug "\n$(gettext 'bl-reload-gtk23: done')\n" || echo "$(gettext 'bl-reload-gtk23 failed')" >&2

    else

        bl-reload-gtk23 --force >/dev/null 2>&1 || echo "$(gettext 'bl-reload-gtk23 failed')" >&2

    fi

}


# ----------------------------------------------------------------------------------------


# Passe o arquivo de chave gtk como $1, analise o tema GTK a partir daí em vez de aceitar o nome em settings.cfg

function jgmenu_write_gtkcache(){

    local gtktheme jgmenu_cachedir

    jgmenu_cachedir="$HOME/.cache/jgmenu"

    mkdir -p "$jgmenu_cachedir"

    parseKeyfile "$1" || { echo "$0: jgmenu_write_gtkcache() $(gettext 'Failed to parse') $1" 2>&1; return 1;}

    gtktheme=${KEYS[gtk-theme-name]}


    message=$(gettext 'Setting %s as GTK theme in jgmenu cache.')

    debug "\n  $(printf "$message" "$gtktheme")"



    printf '%s' "$gtktheme" > "$jgmenu_cachedir/.last-gtktheme"

    unset KEYS
}


# ----------------------------------------------------------------------------------------


# next time xfce4-notifyd is called it will restart the two daemons, with latest config

function reloadXfceNotifyd(){

    debug "$(gettext 'Stopping the xfconf and xfce4-notify daemons.')"

    safeKill xfconfd
    safeKill xfce4-notifyd
}

# ----------------------------------------------------------------------------------------

function checkOBTHEME(){
    local FOUNDOB=0
    local OBTXT="Tema OpenBox <b>$1</b> não encontrado\n\n  O tema padrão do OpenBox será usado..."
    for i in "${gtkPaths[@]}";do # gtkPaths defined at top
        if [[ -d "$i/$1/openbox-3" ]];then
            debug "\n  Encontrado $1 tema OpenBox"
            FOUNDOB=1
            break
        fi
    done
    if (( FOUNDOB == 0 ));then

        debug "\n Tema OpenBox $1 não foi encontrado\n  O tema padrão do OpenBox será usado..."

        yad_warning "$OBTXT"
    fi
}

# ----------------------------------------------------------------------------------------

# escape filepaths for xmlstarlet

urlencode() {
    local LC_ALL=C c i e=''
    for (( i = 0; i < ${#1}; i++ )); do
        c=${1:i:1}
        case $c in
            [[:alnum:].~_-]) ;;
            *) printf -v c '%%%02X' "'$c" ;;
        esac
        e+=$c
    done
    printf '%s' "$e"
}


# ----------------------------------------------------------------------------------------



# function check_autostart() {

    # Arquivo autostart

#    autostartfile="$HOME/.config/openbox/autostart"

    # Definir os comandos que devem ser descomentados

#    local commands=("nitrogen --restore" "tint2" "plank" "conky" "feh" "picom")


    # Loop para verificar e descomentar as linhas

#    for cmd in "${commands[@]}"; do

        # Verifica se o comando está no arquivo e descomenta se necessário

#        grep -q "^#.*$cmd" "$autostartfile" && sed -i "s/^#.*$cmd/$cmd/" "$autostartfile"

#    done

    # Mensagem de sucesso após modificar o arquivo

#    debug "\n $(gettext 'Autostart file checked and modified (if necessary)')"

# }



# Verificar se os comandos "nitrogen --restore", "tint2", "plank", "conky", "feh", e 
# "picom" estão presentes no arquivo autostart, mas sem a necessidade de descomentar ou 
# modificar nada no arquivo.


function check_autostart() {


    # Arquivo autostart


# Verificar o processo em execução

if ps aux | grep -q '[f]luxbox'; then

    echo "Fluxbox"

    # Caminho para o arquivo autostart (substitua com o caminho correto)

    autostartfile="$HOME/.fluxbox/startup"

elif ps aux | grep -q '[o]penbox'; then

    echo "OpenBox"

    autostartfile="$HOME/.config/openbox/autostart"

else

    echo -e "\n\033[1;31m$(gettext 'No window manager identified.')\n\nOpenBox - Fluxbox\033[0m"

    exit 1

fi


# Exibir o arquivo de autostart correspondente

echo -e "\n$(gettext 'Autostart file'): $autostartfile \n"



    # Definir os comandos a serem verificados ("feh")

    local commands=("nitrogen --restore" "tint2" "plank" "conky" "picom")


    # Loop para verificar se os comandos existem no arquivo

    for cmd in "${commands[@]}"; do


        # Verifica se o comando está presente no arquivo

        if grep -q "^$cmd" "$autostartfile"; then


            message=$(gettext 'Command found: %s')

            # Para exibir a frase em verde forte (ou verde brilhante) no terminal

            echo -e "\033[1;32m$(printf "\n$message" "$cmd")\033[0m"

        else


            message=$(gettext 'Command not found: %s')

            # Colocar o texto em vermelho forte (também conhecido como vermelho brilhante) no terminal

            echo -e "\033[1;31m$(printf "\n$message" "$cmd")\033[0m"


           # Adiciona o comando ao final do arquivo

           echo "$cmd &" >> "$autostartfile"


           message=$(gettext 'Command %s added to autostart file.')

           echo -e "\033[1;32m\n$(printf "$message" "'$cmd'")\033[0m"

        fi

    done





# Exibe a janela do yad com os botões "Sim" e "Não"

message=$(gettext 'Do you want to open the file %s for manual verification now?')


response=$(yad --center --window-icon="$ICON" --title="$(gettext 'Autostart file verification')" \
               --text="$(printf "$message" "$autostartfile")" \
               --button="$(gettext 'Yes')":0 \
               --button="$(gettext 'No')":1 \
               --width="400" --height="200" 2>/dev/null)

# Verifica a resposta do usuário

if [ "$response" -eq 0 ]; then

    # Se o usuário clicar em "Sim", abre o arquivo com o xdg-open

    message=$(gettext 'Opening file %s for manual verification...')

    echo -e "\n$(printf "$message" "$autostartfile")\n"

    xdg-open "$autostartfile" 2>/dev/null



    # Mensagem de sucesso após a verificação

    # Para exibir a frase em amarelo forte (amarelo brilhante) no terminal

    echo -e "\033[1;33m\n$(gettext 'Autostart file checked.')\033[0m" 


else

    # Se o usuário clicar em "Não", apenas imprime que nada foi feito

    message=$(gettext 'Operation canceled. The file %s will not be opened.')

    echo -e "\033[1;31m\n$(printf "$message" "$autostartfile")\n\033[0m"


fi





}


# ----------------------------------------------------------------------------------------


# A função restoreOBrc no script tem como objetivo restaurar ou configurar o tema do 
# OpenBox (um gerenciador de janelas leve para o ambiente gráfico X) em um sistema Linux.

# Resumo das Ações da Função restoreOBrc:

#     Verifica se o arquivo de configuração do OpenBox (RCFILE) é legível, e caso não seja, retorna a um backup anterior.
#     Cria um backup do arquivo de configuração atual.
#     Remove backups antigos de arquivos .blob~.
#     Substitui o tema do arquivo de configuração do OpenBox usando uma transformação XSLT.
#     Aplica as alterações de tema e reconfigura o OpenBox.
#     Exibe mensagens de depuração sobre o andamento do processo.

# Essa função é útil para restaurar ou configurar rapidamente o tema do OpenBox, aplicando um novo tema configurado a partir de um arquivo de tema (obtheme.txt).



# RCFILE e OLDRCFILE definidos em USER CONFIG VARIABLES no topo.

# THEMEPATH e BKP_SFX são globais,

# definidos por displayBlobs() e restoreSettings() respectivamente.





function restoreOBrc(){


    # Definir Variáveis Locais

    # local themefile rcbkp xsl

      local themefile rcbkp


    # Aqui, três variáveis são declaradas:

    #    themefile: O caminho do arquivo de tema que será aplicado.
    #    rcbkp: O caminho do arquivo de backup do arquivo de configuração do OpenBox.
    #    xsl: Um conteúdo XML (que usa XSLT) para transformar e modificar a configuração do tema.


    # Definir o Caminho do arquivo de tema

    themefile="$THEMEPATH/obtheme.txt"

    # O arquivo de tema a ser usado (obtheme.txt) é localizado no diretório definido pela variável THEMEPATH.


    # Verificar e Ajustar o Arquivo de Configuração

# O script verifica se o arquivo de configuração do OpenBox (RCFILE) está legível. Caso 
# contrário, ele faz um "fallback" para um arquivo de configuração de backup (OLDRCFILE) 
# e imprime uma mensagem de depuração informando essa mudança.

    [[ -r $RCFILE ]] || {


        message=$(gettext 'Restoring theme from %s to %s instead of %s')

        debug "\n $(printf "$message" "$themefile" "$OLDRCFILE" "$RCFILE")"


        RCFILE="$OLDRCFILE"
    }



    # Criar Backup do arquivo de configuração

# O arquivo de configuração atual (RCFILE) é copiado para um novo arquivo de backup, com 
# um sufixo BKP_SFX que é definido em outra parte do script (provavelmente algo como _bkp 
# ou .bak).

    # Backup bl-rc.xml primeiro

    rcbkp="${RCFILE}${BKP_SFX}"

    cp "$RCFILE" "$rcbkp"


    # Remover backups mais antigos

# O script percorre os arquivos de backup antigos (arquivos que terminam com .blob~) no 
# diretório definido por OBPATH e remove aqueles que são mais antigos que o backup recém-criado.

    for f in "$OBPATH"/*.blob~ ;do

        if [[ $f -ot $rcbkp ]];then
            rm "$f"
        fi

    done


    message=$(gettext '%s backed up as %s')

    debug "\n $(printf "$message" "$RCFILE" "$rcbkp")"



# Tem como restaurar o tema do OpenBox sem usar o xmlstarlet?


# É possível restaurar o tema do OpenBox sem usar o xmlstarlet. O xmlstarlet é 
# frequentemente usado para manipulação de XMLs com XSLT, mas se você não quiser 
# depender dele, pode usar outras abordagens para modificar diretamente o arquivo 
# de configuração do OpenBox.


# ----------------------------------------------------------------------------------------


# Aplicar o Tema Usando XSLT A seguir, o script define um transformador XSLT (xsl) para 
# modificar a configuração XML do OpenBox. O objetivo dessa transformação é substituir o 
# elemento <theme> do arquivo de configuração (RCFILE) pelo conteúdo do arquivo de tema 
# (obtheme.txt).


    # Substitua o elemento <theme> em $RCFILE de $themefile:

#     xsl='<?xml version="1.0" encoding="UTF-8"?>
# <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ob="http://openbox.org/3.4/rc" >
#   <xsl:output method="xml" encoding="UTF-8" />
#   <xsl:param name="themefile" /> <!-- must url encode this file path -->

#   <xsl:template match="@*|node()">
#     <xsl:copy>
#       <xsl:apply-templates select="@*|node()" />
#     </xsl:copy>
#   </xsl:template>

#   <xsl:template match="ob:theme">
#     <xsl:apply-templates  select="document($themefile)" />
#   </xsl:template>
#   <!-- create elements with default namespace -->
#   <xsl:template match="*" >
#     <xsl:element name="{local-name()}" namespace="http://openbox.org/3.4/rc">
#       <xsl:apply-templates select="@*|node()" />
#     </xsl:element>
#   </xsl:template>

#   <xsl:template match="@*|text()|comment()">
#     <xsl:copy/>
#   </xsl:template>

# </xsl:stylesheet>
# '

# O XSLT define como o tema (<theme>) será substituído pela configuração contida no 
# arquivo de tema ($themefile).
#
# A transformação é realizada com a ajuda do xmlstarlet, que usa esse xsl para modificar 
# o arquivo XML de configuração do OpenBox.



# Transformar e Aplicar o Novo Tema

# O xmlstarlet transform aplica a transformação XSLT definida anteriormente no arquivo de configuração do OpenBox (RCFILE).
# O resultado é armazenado em um arquivo temporário (${RCFILE}_tmp).
# O arquivo temporário é copiado de volta para o arquivo de configuração original (RCFILE), substituindo o conteúdo com a nova configuração do tema.
# O arquivo temporário é removido após o processo.


#    themefile="file://$(urlencode "$themefile")"

# Alterado de xmlstarlet para xml

# O comando xmlstarlet realizar uma transformação XSLT em um arquivo XML. 

#     xmlstarlet transform <(cat <<<"$xsl") -p themefile="'$themefile'"  "$RCFILE" > "${RCFILE}_tmp" || return 1

#     cat "${RCFILE}_tmp" > "$RCFILE" || return 1

#     rm "${RCFILE}_tmp"


# ----------------------------------------------------------------------------------------


    # Substituir o conteúdo do tema diretamente usando sed

    # Aqui estamos substituindo a linha <theme> com o conteúdo do arquivo de tema
    # A suposição é que a tag <theme> existe no arquivo XML de configuração.

    sed -i "/<theme>/,/<\/theme>/ {
        r $themefile
        d
    }" "$RCFILE"


# Explicação da modificação:
# 
#     Substituição de <theme> com sed:
#     Em vez de usar XSLT para modificar o arquivo XML, o sed foi usado para substituir 
#     diretamente o conteúdo da tag <theme>. O comando sed usa um intervalo de linhas 
#     (/<theme>/,/<\/theme>/) e substitui o conteúdo entre essas tags com o conteúdo do 
#     arquivo de tema (r $themefile), removendo as tags existentes (d).


# Conclusão
#
# Essa abordagem com sed é uma solução simples para manipular a configuração sem precisar 
# de ferramentas como xmlstarlet. No entanto, o uso de xmlstarlet (ou outras ferramentas XML) 
# oferece maior flexibilidade, especialmente quando se lida com arquivos XML complexos. A 
# escolha entre essas abordagens depende da complexidade do arquivo de configuração do 
# OpenBox e das suas preferências em termos de ferramentas.


    message=$(gettext '%s edited to OpenBox theme')

    debug "\n $(printf "$message" "$RCFILE")"



    # Reconfigurar o OpenBox para aplicar o novo tema

    # Após a modificação do arquivo de configuração, o OpenBox é reconfigurado para 
    # aplicar as alterações do tema.

    openbox --reconfigure || return 1


    # O script imprime uma mensagem de depuração informando que o OpenBox foi reconfigurado com sucesso.

    debug "\n$(gettext 'OpenBox reconfigured')\n\n"



    # Verificar e descomentar as opções no arquivo autostart

    # Verificar o arquivo autostart do OpenBox

    check_autostart



}






# ----------------------------------------------------------------------------------------


# Restaura o tema do FluxBox ~/.fluxbox/init


# Este trecho do código define a função restoreFluxbox(), que tem como objetivo restaurar 
# a configuração do FluxBox e aplicar um tema de FluxBox a partir de um diretório de origem. 


restoreFluxbox(){


    # Verificar se as variáveis necessárias estão definidas antes de usá-las.

# Se as variáveis como $FLUXPATH ou $THEMEPATH não estiverem definidas corretamente, o 
# script pode falhar.

    if [ -z "$FLUXPATH" ] || [ -z "$THEMEPATH" ] ; then

        echo -e "\n${RED}$(gettext 'One or more required variables are not set (FLUXPATH, THEMEPATH).')${NC} \n"

        # return 1

    fi



    # Verificar se o FluxBox está em execução


# A função pgrep -x "fluxbox" é usada para verificar se o processo do FluxBox está 
# em execução.
#
# Se o FluxBox não estiver em execução (o comando pgrep retorna um código de erro), o 
# script exibe uma mensagem de erro e retorna com 1, interrompendo a função.
#
# Isso garante que a restauração do tema só seja tentada se o FluxBox estiver realmente 
# em execução.


    if ! pgrep -x "fluxbox" > /dev/null; then

        echo -e "\n${RED}$(gettext 'FluxBox is not running. Cannot restore theme.')${NC} \n"

        yad_warning "$(gettext 'FluxBox is not running. Cannot restore theme.')"

        # return 1
    fi



    # Verificação do FluxBox como gerenciador de janelas ativo
    # 
    # Verificar se o FluxBox é o gerenciador de janelas ativo


    #  Verifica duas coisas:

    #  Se a variável de ambiente DESKTOP_SESSION é igual a "fluxbox", o que indica que o 
    #  FluxBox é o gerenciador de janelas ativo.

    #  Se o comando xprop -root retorna o nome do gerenciador de janelas ativo e se ele 
    #  corresponde ao FluxBox. Se outro gerenciador de janelas estiver ativo, ele exibe uma 
    #  mensagem de erro e interrompe a execução.

    #  Essa verificação evita que você tente reconfigurar o FluxBox enquanto outro gerenciador 
    #  de janelas estiver ativo.

    #  Chamada condicional de fluxbox --reconfigure:

    #   Agora o comando fluxbox --reconfigure será chamado apenas se o FluxBox estiver 
    #   ativo e configurado corretamente. Caso contrário, o script não tentará reconfigurá-lo.

    #  Como isso resolve o erro:

    #  Evita a tentativa de reconfiguração enquanto outro gerenciador de janelas está ativo.
    #  Garante que a reconfiguração do FluxBox seja feita apenas quando o FluxBox for o 
    #  gerenciador de janelas ativo.


    if [ "$DESKTOP_SESSION" != "fluxbox" ] && ! xprop -root | grep -q "WM_NAME(STRING) = 'Fluxbox'"; then

        echo -e "\n${RED}$(gettext 'Another window manager is currently active. FluxBox cannot be reconfigured.')${NC} \n"

        yad_warning "$(gettext 'Another window manager is currently active. FluxBox cannot be reconfigured.')"

        # return 1
    fi



# Verificação e criação do diretório

# Cria a pasta se ela não existir


# Aqui, o script verifica se o diretório $HOME/$FLUXPATH existe.

# Se não existir, ele cria esse diretório com o comando mkdir -p (que cria o diretório e 
# qualquer diretório pai necessário).
# Após a criação do diretório, o script imprime uma mensagem dizendo que o diretório foi criado.


if [ ! -d "$HOME/$FLUXPATH" ]; then

    mkdir -p $HOME/$FLUXPATH

      message=$(gettext 'Folder %s created.')

      echo -e "\n${GREEN}$(printf "$message" "$HOME/$FLUXPATH") ${NC} \n"

# else

#    echo "A pasta $HOME/$FLUXPATH já existe."

fi






    # Verificar se o arquivo de origem existe antes de copiar

    if [ ! -f "$THEMEPATH/user/.fluxbox/init" ]; then


        message=$(gettext 'FluxBox configuration file %s does not exist in the theme.')

        echo -e "\n${RED}$(printf "$message" "$THEMEPATH/user/.fluxbox/init")${NC} \n"

        # return 1

    fi


# Extração do nome do tema do FluxBox
# 
# O script lê o arquivo de configuração .fluxbox/init localizado em 
# $THEMEPATH/user/.fluxbox/init usando cat.
# 
# Em seguida, ele usa grep para procurar a linha que contém session.styleFile:, que 
# especifica o arquivo de tema do FluxBox.
# 
# O awk '{print $2}' extrai o caminho do arquivo de tema (que aparece após session.styleFile:).
# O comando sed 's#.*/##' remove o caminho, deixando apenas o nome do arquivo do tema.
# O nome do tema extraído é armazenado na variável Fluxbox_Theme.

Fluxbox_Theme=$(cat $THEMEPATH/user/.fluxbox/init | grep "session.styleFile:" | awk '{print $2}' | sed 's#.*/##')




# ----------------------------------------------------------------------------------------


# Para verificar se um tema do FluxBox está instalado no sistema

# Precisa verificar se o arquivo de configuração do tema está presente no diretório 
# correto do FluxBox.

# Os temas do FluxBox normalmente estão armazenados no diretório ~/.fluxbox/styles/ para 
# o usuário ou em um diretório global, dependendo da instalação do sistema, como 
# /usr/share/fluxbox/styles/ ou /usr/local/share/fluxbox/styles/.

# Passos para verificar se o tema está instalado:

#     Verificar o diretório de temas do FluxBox: O FluxBox usa arquivos de estilo que são armazenados em um dos seguintes locais:
#         Diretório do usuário: ~/.fluxbox/styles/
#         Diretório global: /usr/share/fluxbox/styles/ ou /usr/local/share/fluxbox/styles/

#     Verificar se o tema está presente no diretório de estilos: Você pode verificar se o tema está presente em um desses diretórios verificando a existência de um arquivo com o nome do tema desejado.


check_fluxbox_theme_installed() {


    local theme_name="$1"

# No FluxBox, os temas geralmente contêm um arquivo de configuração chamado theme.cfg. 
# Esse arquivo de configuração é onde o FluxBox lê os parâmetros do tema, como cores, 
# fontes, e outros aspectos da aparência do ambiente.


    # O script verifica os seguintes diretórios para o tema:


    # Diretório do usuário

    local theme_dir_user="$HOME/.fluxbox/styles"

    # Diretório global

    local theme_dir_global="/usr/share/fluxbox/styles"

    # Diretório local

    local theme_dir_local="/usr/local/share/fluxbox/styles"



# O script verifica a presença do diretório do tema e dentro dele, o arquivo theme.cfg.


# Mensagens de Sucesso:

# Se o tema for encontrado em qualquer um dos diretórios, o script imprime uma mensagem 
# informando que o tema foi encontrado e retorna 0 (sucesso).


# Mensagem de Erro:

# Se o tema não for encontrado em nenhum dos diretórios, o script imprime uma mensagem 
# dizendo que o tema não está instalado e retorna 1 (erro).



# Um tema pode ser tanto um arquivo (arquivo de configuração de estilo) quanto um 
# diretório contendo arquivos e recursos para o tema (como imagens e o arquivo).


    # Verificar se o nome do tema foi fornecido

    if [ -z "$theme_name" ]; then

        echo -e "\n${RED}$(gettext 'No theme name provided.') ${NC} \n"

        return 1
    fi


# Para verificar se um tema do FluxBox está instalado corretamente, precisamos verificar 
# se o diretório do tema existe, e dentro dele, se o arquivo theme.cfg existe. 

# O script verifica se o diretório do tema existe (-d) e se o arquivo de estilo (theme.cfg) 
# está presente dentro desse diretório.



# Verificar se o tema é um diretório e contém o arquivo theme.cfg


    # Verificar no diretório do usuário

    if [ -d "$theme_dir_user/$theme_name" ] && [ -f "$theme_dir_user/$theme_name/theme.cfg" ]; then

        message=$(gettext 'Theme %s found in user directory.')

        echo -e "\n${GREEN}$(printf "$message" "'$theme_name'") ${NC} \n"

        ls -lh $theme_dir_user/ | grep "$theme_name"

        return 0
    fi




    # Verificar no diretório global

    if [ -d "$theme_dir_global/$theme_name" ] && [ -f "$theme_dir_global/$theme_name/theme.cfg" ]; then

        message=$(gettext 'Theme %s found in global directory.')

        echo -e "\n${GREEN}$(printf "$message" "'$theme_name'") ${NC} \n"

        ls -lh $theme_dir_global/ | grep "$theme_name"

        return 0
    fi


    # Verificar no diretório local

    if [ -d "$theme_dir_local/$theme_name" ] && [ -f "$theme_dir_local/$theme_name/theme.cfg" ]; then

        message=$(gettext 'Theme %s found in local directory.')

        echo -e "\n${GREEN}$(printf "$message" "'$theme_name'") ${NC} \n"

        ls -lh $theme_dir_local/ | grep "$theme_name"

        return 0
    fi


        # Tema não encontrado

        message=$(gettext 'Theme %s is not installed.')

        echo -e "\n${RED}$(printf "$message" "'$theme_name'") ${NC} \n"

        return 1
}



# Como funciona:

#     Função check_fluxbox_theme_installed:
#         Recebe o nome do tema como argumento ($1).
#         Verifica se o diretório ~/.fluxbox/styles, /usr/share/fluxbox/styles ou /usr/local/share/fluxbox/styles contém um arquivo com o nome do tema. O nome do tema deve ser o nome do arquivo de estilo (por exemplo, my_theme).
#         Se o arquivo do tema for encontrado, ele retorna uma mensagem informando que o tema foi encontrado e retorna 0 (sucesso).
#         Se o arquivo não for encontrado em nenhum dos diretórios, ele retorna uma mensagem dizendo que o tema não está instalado e retorna 1 (erro).

# Exemplo de uso:

# Se você tem um tema chamado my_theme e quer verificar se ele está instalado no sistema, você pode chamar a função dessa maneira:



# Exemplo de uso

# Considerações:

#   Certifique-se de que o nome do tema fornecido seja o nome correto do arquivo de estilo.

check_fluxbox_theme_installed "$Fluxbox_Theme"


# ----------------------------------------------------------------------------------------





# Cópia do arquivo de configuração do Fluxbox para o diretório do usuário (~/.fluxbox)

echo "

cp $THEMEPATH/user/.fluxbox/init  $HOME/$FLUXPATH/

"

# O script copia o arquivo $THEMEPATH/user/.fluxbox/init para o diretório $HOME/$FLUXPATH/.
#
# Após a cópia, ele usa ls -lh "$HOME/$FLUXPATH/init" para listar o arquivo copiado, 
# mostrando detalhes sobre o arquivo.
#
# Se a cópia e a listagem forem bem-sucedidas, o código continua a execução normalmente.
# 
# Caso contrário, ele retorna um código de erro com return 1, interrompendo a função.

cp $THEMEPATH/user/.fluxbox/init  "$HOME/$FLUXPATH/" && ls -lh "$HOME/$FLUXPATH/init" || return 1


# Mensagem de sucesso ou falha após a cópia.
#
# O script verifica o status de saída do comando anterior (que foi a cópia do arquivo) 
# usando $?.
#
# Se o valor for 0 (indicado sucesso), ele cria uma mensagem de sucesso usando gettext, 
# traduzindo a frase FluxBox theme %s has been restored.. A variável Fluxbox_Theme (nome 
# do tema) é inserida na mensagem com printf.
#
# Em seguida, a mensagem é impressa no terminal com a cor verde, usando as variáveis de 
# cor $GREEN e $NC (para resetar a cor).
#
# Se o comando anterior falhou (status de saída diferente de 0), o script imprime uma 
# mensagem de erro, usando a cor vermelha ($RED).


if [ "$?" -eq "0" ];
then

      # O tema %s do FluxBox foi restaurado.

      message=$(gettext 'FluxBox theme %s has been restored.')

      echo -e "\n${GREEN}$(printf "$message" "$Fluxbox_Theme") ${NC} \n"







# Reconfiguração do FluxBox (Não esta funcionando)


      message=$(gettext 'Reconfiguring FluxBox to apply restored %s theme...')

      echo -e "\n\n${YELLOW}$(printf "$message" "$Fluxbox_Theme") ${NC} \n\n"



# ----------------------------------------------------------------------------------------


# 3. Também podemos tentar o método mais direto para forçar a recarga do FluxBox
# O comando "fluxbox --reconfigure" reinicia o FluxBox


# Chamar a função atualiza_tema caso o comando fluxbox --reconfigure falhe.

fluxbox --reconfigure || Restart_FluxBox || atualiza_tema_FluxBox || atualiza_tema_Flux || {


# BScreen::BScreen: ocorreu um erro ao interrogar o servidor X.
#  outro gerenciador de janelas está ativo:0.0
# Erro: Não foram encontradas telas para gerenciar.
# Assegure-se de que não há outro gerenciador de janelas ativo.


# O erro ocorre porque o FluxBox detecta que já existe um outro gerenciador de janelas 
# ativo no sistema, ou seja, o comando fluxbox --reconfigure não pode ser executado 
# enquanto outro gerenciador de janelas (como GNOME, KDE, ou outro) estiver ativo.

# Isso acontece porque o FluxBox não pode ser reconfigurado enquanto ele não está em 
# execução como o gerenciador de janelas principal, e o erro indica que ele está tentando 
# interagir com o servidor X, mas não pode, pois outro gerenciador de janelas já está 
# em execução.


        echo -e "\n${RED}$(gettext 'Failed to reconfigure FluxBox. Please check the configuration.')${NC} \n"


# Uso de return 1: O return é usado para sair de uma função e passar um código de 
# saída. Se você estiver usando isso fora de uma função, o correto seria exit 1 em vez 
# de return 1, pois return só deve ser usado dentro de funções.

       # return 1

      # exit 1  # Usa exit se não estiver em uma função, para sair do script


    }


# Após a cópia e exibição da mensagem de sucesso, o script executa fluxbox --reconfigure 
# para forçar o FluxBox a reconfigurar e aplicar o tema restaurado.



# pkill -HUP fluxbox || return 1


# Este comando solicita ao Fluxbox que recarregue suas configurações sem precisar reiniciar o ambiente gráfico.

# Alternativamente, você também pode enviar um sinal de reinicialização diretamente para o processo do Fluxbox. Para isso, use o comando:

# pkill -HUP fluxbox

# Este comando envia o sinal HUP (hang-up) para o processo do Fluxbox, fazendo com que ele recarregue suas configurações.

# Ambos os métodos vão atualizar as configurações do Fluxbox sem a necessidade de reiniciar a sessão.




else 


# Caso a reconfiguração falhe (com um código de erro diferente de 0), o script retorna um 
# erro (return 1) e a função é encerrada.


      # Falha ao restaurar o tema do FluxBox (%s).

      message=$(gettext 'Failed to restore FluxBox theme (%s).')

      echo -e "\n${RED}$(printf "$message" "$Fluxbox_Theme") ${NC} \n"

fi








}



# ----------------------------------------------------------------------------------------


# pass path to image as $1

# returns 0 if OK, 2 if image file available but path is different ($img is updated), 3 if user declines to install needed package, 1 if image cannot be found

function checkWallpaper(){

    fixed_img='' # will be inherited by background restoring functions

    [[ -n $1 ]] || { debug "$(gettext 'No image path passed to checkWallpaper()')" ; return 1; }

    local imgpath="$1" imgname found_imgpath pkg

    [[ -r "$imgpath" ]] && {

        debug "$(gettext 'Wallpaper found') $imgpath"

        return 0
    }

    imgname=${imgpath##*/}
    debug "$imgpath não encontrado, verificando se $imgname está em outro lugar no sistema..."
    found_imgpath=$(find -L "${wallpaths[@]}" -type f -name "$imgname" -print -quit 2>/dev/null) # imprimir somente o primeiro arquivo encontrado
    [[ -n $found_imgpath ]] && {
        found_imgpath=$( readlink -f "$found_imgpath" )
        debug "Encontrado $imgname em $found_imgpath"
        fixed_img=$found_imgpath # img is inherited by restoreBg(), inside restoreSettings()
        return 2
    }
    debug "Unable to find $imgname in the expected places, checking all installed packages..."
    found_imgpath=$(dpkg-query --search "*/${imgname}" 2>/dev/null) && {
        pkg=${found_imgpath%%: *}
        found_imgpath=${found_imgpath#${pkg}: }
        debug "Package $pkg includes $imgname at $found_imgpath"
        fixed_img=$found_imgpath
        return 2
    }

    debug "$(gettext 'No installed package includes') $imgname"

    pkg="${wallpaper_pkgs[$imgname]}"
    if [[ -n "${pkg}" ]] && hash bl-install >/dev/null
    then
        debug "\n  Wallpaper $imgname was not found\n  Offering to install $pkg..."
        local yad_wallpaper_q="Papel de parede necessário <b>$imgname</b> não encontrado\n Você gostaria de instalar o pacote <b>${pkg}</b> que contém esse papel de parede?\n Se não quiser instalar o pacote, você pode continuar com o papel de parede atual ou sair agora."

        yad_question "${yad_wallpaper_q}" --button='Instalar pacote':0 --button='Continuar com o papel de parede atual':2 --button="$(gettext 'Close')":1

        case $? in

        0)
            local retfile retval

            retfile="$( mktemp )"

            bl-install -f "$retfile" "$pkg"

            # sleep 0.3 # allow time for bl-install to write to $retfile (now done in bl-install)

            retval="$(<"$retfile")"

            rm "$retfile"

            if [[ "$retval" = 0 ]]
            then

                message=$(gettext 'Image package %s has been installed.')

                debug "\n $(printf "$message" "$pkg")"





                message=$(gettext 'installed %s but %s was not found')

                message1=$(gettext 'Installed package %s but could not find %s')

                message2=$(gettext 'Wallpaper %s was not found in %s')


# Detecta a distribuição


# Para verificar se está usando Debian ou uma distribuição derivada (como Ubuntu)



if grep -iq "debian" /etc/os-release || grep -iq "ubuntu" /etc/os-release; then

    echo "Este sistema é Debian ou uma distribuição derivada."



# O comando dpkg-query --listfiles "$pkg" | grep "/${imgname//./\\.}$" realiza uma 
# verificação em um pacote instalado no sistema Debian ou baseado em Debian (como o Ubuntu) 
# para listar arquivos específicos que correspondem a um nome de imagem (ou outro arquivo) 
# determinado.
# 
# Vamos quebrar o comando em partes para entender o que ele faz:
# 
# 1. dpkg-query --listfiles "$pkg"
# 
# Este comando lista todos os arquivos que foram instalados pelo pacote especificado por 
# "$pkg", onde "$pkg" é uma variável que contém o nome de um pacote instalado.
# 
#  O dpkg-query é uma ferramenta usada para consultar o banco de dados de pacotes do sistema.
#  O --listfiles faz com que o comando mostre todos os arquivos que foram instalados por 
# esse pacote.
# 
# Exemplo: Se o pacote for libc6, esse comando listará todos os arquivos que foram 
# instalados pelo pacote libc6.
# 
# 2. grep "/${imgname//./\\.}$"
# 
# Esse trecho usa o comando grep para filtrar as saídas da lista de arquivos, buscando 
# um padrão específico.
# 
#     ${imgname//./\\.}: Isso é uma substituição de string em Bash. A variável imgname 
# representa um nome de arquivo (possivelmente com a extensão .img ou outra). A expressão 
# ${imgname//./\\.} substitui todos os pontos (.) por barras invertidas (\\.), 
# essencialmente escapando os pontos. Isso é útil porque o ponto em expressões regulares 
# é um caractere especial que representa qualquer caractere, então é necessário escapá-lo 
# com uma barra invertida (\\.) para fazer uma correspondência literal de pontos.
# 
#  O grep procura por um arquivo que tenha esse nome, onde a barra invertida foi adicionada 
# para garantir que o ponto seja tratado de forma literal e não como um caractere curinga.
# 
#  O $ no final da expressão regular indica que a correspondência deve ocorrer no final do 
# nome do arquivo. Ou seja, estamos procurando por arquivos cujo nome termine exatamente 
# com o valor de imgname.
# 
# Exemplo de funcionamento:
# 
# Suponha que você tenha:
# 
#   pkg="some-package" (um pacote instalado).
#   imgname="imagem.img" (nome de um arquivo de imagem).
# 
# O comando dpkg-query --listfiles "$pkg" | grep "/${imgname//./\\.}$" irá:
# 
# Listar todos os arquivos instalados pelo pacote some-package.
# Filtrar e exibir apenas aqueles arquivos que terminam com imagem.img, onde o ponto no 
# nome foi escapado adequadamente.
# 
# Resumo:
# 
# Esse comando serve para localizar arquivos específicos em pacotes instalados, baseando-se 
# no nome de um arquivo fornecido, tratando corretamente os pontos como caracteres literais 
# e não como curingas.


                # Debian ou derivado (usando dpkg-query)

                found_imgpath=$(dpkg-query --listfiles "$pkg" | grep "/${imgname//./\\.}$") || {


                    echo "${0}: $(printf "$message" "$pkg" "$imgname")" >/&2

                    yad_warning "$(printf "$message1" "$pkg" "$imgname")"

                    debug "\n  $(printf "$message2" "$imgname" "$pkg")"

                    return 1
                }




# Verifica se é Void Linux

elif grep -iq "void" /etc/os-release; then

    echo "Este sistema é Void Linux."
    

        # Void Linux (usando xbps-query)

               found_imgpath=$(xbps-query -l "$pkg" | grep "/${imgname//./\\.}$") || {


                    echo "${0}: $(printf "$message" "$pkg" "$imgname")" >/&2

                    yad_warning "$(printf "$message1" "$pkg" "$imgname")"

                    debug "\n  $(printf "$message2" "$imgname" "$pkg")"

                    return 1
        }


# Verifica se é Fedora

elif grep -iq "fedora" /etc/os-release; then

    echo "Este sistema é Fedora."


        # Fedora (usando rpm -ql)

              found_imgpath=$(rpm -ql "$pkg" | grep "/${imgname//./\\.}$") || {


                    echo "${0}: $(printf "$message" "$pkg" "$imgname")" >/&2

                    yad_warning "$(printf "$message1" "$pkg" "$imgname")"

                    debug "\n  $(printf "$message2" "$imgname" "$pkg")"

                    return 1
        }

    
# Verifica se é Slackware

elif grep -iq "slackware" /etc/os-release; then

    echo "Este sistema é Slackware."


        # Slackware (usando pkgtool)

             found_imgpath=$(ls /var/log/packages/"$pkg" | grep "/${imgname//./\\.}$") || {


                    echo "${0}: $(printf "$message" "$pkg" "$imgname")" >/&2

                    yad_warning "$(printf "$message1" "$pkg" "$imgname")"

                    debug "\n  $(printf "$message2" "$imgname" "$pkg")"

                    return 1
        }

    
else

      echo "$(gettext 'Linux distribution not recognized.')"

fi



                if [[ "$found_imgpath" = "$imgpath" ]] # Verifique se o caminho da imagem foi alterado no novo pacote
                then

                    message=$(gettext '%s now available at original path %s')

                    debug "$(printf "$message" "$imgname" "$imgpath")"


                    return 0 # $img está correto

                else



                    message=$(gettext '%s now available but path has changed to %s')

                    debug "$(printf "$message" "$imgname" "$found_imgpath")"


                    fixed_img=$found_imgpath

                    return 2
                fi

            else

                yad_warning "$(gettext 'Package installation failed.')"


                message=$(gettext 'Image package %s: install failed.')

                debug "\n $(printf "$message" "${pkg}")"


                return 1

            fi

            ;;

        2)

            message=$(gettext 'Declined install of %s, so %s is unavailable.')

            debug "$(printf "$message" "${pkg}" "${imgname}")"

            return 3

            ;;

        1)
            exit

            ;;

        esac
    fi


    message=$(gettext 'Wallpaper %s not found')

    debug "\n  $(printf "$message" "$imgname")"


    return 1
}


# ----------------------------------------------------------------------------------------

# $1 is path to nitrogen file

function parseNitrofile(){ # get first image set in a nitrogen file
    while read -r line;do
        [[ $line = 'file='* ]] || continue
        printf '%s' "${line#file=}"
        break
    done < "$1"
}


# ----------------------------------------------------------------------------------------

# $1 is path to feh file

function parseFehfile(){ # get first image set in a feh file

    # get fields between single quotes
    while read -r line;do
        printf '%s' "${line}"
    done < <(grep -o "'[^']*'" "$1" | sed "s/'//g" 2>/dev/null)
}


# ----------------------------------------------------------------------------------------


function restoreBg(){    # $1 = $VAL from restoreSettings(), img is inherited from restoreSettings()

    case $1 in

    NITROGEN)
        restoreNitrogen  || { echo "$0: $(gettext 'failed to apply wallpaper with Nitrogen.')"   >&2; return 1; }
        ;;

    FEH)
        restoreFeh       || { echo "$0: $(gettext 'failed to apply wallpaper with feh.')"        >&2; return 1; }
        ;;

    XFDESKTOP)
        restoreXfdesktop || { echo "$0: $(gettext 'failed to apply wallpaper with xfdesktop.')"  >&2; return 1; }
        ;;

    PCMANFM)
        restorePcmanfm   || { echo "$0: $(gettext 'failed to apply wallpaper with pcmanfm.')"    >&2; return 1; }
        ;;

    esac

}


# ----------------------------------------------------------------------------------------


function restoreNitrogen(){

    local nitroimg need_edit=false

    debug "$(gettext 'Using Nitrogen to fix wallpaper.')"

    nitroimg=$(parseNitrofile "$THEMEPATH/user/${NITROFILE}")


    message=$(gettext 'failed to parse new %s')

    [[ -n $nitroimg ]] || { echo "$0: $(printf "$message" "$NITROFILE")" >&2; return 1; }


    message=$(gettext 'Image %s is set to %s')

    debug "$(printf "$message" "$nitroimg" "$THEMEPATH/user/${NITROFILE}")"



# ----------------------------------------------------------------------------------------

# Copia o arquivo de imagem da pasta $THEMEPATH/user/.config/nitrogen/

echo "
$(gettext 'Image') $nitroimg...
"

cp $THEMEPATH/user/.config/nitrogen/$(basename $nitroimg)     $nitroimg

if [ "$?" -eq "0" ];
then

      # O papel de parede $(basename $nitroimg) foi restaurado.

      message=$(gettext 'Wallpaper %s has been restored.')

      echo -e "\n${GREEN}$(printf "$message" "$(basename $nitroimg)") ${NC} \n"

else 

      # Falha ao restaurar o papel de parede $(basename $nitroimg).

      message=$(gettext 'Failed to restore wallpaper %s.')

      echo -e "\n${RED}$(printf "$message" "$(basename $nitroimg)") ${NC} \n"

fi



# https://unix.stackexchange.com/questions/15308/how-to-use-find-command-to-search-for-multiple-extensions
# https://www.shellscriptx.com/2016/12/estrutura-condicional-if-then-elif-else-fi.html

# ----------------------------------------------------------------------------------------


    checkWallpaper "$nitroimg"

    case $? in

    0)
        debug "$(gettext 'The wallpaper image') $nitroimg $(gettext 'can be used.')"

        ;;
    2)

        # A imagem do papel de parede agora pode ser encontrada em ${fixed_img}, ${HOME}/${NITROFILE} será editada após a restauração.


        message=$(gettext 'The wallpaper image can now be found in %s, %s will be edited after restoration.')

        debug "$(printf "$message" "${fixed_img}" "${HOME}/${NITROFILE}")"


        need_edit=true # O arquivo de imagem foi encontrado em um caminho diferente

        ;;
    1)

        message=$(gettext '%s cannot be found')

        debug "$(printf "$message" "$nitroimg")"

        return 1

        ;;
    3)
        debug "$(gettext 'The required package was not installed, continuing with the current wallpaper.')"

        return 0

        ;;

    esac


    # falha ao aplicar $NITROFILE

    message=$(gettext 'failed to apply %s')


    restoreFiles "$NITROFILE" || { echo "$0: $(printf "$message" "$NITROFILE")" >&2; return 1; }


    [[ $need_edit = true ]] && {


        # Substituindo $nitroimg por $fixed_img em ${HOME}/${NITROFILE}...

        message=$(gettext 'Replacing %s with %s in %s...')

        debug "$(printf "$message" "$nitroimg" "$fixed_img" "${HOME}/${NITROFILE}")"




        message=$(gettext 'failed to edit %s')

        sed -i "s/${nitroimg//'/'/'\/'}/${fixed_img//'/'/'\/'}/" "${HOME}/${NITROFILE}" || { echo "$0: $(printf "$message" "$NITROFILE")" >&2; return 1; }

        [[ $( parseNitrofile "${HOME}/${NITROFILE}" ) = "${fixed_img}" ]] || { echo "$0: $(printf "$message" "$NITROFILE")" >&2; return 1; }

    }



    # Verificar a inicialização automática de programas no Fluxbox

    # check_autostart_FluxBox



    # Restaurando o papel de parede

    nitrogen --restore 2> /dev/null


# (nitrogen:30274): GLib-GObject-CRITICAL **: 15:57:09.726: Attempting to freeze the notification queue for object GtkSettings[0x55c918403e70]; Property notification does not work during instance finalization.

# (nitrogen:30274): GLib-GObject-CRITICAL **: 15:57:09.727: Attempting to thaw the notification queue for object GtkSettings[0x55c918403e70]; Property notification does not work during instance finalization.


}

# ----------------------------------------------------------------------------------------

function restoreFeh(){

    local fehimg need_edit=false

    debug "$(gettext 'is set in')"

    fehimg=$(parseFehfile "$THEMEPATH/user/${FEHFILE}")

    [[ -n $fehimg ]] || { echo -e "\n$0: ${RED} $(gettext 'The wallpaper') $FEHFILE ${NC} \n" >&2; return 1; }

    debug "$(gettext 'has been restored.') $fehimg $(gettext 'Failed to restore wallpaper') $THEMEPATH/user/${FEHFILE}"


# ----------------------------------------------------------------------------------------

# Falta refazer essa parte

# Copia o arquivo de imagem da pasta $THEMEPATH/user/.config/Feh/

echo "
$(gettext 'Image') $fehimg...
"

cp $THEMEPATH/user/.config/Feh/$(basename $fehimg)     $fehimg

if [ "$?" -eq "0" ];
then
      echo -e "\n${GREEN}$mensagem_restaura_feh5 $(basename $fehimg) $mensagem_restaura_feh6 ${NC} \n"

else 
      echo -e "\n${RED}$mensagem_restaura_feh7 $(basename $fehimg). ${NC} \n"

fi

# ----------------------------------------------------------------------------------------


    checkWallpaper "$fehimg"

    case $? in

    0)
        debug "$(gettext 'The wallpaper image') $fehimg $(gettext 'can be used.')"

        ;;

    2)
        debug "$(gettext 'Wallpaper image now found at') $fixed_img"

        need_edit=true # O arquivo de imagem foi encontrado em um caminho diferente.

        ;;

    1)
        debug "$fehimg $(gettext 'cannot be found.')"

        return 1

        ;;

    3)
        debug "$(gettext 'The required package was not installed, continuing with the current wallpaper.')"

        return 0

        ;;

    esac



    restoreFiles "$FEHFILE" || {   echo -e "\n$0: ${RED}$(gettext 'failed to apply') $FEHFILE ${NC} \n" >&2; return 1; }

    [[ $need_edit = true ]] && {

        debug "$(gettext 'Replacing') $fehimg $(gettext 'put') $fixed_img $(gettext 'in') ${HOME}/${FEHFILE}..."

        sed -i "s/${fehimg//'/'/'\/'}/${fixed_img//'/'/'\/'}/" "${HOME}/${FEHFILE}" || { echo -e "\n$0: ${RED} $(gettext 'failed to edit') $FEHFILE ${NC} \n" >&2; return 1; }

        [[ $( parseFehfile "${HOME}/${FEHFILE}" ) = "${fixed_img}" ]] || { echo -e "\n$0: ${RED} $(gettext 'failed to edit') $NITROFILE ${NC} \n" >&2; return 1; }
    }

    source "$HOME/$FEHFILE"
}



# https://www.reddit.com/r/archlinux/comments/1y1ovn/feh_not_working_on_startup/?tl=pt-br

# ----------------------------------------------------------------------------------------


function restoreXfdesktop(){


    local ws wallpaper=$img # img é herdado de restoreSettings via restoreBg()

    ws=$(xdotool get_desktop)

    pgrep -fx "xfdesktop" -u "$USER" >/dev/null || {

        echo -e "\n$0: ${RED} $(gettext 'xfdesktop is not running.') ${NC} \n"

        return 1

    }


    debug "$(gettext 'Using xfdesktop to set wallpaper') $wallpaper $(gettext 'on the desktop') ${ws}"

    checkWallpaper "$wallpaper"


    case $? in

    0)
        debug "$(gettext 'Wallpaper image') $wallpaper $(gettext 'can be used.')"

        ;;
    2)
        debug "$(gettext 'Replacing') $wallpaper $(gettext 'put') ${fixed_img}..."

        wallpaper=$fixed_img

        ;;
    1)
        debug "$wallpaper $(gettext 'cannot be found.')"

        return 1

        ;;
    3)
        debug "$(gettext 'The required package was not installed, continuing with the current wallpaper.')"

        return 0

        ;;

    esac


    props=$(xfconf-query -c xfce4-desktop -l | grep --fixed-strings "/workspace${ws}/last-image")

    [[ -z $props ]] && {

        debug "$(gettext 'Failed to find xfdesktop property holding') /workspace${ws}/last-image"

        return 1

    }




    while read -r prop
    do
        xfconf-query -c xfce4-desktop -p "$prop" --set "$wallpaper" || {

            echo -e "\n$0: ${RED} $(gettext 'failed to set') $wallpaper $(gettext 'to') $prop ${NC} \n" >&2

            return 1
        }

    done <<< "$props"


    if hash bl-restart
    then
        bl-restart xfdesktop
    else
        xfdesktop --reload
    fi
}


# ----------------------------------------------------------------------------------------


function restorePcmanfm(){

    local re wallpaper=$img # img é herdado de restoreSettings via restoreBg()

    re='pcmanfm[[:blank:]].*--desktop'

    pgrep -fx "$re" -u "$USER" >/dev/null || {

        echo -e "\n$0: ${RED}$(gettext 'pcmanfm is not setting the wallpaper') ${NC} \n"

        return 1

    }


    debug "$(gettext 'Using pcmanfm to set wallpaper') $img"

    checkWallpaper "$wallpaper"

    case $? in
    0)
        debug "$(gettext 'Wallpaper image') ${wallpaper} $(gettext 'can be used.')"

        ;;
    2)
        debug "$(gettext 'Replacing') ${wallpaper} $(gettext 'with') ${fixed_img}..."

        wallpaper=$fixed_img

        ;;
    1)
        debug "$wallpaper $(gettext 'cannot be found')"

        return 1

        ;;
    3)
        debug "$(gettext 'Necessary package was not installed, continuing with current wallpaper.')"

        return 0

        ;;

    esac


    pcmanfm --set-wallpaper="$wallpaper" || {

        echo -e "\n$0: ${RED} $(gettext 'pcmanfm failed to set') $wallpaper $(gettext 'as wallpaper') ${NC} \n"

        return 1
    }




}


# ----------------------------------------------------------------------------------------


function restoreConky(){    # $1 = $VAL from restoreSettings()

    local conkycmds currDesktop user_conkysession saved_conkysession

    conkycmds="${1//;/$'\n'}" # only used as fallback if there is no sessionfile

    user_conkysession="$HOME/$CONKYSESSION"

    saved_conkysession="$THEMEPATH/user/$CONKYSESSION"

    # cd only applies during subshell
    (
        cd "$THEMEPATH/user" && {

            shopt -s globstar dotglob nullglob

            for i in **/*conky*.conf **/*conkyrc **/*conky
            do
                [[ -f "$i" ]] || continue

                debug "$(gettext 'Applying conky file') $i"

                restoreFiles "$i" || echo -e "\n$0: ${RED} $(gettext 'failed to apply conky file') $i ${NC} \n"  >&2

            done

            shopt -u globstar dotglob nullglob
        }
    )

    if [[ -f $saved_conkysession ]]
    then

        debug "$(gettext 'Restoring conky session file.')"

    elif [[ -n $conkycmds ]]
    then

        debug "$(gettext 'No saved conkysession file found, using commands in settings.cfg')"

        if [[ $conkycmds = 'none' ]]
        then
            debug "$(gettext 'No saved conky - removing conky session file contents.')"
            :> "$saved_conkysession"
        else
            echo "$conkycmds" > "$saved_conkysession"
        fi

    else

        echo -e "\n$0: ${RED} $(gettext 'unable to restore conky, no session information.') ${NC} \n" >&2

        return 1

    fi

    restoreFiles "$CONKYSESSION" || {

        echo -e "\n$0: ${RED} $(gettext 'failed to restore conky session') $saved_conkysession ${NC} \n" >&2

        return 1
    }


    hash bl-conky-session || return 1 # bl-conky-session should be available - it comes with bl-obthemes in bunsen-utilities

    bl-conky-session --kill-running "$user_conkysession" || { # bl-conky-session can handle old-style sessionfiles, desktops too

        echo -e "\n$0: ${RED} $(gettext 'failed to start conky session')  $user_conkysession $(gettext 'with bl-conky-session') ${NC} \n" >&2

        return 1
    }

    debug "\n  $(gettext 'Conky restored')\n"
}


# ----------------------------------------------------------------------------------------


function restoreTint2(){    # $1 = $VAL de restoreSettings()

    local tintcmds user_tintsession saved_tintsession

    tintcmds="${1//;/$'\n'}"
    user_tintsession="$HOME/$TINTSESSION"
    saved_tintsession="$THEMEPATH/user/$TINTSESSION"


# Restaurar quaisquer configurações do tint2 que foram salvas
# assumir que estão todas no diretório tint2


    [[ -d "$THEMEPATH/user/.config/tint2" ]] || {

        echo -e "\n$0: ${RED} $(gettext 'cannot restore Tint2, directory') $THEMEPATH/user/.config/tint2 $(gettext 'does not exist') ${NC} \n" >&2

        return 1
    }

    if [[ -f "$saved_tintsession" ]]
    then
        debug "$(gettext 'Restoring tint2 sessionfile.')"
    elif [[ -n $tintcmds ]]
    then
        debug "$(gettext 'No saved tintsession file found, using filepaths in settings.cfg')"
        if [[ $tintcmds = 'none' ]]
        then
            debug "$(gettext 'No saved tint2s - generating empty tint2 sessionfile.')"
            :> "$saved_tintsession"
        else
            echo "$tintcmds" > "$saved_tintsession"
        fi
    else
        echo "$0: $(gettext 'cannot restore tint2, no session information.')" >&2
        return 1
    fi

    restoreFiles  '.config/tint2' || { # restoreFiles will restore whole directory with contents

        echo "$0: $(gettext 'failed to apply directory') user/.config/tint2 $(gettext 'in') $THEMEPATH" >&2
        return 1
    }

    if hash bl-tint2-session # bl-tint2-session comes in bunsen-utilities, which bunsen-blob depends on
    then

        bl-tint2-session "$user_tintsession" || {

            echo "$0: $(gettext 'failed to start tint2 session') $user_tintsession $(gettext 'with') bl-tint2-session" >&2
            return 1
        }
    fi

    debug "\n $(gettext 'Tint2 restored')\n"

}


# ----------------------------------------------------------------------------------------


# Restaurar o Rofi ~/.config/rofi


function restoreRofi(){ 


[[ -d "$THEMEPATH/user/.config/rofi" ]] || {


        message=$(gettext 'Unable to restore Rofi... Directory %s does not exist.')

        echo -e "\n$0: ${RED} $(printf "$message" "$THEMEPATH/user/.config/rofi" ) \n ${NC}" >&2

        return 1
    }


        debug "$(gettext 'Restored Rofi...')"

        mkdir -p ~/.config/

 
        cp -r $THEMEPATH/user/.config/rofi ~/.config/  && echo -e "\n${GREEN}$(gettext 'Restored Rofi [OK]') ${NC}\n" || { # restoreFiles irá restaurar todo o diretório com o conteúdo


        message=$(gettext 'Failed to apply directory %s in %s')

        echo -e "\n$0: ${RED}$(printf "$message" "$THEMEPATH/user/.config/rofi" "$HOME/.config/" ) \n ${NC}" >&2



        return 1

        }



# Ex:

# rofi -show run -theme ~/.config/rofi/themes/denvit.rasi

# Pega o comando do processo Rofi em execução e reinicia o Rofi com o mesmo comando.



# Verifica se o Rofi está em execução e obtém o comando completo

rofi_cmd=$(ps aux | grep '[r]ofi' | awk '{print $11, $12, $13, $14, $15, $16}') # Modifique dependendo do número de parâmetros


# Se o Rofi estiver em execução

if [ -n "$rofi_cmd" ]; then


    # Matando o processo Rofi em execução

    pkill -x rofi

    echo "$(gettext 'Rofi has been closed.')"


    # Reiniciar o Rofi com o mesmo comando

    $rofi_cmd &

    # echo "Rofi foi reiniciado com o mesmo comando."

    echo "$(gettext 'Rofi has been rebooted.')"


# else

#    echo "$(gettext 'Rofi is not running.')"

fi






}


# ----------------------------------------------------------------------------------------


# Restaurar os lançadores do Plank ~/.config/plank/dock1/launchers/

function restorePlank(){ 


# Restaurar quaisquer configurações do Plank que foram salvas
# assumir que estão todas no diretório plank

    [[ -d "$THEMEPATH/user/.config/plank" ]] || {


        message=$(gettext 'Cannot restore Plank, directory %s does not exist.')

        echo -e "\n$0: $(printf "$message" "$THEMEPATH/user/.config/plank" ) ${RED} \n ${NC}" >&2


        return 1
    }



        echo -e "\n$(gettext 'Restored Plank...')\n"

        mkdir -p ~/.config/

 
        cp -r $THEMEPATH/user/.config/plank ~/.config/  && echo -e "\n${GREEN}$(gettext 'Restored Plank [OK]') ${NC}\n" || { # restoreFiles irá restaurar todo o diretório com o conteúdo


        message=$(gettext 'Failed to apply directory %s in %s')

        echo -e "\n$0: ${RED} $(printf "$message" "$THEMEPATH/user/.config/plank" "$HOME/.config/") \n ${NC}" >&2


        return 1



if [ -e $THEMEPATH/user/.config/plank/docks.ini ]; then

echo "
$THEMEPATH/user/.config/plank/docks.ini


$(gettext 'Reloading saved Plank settings...')

"




# cat $THEMEPATH/user/.config/plank/docks.ini | dconf load /net/launchpad/plank/docks/

fi

# https://wiki.archlinux.org/title/Plankb



    }



        echo -e "\n$(gettext 'Reloading Plan settings...')\n"

        pkill plank ; plank 1>/dev/null 2>/dev/null &

    

} 

# ----------------------------------------------------------------------------------------


# Restaurar as configurações do obmenu-generator

function restoreObmenuGenerator(){ 


# restaurar quaisquer configurações do obmenu-generator que foram salvas
# assumir que estão todas no diretório obmenu-generator

    [[ -d "$THEMEPATH/user/.config/obmenu-generator" ]] || {

        echo -e "\n$0: ${RED}$(gettext 'cannot restore obmenu-generator, directory') $THEMEPATH/user/.config/obmenu-generator $(gettext 'does not exist') \n ${NC}" >&2

        return 1
    }



        echo -e "\n$(gettext 'Restored obmenu-generator...')\n"

        mkdir -p ~/.config
 


        # cp -r $THEMEPATH/user/.config/obmenu-generator ~/.config

        # restoreFiles  '.config/obmenu-generator' 


        # copyDir $THEMEPATH/user/.config/obmenu-generator $HOME/.config/

        # copyDir  $obmenu_generator_PATH 
 

        cp -r $THEMEPATH/user/.config/obmenu-generator ~/.config/  && echo -e "\n${GREEN}$(gettext 'obmenu-generator restored [OK]') ${NC}\n" || { # restoreFiles irá restaurar todo o diretório com o conteúdo

        echo -e "\n$0: ${RED}$(gettext 'failed to apply directory') $THEMEPATH/user/.config/obmenu-generator $(gettext 'in') $HOME/.config/ \n ${NC}" >&2

        # return 1
    }


        echo -e "\n$(gettext 'Reloading obmenu-generator settings...')\n"

        obmenu-generator -i -p && obmenu-generator -R 1>/dev/null 2>/dev/null &

    


} 

# ----------------------------------------------------------------------------------------


# Restaura a configuração de um tema de login do SDDM


function restoreSDDM(){ 


# Verifica se o processo sddm está em execução

if pgrep -x "sddm" > /dev/null
then

    # O processo sddm está em execução.



    [[ -r "$THEMEPATH/sddm.conf" ]] || {

        echo -e "\n$0: ${RED}$(gettext 'Cannot read file') $THEMEPATH/sddm.conf ${NC} \n"  >&2

        return 1
    }


    # Verificação de arquivos idênticos

    diff -qBEbZ "$THEMEPATH/sddm.conf" "/etc/sddm.conf" >/dev/null && {


        message=$(gettext '%s and %s are identical, no need to restore.')

        debug "\n $(printf "$message" "$THEMEPATH/etc/sddm.conf" "/etc/sddm.conf") \n"


        return 0
    }



    # Solicitação de senha e cópia do arquivo


    # cp "$THEMEPATH/sddm.conf" "/etc/sddm.conf" || return 1


# Resumo
# 
# Este script verifica se o arquivo de configuração do lightdm-gtk-greeter.conf foi 
# modificado. Se os arquivos já forem idênticos, ele sai sem fazer nada. Caso contrário, 
# solicita ao usuário a senha para permitir a cópia do arquivo de tema, criando um backup 
# do arquivo anterior. Dependendo da resposta do usuário (sucesso, cancelamento ou falha), 
# o script retorna uma mensagem apropriada.



# Se os arquivos forem diferentes, o script entra em um loop solicitando que o usuário 
# insira a senha para aplicar alterações no arquivo de configuração sddm.conf.

    while true;do

        msg="$(gettext 'Please enter your password to edit the sddm.conf system file')"

# Exibe uma interface gráfica para o usuário digitar a senha. O comando sudo -S permite 
# que o script use o sudo para realizar ações com privilégios de superusuário, como 
# copiar o arquivo de configuração.
# 
# O comando cp --backup --suffix="$BKP_SFX" faz a cópia do arquivo, criando um backup do 
# arquivo original, com sufixo de backup configurado pela variável $BKP_SFX  Ex:  BKP_SFX=".$(date +"%d%m%Y-%H%M%S").blob~" .

        yad_prompt "$msg" --entry --hide-text --button="$(gettext 'Cancel')":1 --button="$(gettext 'OK')":0 | sudo -S cp --backup --suffix="$BKP_SFX" "$THEMEPATH/sddm.conf" "/etc/sddm.conf" 2>/dev/null


        # Verificação do resultado da operação

# PIPESTATUS é um array que contém o status de saída de todos os comandos em um pipeline. 
# Aqui ele é usado para verificar se o comando sudo foi executado corretamente.

        ret=( "${PIPESTATUS[@]}" )


# Verificação do sucesso ou falha da operação


        # Se a cópia do arquivo for bem-sucedida, uma mensagem de sucesso é mostrada, e a função retorna com 0:

        if [[ ${ret[1]} = 0 ]]
        then

            msg="$(gettext 'Applied: sddm.conf')"


            debug "\n$msg"

            echo -e "\n${GREEN}$msg ${NC} \n"


            ls -lh /etc/sddm.conf
 
            return 0

        # Se o usuário cancelar a solicitação de senha, o script informa que a operação foi cancelada:

        elif [[ ${ret[0]} = 1 ]]
        then

            echo -e "\n$0: ${RED} $(gettext 'Authentication canceled \n\nsddm.conf was not applied.') ${NC} \n" >&2

            return 1


        else
            
       # Se houver um erro na entrada da senha (ou outro erro), uma mensagem de erro é exibida, 
       # e o usuário é notificado de que a operação falhou:

            echo -e "\n$0: ${RED}$(gettext 'Password entry failed \n\nsddm.conf was not applied.') ${NC} \n"  >&2

            yad_warning "$msg"

        fi

    done

    


else

    echo -e "\n$0: ${RED}$(gettext 'The SDDM process is NOT running.') ${NC} \n"  >&2

fi



} 

# ----------------------------------------------------------------------------------------


# THEMEPATH e BKP_SFX são globais,
# definidos por displayBlobs() e restoreSettings() respectivamente.


# Restaurar LightDM


function restoreLightdm(){   # Precisa de sudo para restaurar lightdm-gtk-greeter.conf




# Verifica se o processo lightdm está em execução


# Como funciona:

#     pgrep -x "lightdm": Verifica se existe algum processo com o nome exato "lightdm". Se 
# encontrar, retornará um código de sucesso (0).
# 
#     > /dev/null: Ignora a saída do comando pgrep, já que estamos apenas interessados no 
# código de saída.
# 
#     if...else: Se o código de saída for 0 (processo encontrado), imprime uma mensagem 
# dizendo que o LightDM está em execução. Caso contrário, informa que o processo não está 
# em execução.


# Verifica se o processo lightdm está em execução

if pgrep -x "lightdm" > /dev/null
then

    # O processo LightDM está em execução.


    local msg ret


# Usada para verificar se um arquivo é legível (ou seja, se ele tem permissões de leitura) 
# e, caso contrário, exibir uma mensagem de erro. 


# -r "$THEMEPATH/$LDM": Verifica se o arquivo localizado no caminho "$THEMEPATH/$LDM" é 
# legível (tem permissões de leitura). O -r é um operador que verifica se o arquivo existe 
# e pode ser lido.

    [[ -r "$THEMEPATH/$LDM" ]] || {

        echo -e "\n$0: ${RED}$(gettext 'Cannot read file') $THEMEPATH/$LDM ${NC} \n"  >&2

        return 1
    }



# Faz uma comparação entre dois arquivos usando o comando diff e executa ações específicas 
# dependendo do resultado da comparação. 
# 
# 
# Explicação do código:
# 
# diff: Comando utilizado para comparar dois arquivos linha por linha.
# 
# -q: Mostra apenas se os arquivos são diferentes ou idênticos. Não exibe as diferenças detalhadas.
# -B: Ignora linhas em branco durante a comparação.
# -E: Ignora as diferenças de final de linha (caso uma tenha \n e a outra tenha \r\n ou similar).
# -b: Ignora diferenças de espaçamento em branco (como espaços extras no início ou fim de linhas).
# -Z: Ignora os caracteres de fim de linha (novamente, pode ser útil para diferenças entre plataformas).


    diff -qBEbZ "$THEMEPATH/$LDM" "$LDMDIR/$LDM" >/dev/null && {


        message=$(gettext '%s and %s are identical, no need to restore.')

        debug "\n$(printf "$message" "$THEMEPATH/$LDM" "$LDMDIR/$LDM") \n"

        echo -e "\n${GREEN}$(printf "$message" "$THEMEPATH/$LDM" "$LDMDIR/$LDM") ${NC} \n"

        return 0
    }



    while true;do

        msg="$(gettext 'Please enter your password to edit the lightdm-gtk-greeter.conf system file')"

        yad_prompt "$msg" --entry --hide-text --button="$(gettext 'Cancel')":1 --button="$(gettext 'OK')":0 | sudo -S cp --backup --suffix="$BKP_SFX" "$THEMEPATH/$LDM" "$LDMDIR/$LDM" 2>/dev/null

        ret=( "${PIPESTATUS[@]}" )

        if [[ ${ret[1]} = 0 ]]
        then

            msg="$(gettext 'Applied: lightdm-gtk-greeter.conf')"


            debug "\n  $msg"

            echo -e "\n${GREEN}$msg ${NC} \n"


            return 0


        elif [[ ${ret[0]} = 1 ]]
        then

            echo -e "\n$0: ${RED} $(gettext 'Authentication canceled \n\nlightdm-gtk-greeter.conf was not applied.') ${NC} \n" >&2

            return 1

        else
            
            echo -e "\n$0: ${RED}$(gettext 'Password entry failed \n\nlightdm-gtk-greeter.conf was not applied.') ${NC} \n"  >&2

            yad_warning "$msg"

        fi

    done


else

    echo -e "\n$0: ${RED}$(gettext 'The LightDM process is NOT running.') ${NC} \n"  >&2

fi


}

# ----------------------------------------------------------------------------------------

# Função restoreFiles

# Tem a finalidade de restaurar arquivos ou diretórios a partir de um caminho de origem 
# para um caminho de destino, provavelmente em um ambiente de backup ou configuração 
# de temas.

# $1 [$2...] são caminhos relativos passados ​​de displayBlobs()

# THEMEPATH é global definido por displayBlobs()

# Se a origem for um diretório, seu conteúdo será copiado para o diretório de usuário equivalente.


# Definição da Função


# Objetivo: Restaurar arquivos e diretórios de uma origem ($THEMEPATH/user/$i) para um destino ($HOME/$i).


function restoreFiles(){

    # Declaração de Variáveis Locais

    local src_file target_file i


# src_file é a variável que armazenará o caminho completo do arquivo ou diretório de origem.
# target_file armazenará o caminho completo de destino.
# i é usada como uma variável de iteração no loop for.


    # Loop for para Iterar sobre os Argumentos

# A função começa um loop que percorre todos os argumentos passados para a função. Cada argumento é representado por i, que pode ser um nome de arquivo ou diretório a ser restaurado.


    for i in "$@"
    do
        # Mensagem de Depuração

        debug "\n$(gettext 'Restoring') ${i}..."

# Aqui, a função debug é chamada (presumivelmente definida em outra parte do script). Ela exibe uma mensagem de depuração indicando que o arquivo ou diretório ${i} está sendo restaurado. A função gettext é usada para suportar a tradução das mensagens (presumivelmente para diferentes idiomas). O \n é usado para inserir uma nova linha antes da mensagem.


        # Definição de Caminhos de Origem e Destino


        # src_file é o caminho do arquivo ou diretório de origem, montado a partir de uma 
        # variável global chamada THEMEPATH e o diretório user, mais o nome do arquivo 
        # ou diretório i.

        src_file="$THEMEPATH/user/$i"


        # target_file é o caminho de destino onde o arquivo ou diretório será restaurado, 
        # geralmente no diretório HOME do usuário.

        target_file="$HOME/$i"



        # Verificação de Existência do Arquivo ou Diretório

        # O script verifica se o arquivo ou diretório de origem existe e executa ações 
        # diferentes com base no tipo de item (arquivo ou diretório).


         # Caso o Item Seja um Diretório

# Se src_file for um diretório (-d), ele chama a função copyDir para copiar o diretório 
# de origem para o destino. Caso a cópia falhe (o comando copyDir retorna um código de 
# erro), o comando return 1 é executado, o que interrompe a execução da função e retorna 
# um erro.

        if [[ -d $src_file ]]; then

            copyDir "$src_file" "$target_file" || return 1


        # Caso o Item Seja um Arquivo

# Se src_file for um arquivo regular (-f), ele chama a função restoreFileAbs para restaurar 
# o arquivo de origem para o destino. Caso a restauração falhe, o comando return 1 interrompe 
# a execução da função com erro.

        elif [[ -f $src_file ]]; then

            restoreFileAbs "$src_file" "$target_file" || return 1


        # Caso o Item Não Seja um Arquivo nem Diretório

# Se o src_file não for nem um arquivo nem um diretório, isso indica que o arquivo ou 
# diretório de origem não existe. O script então exibe uma mensagem de erro (usando a 
# variável RED para definir a cor da mensagem e NC para resetar a cor), informando que 
# o arquivo não foi encontrado.
# Em seguida, o return 1 é executado para interromper a execução da função com um código 
# de erro.

        else

            message=$(gettext 'File to be restored, %s does not exist.')

            echo -e "\n$0: ${RED} $(printf "$message" "$src_file") ${NC} \n"  >&2

            return 1
        fi

    done
}

# ----------------------------------------------------------------------------------------


# Copie todo o conteúdo de um diretório, recursivamente.
# $1 e $2 são caminhos absolutos dos diretórios de origem e destino.


function copyDir(){

    local src_dir target_dir i

    src_dir="$1"
    target_dir="$2"

    if [[ -f $target_dir ]]
    then

        echo "$0: $(gettext 'destination directory') $target_dir $(gettext 'it is a common file')" >&2

        return 1

    fi

    debug "\n  $(gettext 'creating directory') $target_dir"

    mkdir -p "$target_dir" || return 1

    for i in "$src_dir"/*
    do
        [[ -e "$i" ]] || continue

        if [[ -d "$i" ]]
        then

            copyDir "$i" "$target_dir/${i##*/}" || return 1

        else

            restoreFileAbs "$i" "$target_dir/${i##*/}" || return 1

        fi

    done

}

# ----------------------------------------------------------------------------------------


#    echo -e "\n$0: ${RED} ${NC} \n"


#    echo -e "\n${GREEN} ${NC} \n"


# Função chamada restoreFileAbs, que parece ser usada para restaurar arquivos de forma 
# absoluta de um local de origem para um destino, realizando verificações antes de proceder 
# com a restauração. A função verifica se o arquivo de destino é um link simbólico e se 
# o arquivo é gravável antes de realizar a cópia ou restauração.


# $1 e $2 são caminhos de arquivo de origem e destino absolutos
# BKP_SFX é global definido por restoreSettings()()


function restoreFileAbs(){


# Objetivo Geral

# A função restoreFileAbs é usada para restaurar um arquivo de origem para um arquivo de destino, mas antes de proceder com a restauração, ela realiza as seguintes verificações:

#     Se o arquivo de destino é um link simbólico e, em caso afirmativo, exibe uma mensagem de depuração.
#     Se o arquivo de destino é gravável, o que é necessário para escrever o arquivo de origem nele.
#     Se o arquivo de destino não for gravável, a restauração falha e uma mensagem de erro é exibida.

# Essa função ajuda a garantir que a restauração de arquivos seja feita apenas quando o arquivo de destino for apropriado para receber os dados (por exemplo, quando é gravável e não houver problemas com permissões).


    # Declaração de Variáveis Locais

    local src_file src_content tmpsrc target_file target_file_canon target_dir bkp_file extra_txt

    # Atribuição dos Caminhos de Origem e Destino

    src_file="$1"
    target_file="$2"

    # A função recebe dois parâmetros:

    #     O primeiro parâmetro ($1) é o caminho do arquivo de origem (src_file).
    #     O segundo parâmetro ($2) é o caminho do arquivo de destino (target_file).


# src_file:    Variável que armazenará o caminho do arquivo de origem (passado como primeiro argumento).
# target_file: Variável que armazenará o caminho do arquivo de destino (passado como segundo argumento).
# target_file_canon: Caminho canônico do arquivo de destino.


    # Obter o Caminho Canônico do Arquivo de Destino

    target_file_canon="$(readlink -f "$target_file")" # Caminho canônico

# A variável target_file_canon recebe o caminho canônico do arquivo de destino. O 
# comando readlink -f resolve o caminho real (seguindo links simbólicos) do 
# arquivo/diretório especificado em $target_file.


    # Verificação se o arquivo de destino é um Link Simbólico

    # Opção [-L ARQUIVO] 	Verdadeiro se o ARQUIVO existe e é um link simbólico. 


    # $target_file é um link simbólico, apontando para $target_file_canon


# O [[ -L "$target_file" ]]: Verifica se o arquivo de destino é um link simbólico.
#
# Se for um link simbólico, o script imprime uma mensagem de depuração utilizando a função 
# debug, que indica que $target_file é um link simbólico e aponta para o caminho canônico 
# $target_file_canon. O gettext é usado para garantir que a mensagem seja traduzida, caso 
# o sistema tenha suporte a múltiplos idiomas.

    message=$(gettext '%s is a symbolic link, pointing to %s')

    [[ -L "$target_file" ]] && debug "$(printf "$message" "$target_file" "$target_file_canon")"




    # Verificação se o arquivo de destino é gravável


    # O teste [[ -w "$target_file" ]] verifica se o arquivo de destino $target_file é gravável.

    # Opção [-w ARQUIVO] 	Verdadeiro se o ARQUIVO existe e é gravável. 

    # Essa verificação tem problema com obmenu-generator na hora de restaura os arquivos.


# O [[ -w "$target_file" ]]: Verifica se o arquivo de destino é gravável.
#
# Se o arquivo não for gravável, o script exibe uma mensagem de erro 
# (Cannot restore %s because %s is not writable.) informando que não é possível restaurar 
# o arquivo de origem no destino, porque o destino não tem permissões de gravação.
#
# A mensagem de erro é exibida no stderr (>&2), e a função retorna 1 para indicar falha.

# Verifica se um arquivo é gravável (se o script tem permissão para escrever no arquivo).

    [[ -w "$target_file" ]] || {

        # Não é possível restaurar $src_file porque $target_file não é gravável.

        message=$(gettext 'Cannot restore %s because %s is not writable.')

        echo "$0: $(printf "$message" "$src_file" "$target_file")" >&2

        return 1
    }

# A mensagem "arquivo não é gravável" geralmente indica que o script ou comando que você 
# está tentando executar não tem permissão para gravar ou modificar o arquivo especificado. 
# Isso pode ocorrer por várias razões, como:

# 1. Permissões inadequadas para o usuário ou grupo.
# 2. O arquivo está aberto em outro programa.
# 3. O sistema de arquivos está montado em modo somente leitura.


# https://www.shellscriptx.com/2016/12/estrutura-condicional-if-then-elif-else-fi.html




    target_dir="${target_file%/*}"
    mkdir -p "$target_dir" || return 1
    extra_txt=''
    grep -qF "$HOME_MARKER" "$src_file" && {
        src_content=$(< "$src_file" )
        tmpsrc="$(mktemp)" || return 1
        echo "${src_content//$HOME_MARKER/$HOME}" > "$tmpsrc"
        src_file=$tmpsrc
        extra_txt=' (home path adjusted)'
    }

    if [[ -e $target_file ]];then        # Configuração de backup primeiro

        diff -qBEbZ "$src_file" "$target_file" >/dev/null && {


            message=$(gettext '%s and %s are identical, no need to restore.')

            debug "\n  $(printf "$message" "$target_file" "${src_file}${extra_txt}")"


            return 0

        }

        needBackup "${target_file}" && {
            bkp_file="${target_file_canon}${BKP_SFX}"
            cp "$target_file" "$bkp_file" || return 1

            debug "\n  $target_file backed up to $bkp_file"

        }

        cp "$src_file" "$target_file" || return 1


        message=$(gettext '%s restored')

        debug "\n  $(printf "$message" "$target_file")"


    else

        cp "$src_file" "$target_file" || return 1

        message=$(gettext '%s did not exist, now added')

        debug "\n  $(printf "$message" "$target_file")"

    fi

    rm -f "$tmpsrc"
}






# ----------------------------------------------------------------------------------------

# Take absolute filepath (in $HOME) as $1, from restoreFileAbs().
# Check if an identical backed-up file already exists, and if not,
# search for identical file in existing saved BLOBs.
# Return 1 if found (no backup needed before overwrite),
# otherwise return 0 (do backup).

needBackup(){

    local file file_canon bkp_file path dir blobfile homefile_content blobfile_content

    file=$1

    file_canon="$(readlink -f "$file")" # canonical path if $file is symlink

    for bkp_file in "${file_canon}"*~
    do

        [[ -f $bkp_file ]] || continue

        diff -qBEbZ "$file" "$bkp_file" >/dev/null && {


            message=$(gettext '%s already has identical backup %s, no need to backup again')

            debug "\n $(printf "$message" "$file" "${bkp_file}")"


            return 1
        }

    done


    path="${file#$HOME/}"
    for dir in "$USRCONFIGPATH"/*/user "$SYSCONFIGPATH"/*/user
    do
        [[ -f $dir/$path ]] || continue
        blobfile=$dir/$path
        if grep -qF "$HOME_MARKER" "$blobfile"; then
            homefile_content=$(< "$file" )
            blobfile_content=$(< "$blobfile" )
            [[ "$homefile_content" = "${blobfile_content//$HOME_MARKER/$HOME}" ]]  && {

                debug "$file has identical copy $blobfile, no need to backup"

                return 1
            }
        else
            diff -qBEbZ "$file" "$blobfile" >/dev/null && {

                debug "$file has identical copy ${blobfile}, no need to backup"

                return 1
            }
        fi
    done
    return 0
}


# ----------------------------------------------------------------------------------------


# THEMEPATH and BKP_SFX are globals set by displayBlobs() and restoreSettings() respectively.
# dconfdir and appname passed as $1 and $2 from restoreSettings()
# dconfdir is a dconf path, not a file path.

function restoreDconf(){

    local dconfdir appname src_file bkpdir bkp_file current_state blob_state
    dconfdir=$1
    appname=$2
    src_file="$THEMEPATH/dconf/${appname// /_}"

    [[ -f $src_file ]] || {

        echo "$0: cannot find dconf config $src_file for ${appname}" >&2

        return 1
    }

    bkpdir="$HOME/.config/dconf-backups"
    bkp_file="$bkpdir/${appname// /_}${BKP_SFX}"
    current_state=$( dconf dump "$dconfdir" ) || return 1
    blob_state=$(< "$src_file" )

    [[ $current_state = "$blob_state" ]] && { # including when both are empty, ie default state

        debug "${appname}: no need to restore dconf, settings are the same."

        return 0
    }

    [[ -n $current_state ]] && {
        mkdir -p "$bkpdir" || return 1

        debug "${appname}: backing up dconf settings to $bkp_file"

        printf '%s\n' "$current_state" > "$bkp_file" || return 1

        dconf reset -f "$dconfdir" || return 1
    }

    [[ -n $blob_state ]] && {

        debug "${appname}: restoring dconf settings from $src_file"

        dconf load "$dconfdir" < "$src_file" || return 1
    }
}

# ----------------------------------------------------------------------------------------

# This function is run in displayBlobs() below
# CURRENTSESSION and NUMDIRS from getCurrent()
# DLGARR and CURRENTSESSDIR are local to displayBlobs()

function UpdateDisplayDialog(){   # list saved theme collections for yad as DLGARR
    getCurrent                    # get name of latest set BLOB config
    if (( NUMDIRS == 0 ));then    # no saved configs; go back to Intro dialog
        Intro
    fi
    local seticon themename thumbnail
    declare -A uniqnames # hide duplicate directories
    DLGARR=()
    for dir in "$USRCONFIGPATH"/* "$SYSCONFIGPATH"/* ;do
        [[ -d $dir && -e $dir/settings.cfg ]] || continue
        themename="${dir##*/}" # strip path
        themename=${themename// /_}   # replace any spaces in dir name
        [[ "${uniqnames[$themename]}" = 'found' ]] && continue
        uniqnames["$themename"]='found'
        # get name of current session, set icon for TRUE/FALSE
        if [[ $CURRENTSESSION = "$themename" ]];then
            seticon="gtk-yes"
            CURRENTSESSDIR="$dir"
        elif [[ "$dir" = "$SYSCONFIGPATH"/* ]]; then
            seticon="system"
        else
            seticon="gtk-home"
        fi
        thumbnail="$dir/$themename-thumb.jpg"
        [[ -r $thumbnail ]] || thumbnail='None'     # placeholder if no thumbnail found
        DLGARR+=( "$seticon" "<big>$themename</big>" "$thumbnail" )
    done
}

# ----------------------------------------------------------------------------------------

# This function is run in displayBlobs() below to set width and height for View dialog.
# generates DLGWIDTH and DLGHEIGHT, local to displayBlobs()

function getActiveMonitorDimensions(){
    local -a dim
    read -r -a dim < <(bl-xinerama-prop)
    DLGWIDTH=$(( dim[0] / 3 ))
    DLGHEIGHT=$(( dim[1] * 2 / 3 ))
    [[ $DLGWIDTH =~ ^[0-9]+$ ]] && [[ $DLGHEIGHT =~ ^[0-9]+$ ]] || {
        print 'Error in getActiveMonitorDimensions'
        exit 1
    }
}


# ----------------------------------------------------------------------------------------

# Check for a running background-setting daemon.
# (There should not be more than one!)

function checkBgDaemon(){
    local daemon_bgsetters
    daemon_bgsetters=('XFDESKTOP' 'PCMANFM') # If any of these are running they can set a wallpaper just by its filepath.
    for i in "${daemon_bgsetters[@]}"
    do
        case $i in
        XFDESKTOP)
            re='xfdesktop'
            ;;
        PCMANFM)
            re='pcmanfm[[:blank:]].*--desktop'
            ;;
        esac
        pgrep -fx "$re" -u "$USER" >/dev/null && {
            printf '%s' "$i"
            return 0
        }
    done
    return 1
}


# ----------------------------------------------------------------------------------------


# Esta função é executada em displayBlobs() abaixo

# global THEMEPATH é definido lá

# themename é local para displayBlobs()



restoreSettings() {


# Obtenha as configurações salvas escolhidas e restaure-as

# Conky e Tint2 serão mortos por suas funções de restauração, se chamadas.


    BKP_SFX=".$(date +"%d%m%Y-%H%M%S").blob~" # global: sufixo de backup unificado que as funções de restauração usarão

    local TAG VAL labels label columns select ret CHOICE jgmenu_sync jgmenu_sync_ob jgmenu_sync_gtk bgsetter orig_bgsetter img

    # img will be inherited by restoreBg and its children


    # pass label to be removed from restore dialog list

    unset_label(){

        local i label
        label=$1
        for i in "${!labels[@]}"; do
            [[ ${labels[i]} = "$label" ]] && {
                unset 'labels[i]'
                return 0 # first instance will be unset (there should only be one)

            }
        done

        return 1 # Rótulo não encontrado
    }


    labels=()

    declare -A values


    while read -r TAG VAL; do

        case "$TAG" in
            "[OBTHEME]"     )   labels+=("$PICKOB")       # A ordem dos "valores" da matriz associativa não está definida,
                                values["$PICKOB"]="$VAL"  # Mas o array indexado "labels" preserva a ordem de settings.cfg.
                                ;;            

            "[FLUXBOX]"     )   # FluxBox

                                labels+=("$PICKFLUXBOX")

                                values["$PICKFLUXBOX"]="$VAL"

                                ;;


            "[GTK]"         )   labels+=("$PICKGTK")
                                values["$PICKGTK"]="$VAL"
                                ;;
            "[ICONS]"       )   labels+=("$PICKICONS")
                                values["$PICKICONS"]="$VAL"
                                ;;
            "[BACKGROUND]"  )   [[ $VAL = None ]] || {
                                    labels+=("$PICKBG")
                                    values["$PICKBG"]="$VAL"
                                }
                                ;;
            "[CONKY]"       )   labels+=("$PICKCONKY")
                                values["$PICKCONKY"]="$VAL"
                                ;;
            "[TINT2]"       )   labels+=("$PICKTINT")
                                values["$PICKTINT"]="$VAL"
                                ;;

            "[DMENU]"       )   labels+=("$PICKDMENU")
                                values["$PICKDMENU"]="$VAL"
                                ;;

            "[ROFI]"       )    labels+=("$PICKROFI")
                                values["$PICKROFI"]="$VAL"
                                ;;

            "[PLANK]"       )   labels+=("$PICKPLANK")
                                values["$PICKPLANK"]="$VAL"
                                ;;

        "[obmenugenerator]" )   labels+=("$PICKobmenugenerator")
                                values["$PICKobmenugenerator"]="$VAL"
                                ;;

            "[LIGHTDM]"     )   labels+=("$PICKLDM")
                                values["$PICKLDM"]="$VAL"
                                ;;

            "[SDDM]"        )   labels+=("$PICKSDDM")

                                values["$PICKSDDM"]="$VAL"

                                ;;

            "[EXITRC]"      )   : # Ignorar configuração obsoleta
                                ;;
            "[XFILE]"       )   labels+=("$PICKX")
                                values["$PICKX"]="$VAL"
                                ;;
            "[BASHRC]"      )   labels+=("$PICKBASH")
                                values["$PICKBASH"]="$VAL"
                                ;;
            "[COMPOSITOR]"  )   labels+=("$PICKCOMP")
                                values["$PICKCOMP"]="$VAL"
                                ;;
            "[JGMENU]"      )   labels+=("$PICKJGMENU")
                                values["$PICKJGMENU"]="$VAL"
                                ;;

            # Para poder restaurar o conteúdo salvo do jgmenu (prepend.csv e append.csv) adicione, após o bloco [JGMENU]

            "[JGMENUCONT]" )    labels+=("$PICKJGMENUCONT")
                                values["$PICKJGMENUCONT"]="$VAL"
                                ;;

            '['*']'         )   TAG="${TAG#[}" # strip outside brackets
                                TAG="${TAG%]}"
                                labels+=("$TAG")
                                values["$TAG"]="$VAL"
                                ;;
            '('*')'         )   TAG="${TAG#(}" # "hidden" tags not added to labels, but may be used when restoring
                                TAG="${TAG%)}"
                                values["$TAG"]="$VAL"
                                ;;
            '')                 :
                                ;;
            *               )   

                                message=$(gettext 'Ignoring unknown value: %s in %s')

                                echo "$0: $(printf "$message" "${TAG}" "$THEMEPATH/settings.cfg")" >&2

                                ;;
        esac
    done < "$THEMEPATH/settings.cfg"


    # check if wallpaper can be restored by currently running daemon instead of original bgsetter
    img=${values[wallpaper]} # only set by recent versions of BLOB
    orig_bgsetter=${values["$PICKBG"]} # one of NITROGEN, FEH, XFDESKTOP, PCMANFM or possibly others, from settings.cfg

    if bgsetter="$(checkBgDaemon)"; then # not using nitrogen or feh

        if [[ -n $img ]]; then
            debug "$bgsetter will use image $img to draw wallpaper, set by $orig_bgsetter"
            values["$PICKBG"]="$bgsetter"
        else
            debug "$bgsetter cannot restore wallpaper without an image set in settings.cfg"
            unset_label "$PICKBG" # restore background will not be offered
        fi

    else

        debug "$(gettext 'not using a background setting daemon')"



        message=$(gettext 'can restore background %s with %s')

        debug "\n $(printf "$message" "${img:+$img}" "$orig_bgsetter")"


        case "$orig_bgsetter" in

        NITROGEN)

            hash nitrogen || {

                debug "$(gettext 'Unable to restore wallpaper: Nitrogen not found.')"

                unset_label "$PICKBG"

            }

            ;;

        FEH)

            hash feh || {

                debug "$(gettext 'Unable to restore wallpaper: Feh not found.')"

                unset_label "$PICKBG"

            }

            ;;

        *)

            message=$(gettext 'Unable to restore wallpaper set by %s')

            debug "\n $(printf "$message" "$orig_bgsetter")"

            unset_label "$PICKBG"

            ;;

        esac
    fi


# ----------------------------------------------------------------------------------------

# Tela de seleção para restaurar os arquivos

    select='TRUE'

    while true
    do
        columns=()
        for i in "${labels[@]}"
        do
            columns+=("$select" "$i")
        done

        CHOICE=$(yad "${yad_args[@]}" --center --window-icon="$ICON"  --list --checklist \
            --title="$(gettext 'Choose the settings to apply...')" \
            --button="$(gettext 'Uncheck all'):2" $CANCEL $OK \
            --height="400" --width="500" \
            --print-column=2 --separator='' \
            --column="$(gettext 'Select')" --column="$(gettext 'Settings')" "${columns[@]}" )

        ret=$?

        if (( ret == 1 )); then # Botão cancelar pressionado

            message=$(gettext 'Canceled restore of %s')

            debug "\n $(printf "$message" $themename)"

            return

        elif (( ret == 2 ));then

            select="FALSE"

            continue
        fi

        if [[ -z $CHOICE ]] ; then # Campo de entrada está vazio, então tente novamente


            yad_question "\n  $(gettext 'Make a selection...')" $EXIT $OK

            if (( $? == 1 ));then
                exit 0
            else

                select='FALSE'

                continue

            fi
        fi
        break
    done


# ----------------------------------------------------------------------------------------


    # Oferecer para sair se qualquer função de restauração falhar.

    # TODO: adicionar 'return 1' às funções conforme necessário.

    trap 'trap_error $LINENO "$FUNCNAME" "$BASH_COMMAND"' ERR

    jgmenu_sync=true
    jgmenu_sync_ob=false
    jgmenu_sync_gtk=false
    restore_gtk=false
    restore_icons=false


    # Percorra as opções selecionadas pelo usuário.

    while read -r label
    do
        VAL="${values[$label]}"
        VAL="${VAL//$HOME_MARKER/$HOME}" # HOME_MARKER é global



# O ${VAL:+} é uma expansão de parâmetro condicional no Bash, e a sua função é baseada 
# no valor da variável VAL.
# 
# Como funciona:
# 
#   Sintaxe: ${VAL:+EXPANSÃO}
# 
#   O que acontece é que o Bash verifica se a variável VAL está definida e não vazia.
# 
#     Se VAL tiver um valor (ou seja, for definida e não vazia), a expressão 
#     ${VAL:+EXPANSÃO} será expandida para o valor de EXPANSÃO.
# 
#     Se VAL for vazia ou não estiver definida, a expressão ${VAL:+EXPANSÃO} não será 
#     expandida (ou seja, será substituída por uma string vazia).



        # debug "\n $(gettext 'Restoring') $label${VAL:+ with $VAL}"

        message=$(gettext 'Restoring %s %s %s %s')

        # Mensagem de debug com substituição das variáveis

        debug "\n  $(printf "$message" "$label" "${VAL:+" "$(gettext 'with')" "$VAL}")"




        case "$label" in

            "$PICKOB"       )   [[ -n $VAL ]] && checkOBTHEME "$VAL"

                                restoreOBrc

                                jgmenu_sync_ob=true

                                ;;


            "$PICKFLUXBOX"  )   # Restaura o tema do FluxBox

                                # Chamada de restoreFluxbox() com verificação


                                # Verificar se o FluxBox está em execução antes de chamar restoreFluxbox

                                if pgrep -x "fluxbox" > /dev/null; then

                                        restoreFluxbox "$VAL"

                                    else

                                        echo -e "\n${RED}$(gettext 'FluxBox is not running. Skipping restore process.')${NC} \n"

                                        yad_warning "$(gettext 'FluxBox is not running. Skipping restore process.')"
                                fi


                                ;;


            "$PICKGTK"      )   restore_gtk="${VAL:-true}"
                                ;;
            "$PICKICONS"    )   restore_icons="${VAL:-true}"
                                ;;
            "$PICKBG"       )   restoreBg "$VAL"
                                ;;
            "$PICKCONKY"    )   restoreConky "$VAL"
                                ;;
            "$PICKTINT"     )   restoreTint2 "$VAL"
                                ;;
            "$PICKPLANK"    )   restorePlank "$VAL"
                                ;;

           # Erro aqui

           "$PICKobmenugenerator"	) restoreObmenuGenerator  "$VAL"
                                ;;


            "$PICKDMENU"    )   restoreFiles "$DMENU"
                                ;;

            "$PICKROFI"     )   
                                # $(gettext 'Rofi Menu Theme')

                                # mkdir -p ~/.config/rofi

                                # restoreFiles "$ROFI"

# ./bl-obthemes.sh: Não é possível restaurar /home/fernando/.config/bl-obthemes/teste/user/.config/rofi/config.rasi porque /home/fernando/.config/rofi/config.rasi não é gravável.
# ./bl-obthemes.sh: Ocorreu um erro on-line 10581, função de execução 'restoreSettings', comando 'return 1' Por favor, considere relatar isso aos desenvolvedores.


                                restoreRofi "$VAL"

                                ;;

            "$PICKLDM"      )   restoreLightdm
                                ;;

            "$PICKSDDM"     )   restoreSDDM
                                ;;

            "$PICKX"        )   restoreFiles "$XFILE"
                                xrdb ~/.Xresources
                                ;;
            "$PICKBASH"     )   restoreFiles "$BASHRC"
                                ;;
            "$PICKJGMENU"   )   restoreFiles "$JGMENURC"
                                jgmenu_sync=false # não há necessidade de sincronização de tema openbox ou gtk, o tema é fornecido em $JGMENURC
                                ;;

           # Isso deve permitir que você restaure os arquivos prepend.csv e append.csv do jgmenu.

           # Um usuário descuidado tentando um estilo de tema diferente pode acidentalmente apagar seus 
           # conteúdos de menu cuidadosamente personalizados! Precisaríamos adicionar mais algumas 
           # verificações e avisos para garantir que isso não acontecesse.

            "$PICKJGMENUCONT"   ) [[ -r  "$THEMEPATH/user/$JGMENUCONT1" ]] && {

                                    debug "$(gettext 'Restoring') $THEMEPATH/user/$JGMENUCONT1"

                                    restoreFiles "$JGMENUCONT1"
                                }
                                [[ -r  "$THEMEPATH/user/$JGMENUCONT2" ]] && {

                                    debug "$(gettext 'Restoring') $THEMEPATH/user/$JGMENUCONT2"

                                    restoreFiles "$JGMENUCONT2"
                                }
                                ;;



            "$PICKCOMP"     )   restoreFiles "$VAL"

                                hash bl-compositor 2>/dev/null && bl-compositor --restart || true # bl-compositor is in bunsen-pipemenus

                                ;;

            *               )   if [[ $VAL = '%dconf%'* ]] # dconf directories come prefixed with %dconf% in checkTerm (and others in future?)
                                then
                                    restoreDconf "${VAL#'%dconf%'}" "$label"
                                else
                                    restoreFiles "$VAL"
                                fi
                                ;;
        esac
    done <<< "$CHOICE"


    if [[ $restore_gtk != 'false' ]]; then # restoring GTK theme
        jgmenu_sync_gtk=true
        if [[ $restore_icons != 'false' ]]; then
            restoreGTK "$restore_gtk" "$restore_icons" # restoreGTK will restore GTK settings including icons
        else
            restoreGTK --noicons "$restore_gtk" # icon theme will be reset to current theme by restoreGTK
        fi
    else
        if [[ $restore_icons != 'false' ]]; then
            restoreIcons "$restore_icons" # only icon theme will be set
        fi
    fi


    hash jgmenu_run 2>/dev/null && [[ $jgmenu_sync = 'true' ]] && {

        if [[ $jgmenu_sync_ob = 'true' ]]
        then
            jgmenu_run init --apply-obtheme &&  debug "\n $(gettext 'jgmenu synchronized with OpenBox theme.')"

        elif [[ $jgmenu_sync_gtk = 'true' ]]
        then
            jgmenu_run init --apply-gtktheme && debug "\n $(gettext 'jgmenu synchronized with gtk theme.')"

        else
            debug "\n $(gettext 'jgmenu theme not changed.')"
        fi
    }

    trap - ERR # Remover armadilha para tratamento normal de erros

    echo "$themename" > "$CURSESSFILE"
}


# ----------------------------------------------------------------------------------------

# used in displayBlobs() below and intro()
# NEWNAME CONFIGDIR and CONFIGDIR_BKP are globals set by setName()

function saveNewBlob() {
    need_restart=( xfdesktop ) # Hack because xfdesktop sometimes gets confused after getScrot - can add others if necessary.
    setName || return 1

    debug "\n  Salvando configurações como $NEWNAME"

    saveSettings || return 1
    getScrot
    yad_prompt "As configurações foram salvas como <b>$NEWNAME</b>" --image="gtk-save" "$OK"
    if [[ -d $CONFIGDIR_BKP ]];then
        rm -rf "$CONFIGDIR_BKP"

        debug "\n  Backup temporário de $CONFIGDIR excluído.\n"

    fi
    hash bl-restart && {
        for i in "${need_restart[@]}"
        do
            if pgrep -x -u "$USER" "$i" >/dev/null ; then # avoid noisy "not running" messages from bl-restart
                bl-restart "$i"
            fi
        done
    }
}


# ----------------------------------------------------------------------------------------

# used in displayBlobs() below
# tests if every file in $1 is identical with its equivalent in $2
# (files not present in both directories are ignored)
# $1 is usually the blob theme directory and $2 is usually $HOME
# difflist is local inside displayBlobs()

function sameFiles() {


    local smalldir bigdir dir file bigdirfile file_content bigdirfile_content
    smalldir=$1
    bigdir=$2
    difflist=()

    debug "$(gettext 'Comparing') $smalldir $(gettext 'and') $bigdir"

    for dir in "$smalldir" "$bigdir"
    do
        [[ -d $dir ]] || {
            echo "$0: ${dir} $(gettext 'is not a directory.')" >&2
            return 1
        }
    done
    shopt -s globstar dotglob
    for file in "$smalldir"/**
    do
        [[ -f $file ]] || continue
        bigdirfile=${file/#$smalldir/$bigdir}
        [[ -f $bigdirfile ]] || continue
        extra_txt=''
        if grep -qF "$HOME_MARKER" "$file"; then
            file_content=$(< "$file" )
            bigdirfile_content=$(< "$bigdirfile" )
            extra_txt=" ($(gettext 'home path adjusted'))"
            [[ "${file_content//$HOME_MARKER/$HOME}" = "$bigdirfile_content" ]] || {
                debug "${file}${extra_txt} $(gettext 'is different from') $bigdirfile"
                difflist+=("$bigdirfile")
            }
        else
            diff -BEbZ "$file" "$bigdirfile" >/dev/null || {
                debug "${file} $(gettext 'is different from') $bigdirfile"
                difflist+=("$bigdirfile")
            }
        fi
    done
    shopt -u globstar dotglob
    [[ ${#difflist[@]} -eq 0 ]] && {

        debug "$(gettext 'All files in') $smalldir $(gettext 'are identical to those of') $bigdir"

        return 0
    }
    return 1
}

# ----------------------------------------------------------------------------------------


# compare 2 files, opening new terminal window if needed
# If --title is passed it will be used as title of a new terminal (if opened).
# Usage: differ [--title] firstfile secondfile

differ () {

    local title firstfile secondfile diffcmd
    if [[ $1 = '--title' ]]
    then
        title=$2
        shift 2
    fi
    firstfile=$1
    secondfile=$2
    # if a GUI diff is available, use that instead
    for gui in meld kompare diffuse
    do
        hash "$gui" 2>/dev/null && {
            "$gui" "$firstfile" "$secondfile" &
            return
        }
    done
    diffcmd=(colordiff -s -u)
    type colordiff >/dev/null 2>&1 || diffcmd=(diff -s -u)
    diffcmd+=("$firstfile" "$secondfile")
    if [[ -t 0 && -t 1 ]] # on terminal
    then
        "${diffcmd[@]}"
    else

        local termname termcmd

        [[ -n $(gettext 'Theme Manager') ]] || title="$(gettext 'Diff of') $firstfile $(gettext 'and') $secondfile"
        termname=$( readlink -f "$( which x-terminal-emulator )" )
        termname=${termname##*/}
        badterm_msg="$0: $(gettext 'cannot display file difference with new window') ${termname}."

        case $termname                                                   # Lidar com inconsistências terminais
        in
            lxterminal)
                termcmd=(lxterminal --no-remote -T "$(gettext 'Theme Manager')" -e)          # Caso contrário, o lxterminal não inicia um novo processo
                ;;
            mate-terminal.wrapper)
                termcmd=(mate-terminal --disable-factory -t "$(gettext 'Theme Manager')" -x) # mate-terminal.wrapper não suporta --disable-factory
                ;;
            tilix.wrapper)
                termcmd=(tilix --new-process -t "$(gettext 'Theme Manager')" -e)             # tilix.wrapper não suporta --new-process
                ;;
            qterminal|terminology)
                echo "$badterm_msg" >&2
                return 1
                ;;
            *)
                termcmd=(x-terminal-emulator -T "$(gettext 'Theme Manager')" -e)             # O caso normal
                ;;
        esac

        "${termcmd[@]}" bash -c '"$@"; echo -e "\n'$(gettext 'Press any key to close')'"; read -srn1' _ "${diffcmd[@]}"
    fi
}


# ----------------------------------------------------------------------------------------


########################################################################


######## Main BLOB list display function ###############################

# sets globals THEMEPATH and BKP_SFX (via restoreSettings) for restore functions


function displayBlobs(){

    local DLGWIDTH DLGHEIGHT DLGARR RET CONFIG CURRENTSESSDIR themename SYSDIRTXT TEXT difflist userfile img

    getActiveMonitorDimensions

    while true ;do

        UpdateDisplayDialog # Gera DLGARR e CURRENTSESSDIR



# Tem como traduzir a string que  possui caracteres especiais (como as aspas) usando o gettext e o yad?


# É importante garantir que as strings estejam sendo passadas corretamente. Também é uma 
# boa ideia verificar se o yad está interpretando corretamente a tradução do gettext.


# A string que você está tentando traduzir possui caracteres especiais (como as aspas), e 
# isso pode gerar problemas dependendo de como o gettext ou o yad processam essa string. 
# Tente simplificar a string, removendo as aspas escapadas


# Problema comum: gettext não funciona com aspas em alguns casos

# Se você continuar tendo problemas, uma solução alternativa seria garantir que o 
# conteúdo da tradução não inclua caracteres que precisem ser escapados quando passados 
# ao yad. Uma abordagem possível é usar variáveis intermediárias para formatar as strings 
# de forma mais clara.


translated_text=$(gettext 'Double-click the highlighted selection or use the "Enter" key, or the "Restore" button to apply the selected theme set to your desktop.')

#             --text="$(gettext 'Double-click the highlighted selection or use the \"Enter\" key, or the \"Restore\" button to apply the selected theme set to your desktop.')\n" \


# Tela que mostra os temas salvos


        CONFIG=$(yad "${yad_args[@]}" --center --window-icon="$ICON" --list --title="$(gettext 'Theme Manager')" \
            --text="$translated_text\n" \
            --separator=" " \
            --buttons-layout=center \
            --button="_$(gettext 'Create theme'):5" --button="_$(gettext 'Save current'):3" --button="_$(gettext 'Show Selected'):4" \
            --button="_$(gettext 'Restore'):0" --button="_$(gettext 'Delete'):2" \
            $HLPBTN --button="$(gettext 'Close'):1" \
            --always-print-result \
            --center --image-preview \
            --expand-column=3 \
            --column="$(gettext 'Last set'):IMG" \
            --column="$(gettext 'Configuration name')":TEXT \
            --column="$(gettext 'Screenshot')":IMG \
            "${DLGARR[@]}" \
            --width="$DLGWIDTH" --height="$DLGHEIGHT" 2>/dev/null)





# Para determinar o tamanho da tema do yad usar o bl-xinerama-prop

# --width="800" --height="500"


    # echo $?

    # Apertou CANCELAR ou ESC, então vamos sair...

    #    [ $? -ne 252 ] && break



# Esse trecho do código processa a variável chamada CONFIG, procurando por um nome de tema 
# que está encapsulado dentro de tags <big>...</big>. Dependendo do valor encontrado, ele 
# define o caminho do tema, verificando primeiro se existe no diretório do usuário e 
# depois no diretório do sistema.


        # O comando RET=$? armazena o valor de retorno do último comando executado.

        RET=$?


# Verifica se a variável CONFIG contém uma string que corresponda ao padrão 
# <big>...</big>, ou seja, algo dentro dessas tags.
#
# O trecho (.+) é uma expressão regular que captura qualquer texto dentro das tags <big> e </big>.
# Se a correspondência for bem-sucedida, o nome do tema é extraído e armazenado na variável 
# $themename com BASH_REMATCH[1].


        if [[ $CONFIG =~ '<big>'(.+)'</big>' ]];then

            themename=${BASH_REMATCH[1]}

             # Se o mesmo nome for encontrado, o diretório do usuário terá precedência.

# Verificação de diretórios para o tema:

#     O script então verifica se existe um diretório com o nome do tema em dois locais diferentes:
#         Primeiro, ele verifica no diretório de configuração do usuário ($USRCONFIGPATH/$themename).
#         Se não encontrar, verifica no diretório de configuração do sistema ($SYSCONFIGPATH/$themename).
#     Se o diretório for encontrado em qualquer um desses locais, o caminho para o tema é armazenado na variável THEMEPATH.


            if [[ -d "$USRCONFIGPATH/$themename" ]]
            then
                THEMEPATH="$USRCONFIGPATH/$themename"

            elif [[ -d "$SYSCONFIGPATH/$themename" ]]
            then
                THEMEPATH="$SYSCONFIGPATH/$themename"

            else

# Caso não encontre o tema:
#
#    Se o tema não for encontrado nem no diretório do usuário, nem no do sistema, o script 
# exibe uma mensagem de erro informando que o tema não foi encontrado, usando a função 
# gettext para internacionalização e possibilitar traduções.
#
#    Ele também chama uma função personalizada yad_fatal_error (presumivelmente para mostrar 
# um erro em uma interface gráfica, com o YAD sendo uma ferramenta para diálogos GTK).
#
#    Em seguida, o script termina com exit 1, indicando falha na execução.

                msg="$(gettext 'Cannot find theme') $themename"

                echo "$0: $msg" >&2

                yad_fatal_error "$msg"

                exit 1

            fi

        else

# Caso o padrão não seja encontrado no CONFIG:
#
#    Se a variável CONFIG não contiver o padrão esperado (<big>...</big>), o script imprime 
# uma mensagem de erro dizendo que o valor retornado pela função displayBlobs é estranho, 
# indicando que o formato de CONFIG não é o esperado.
#
#    Isso é exibido com uma cor vermelha ($RED) para destacar o erro.
#
#    Em seguida, o script termina com exit 1, indicando falha na execução.

            echo -e "\n$0: ${RED}$(gettext 'The displayBlobs function returned a strange value.') $CONFIG ${NC} \n" >&2

            exit 1

        fi



        case $RET in

            0)  sameFiles "$CURRENTSESSDIR/user" "$HOME" || {
                    while true; do
                        if [[ -d $CURRENTSESSDIR ]]; then
                            TEXT="Você pode ter modificado a aparência da sua área de trabalho desde que ela foi salva como <b>${CURRENTSESSION}</b>.
Esses arquivos agora são diferentes:

 ${difflist[*]/%/\\n}
Você deseja salvar sua sessão atual antes de aplicar <b>${themename}</b>?"
                            yad_question "$TEXT" --button="$(gettext 'Save settings first')":2 --button="$(gettext 'No, apply now')":0 --button="$(gettext 'See differences')":3 --button="$(gettext 'Cancel')":1
                        else
                            TEXT="Parece que você não salvou a aparência atual da sua área de trabalho.
Você deseja salvar sua sessão atual antes de aplicar <b>${themename}</b>?"

                            yad_question "$TEXT" --button="$(gettext 'Save settings first')":2 --button="$(gettext 'No, apply now')":0 --button="$(gettext 'Cancel')":1

                        fi

                        case $? in

                            0)  
                                # Alguns arquivos de usuário foram alterados, mas mesmo assim o $themename foi restaurado.

                                message=$(gettext 'Some user files were changed, but %s was still restored.')

                                debug "\n $(printf "$message" $themename)"

                                break

                            ;;

                            1)

                                # Restauração cancelada de $themename

                                message=$(gettext 'Restore canceled for %s')

                                debug "\n $(printf "$message" $themename)"

                                continue 2

                            ;;

                            2)

                                # Salvando as configurações atuais da área de trabalho antes de restaurar $themename

                                message=$(gettext 'Saving current desktop settings before restoring %s')

                                debug "\n $(printf "$message" $themename)"


                                saveNewBlob || debug "Current settings not saved."

                                break

                            ;;

                            3)
                                debug "\n $(gettext 'Showing file differences')"

                                for userfile in "${difflist[@]}"; do

                                    differ --title "$(gettext 'Changes to user files')" "$CURRENTSESSDIR/user/${userfile#$HOME/}" "$userfile"

                                done

                            ;;

                        esac
                    done
                }


#                SAVED="$THEMEPATH/LISTMSG.txt"
#                TEXT="These configs saved as $CONFIG can be restored:\n\n"
#                TEXT="$TEXT$(< "$SAVED")"
#                yad_prompt "$TEXT" || continue


                # Restaurando o tema $themename

                message=$(gettext 'Restoring theme %s')

                debug "\n $(printf "$message" $themename)"


                restoreSettings

                ;;


            1)  
                clear

                exit 0

                ;;


            2)  if [[ ! $CONFIG ]];then

                    if yad_prompt "$(gettext 'Make a selection before attempting to delete')" "$EXIT" "$OK"
                    then
                        continue
                    else
                        exit 0
                    fi
                fi



# O comportamento do gettext depende de como a string é passada para o sistema. Por padrão, 
# o gettext traduz apenas o texto literal da string. Ou seja, se você usar uma string que 
# contenha código HTML, ele não traduz o conteúdo dentro das tags HTML. 


                SYSDIRTXT=$(gettext "Sorry, the default system theme <b>%s</b> cannot be deleted." "$themename")

                if [[ "${THEMEPATH%/*}" = "$SYSCONFIGPATH" ]]
                then

                    yad_warning "$SYSDIRTXT"

                    continue

                fi



# A string "Delete saved settings <b>%s</b>\n and screenshot?" contém o placeholder %s, 
# que será substituído por "$THEMEPATH". Isso deve ser feito passando a variável como 
# argumento separado para o gettext depois da string.


                # Excluir configurações salvas <b>$THEMEPATH</b>\n e captura de tela?

                TEXT=$(gettext "Delete saved settings <b>%s</b>\n and screenshot?" "$THEMEPATH")

                if yad_prompt "$TEXT" --button="$(gettext 'Cancel')":1 --button="$(gettext 'OK')":0
                then
                    rm -rf "$THEMEPATH"

                    debug "\n  $(gettext "%s DELETED" "$themename")"


                    if [[ $(< "$CURSESSFILE") = "$themename" ]];then

                        :> "$CURSESSFILE"

                    fi
                fi

                ;;


            3)  saveNewBlob || debug "$(gettext 'Settings not saved.')"

                ;;


            4)  # Mostrar captura de tela no visualizador de imagens

                if [[ -n $themename ]];then

                    if [[ -r "$THEMEPATH/${themename}.jpg" ]]; then
                        img="$THEMEPATH/${themename}.jpg"

                    elif [[ -r "${THEMEPATH%/*}/${themename}.jpg" ]]; then
                        img="${THEMEPATH%/*}/${themename}.jpg"

                    else

                        # Nenhuma captura de tela ${themename}.jpg encontrada

                        message=$(gettext "No screenshot %s.jpg found")

                        echo -e "$0: \e[1;31m\n$(printf "$message" ${themename})\n\e[0m" >&2


                        continue

                    fi



# ----------------------------------------------------------------------------------------


# Filtra o conteudo dos arquivos


# Verificar se o arquivo $THEMEPATH/user/.gtkrc-2.0 ou $THEMEPATH/user/.config/gtk-3.0/settings.ini existe



if [ -e "$THEMEPATH/user/.gtkrc-2.0" ]; then

arquivo="$THEMEPATH/user/.gtkrc-2.0"


elif [ -e "$THEMEPATH/user/.config/gtk-3.0/settings.ini" ]; then

arquivo="$THEMEPATH/user/.config/gtk-3.0/settings.ini"

fi



if [ -e "$arquivo" ] ; then



# Mostra o papel de parede usado no tema

if [ -e "$THEMEPATH/user/.config/nitrogen/bg-saved.cfg" ]; then

papel_de_parede=$(cat $THEMEPATH/user/.config/nitrogen/bg-saved.cfg | grep file | cut -d= -f2)

elif [ -e "$THEMEPATH/user/.fehbg" ]; then

papel_de_parede=$(grep "feh" $THEMEPATH/user/.fehbg | awk '{print $4}' | sed "s/'//g" )

fi



if [ -e "$THEMEPATH/user/.config/plank/docks.ini" ];then

tema_plank=$(cat $THEMEPATH/user/.config/plank/docks.ini | grep theme | cut -d= -f2 | sed "s/'//g")

fi




if [ -e "$THEMEPATH/user/.fluxbox/init" ];then


# Para filtrar o tema do Fluxbox a partir do arquivo ~/.fluxbox/init, você pode usar o 
# comando grep para encontrar a linha que contém session.styleFile:, que é onde o caminho 
# para o tema atual do Fluxbox é armazenado.

# Fluxbox_Theme=$(cat $THEMEPATH/user/.fluxbox/init | grep "session.styleFile:" | awk '{print $2}')

# cat ~/.fluxbox/init | grep "session.styleFile:" | awk '{print $2}'

# Explicação do comando:
# 
#     cat ~/.fluxbox/init: Exibe o conteúdo do arquivo ~/.fluxbox/init.
#     grep "session.styleFile:": Filtra a linha que contém session.styleFile:, onde o caminho do tema é armazenado.
#     awk '{print $2}' ou cut -d ' ' -f 2: Extrai e exibe o caminho do arquivo do tema, que está após o session.styleFile:.


Fluxbox_Theme=$(cat $THEMEPATH/user/.fluxbox/init | grep "session.styleFile:" | awk '{print $2}' | sed 's#.*/##')


# cat ~/.fluxbox/init | grep "session.styleFile:" | awk '{print $2}' | sed 's#.*/##'

# Explicação:

#     cat ~/.fluxbox/init: Mostra o conteúdo do arquivo de configuração.
#     grep "session.styleFile:": Filtra a linha que contém a configuração do tema.
#     awk '{print $2}': Pega o segundo campo (o caminho completo do arquivo de estilo).
#     sed 's#.*/##': Remove o caminho do arquivo, deixando apenas o nome do tema (tudo após a última barra /).

# Com isso, você terá apenas o nome do tema configurado no Fluxbox.



fi



# Filtra

gtk_theme=$(cat "$arquivo" | grep gtk-theme-name        | cut -d= -f2 | sed 's/"//g')
Icon_theme=$(cat "$arquivo" | grep gtk-icon-theme-name   | cut -d= -f2 | sed 's/"//g')
Source=$(cat "$arquivo" | grep gtk-font-name         | cut -d= -f2 | sed 's/"//g')
Course_theme=$(cat "$arquivo" | grep gtk-cursor-theme-name | cut -d= -f2 | sed 's/"//g')
Course_size=$(cat "$arquivo" | grep gtk-cursor-theme-size | cut -d= -f2 | sed 's/"//g')
Openbox_Theme=$(grep -m1 "<name>" $OLDRCFILE  | sed 's|<name>||g' | sed 's|</name>||g' | sed 's| ||g')






# ----------------------------------------------------------------------------------------

# Tela de login (tema)


# Aspas ao redor das variáveis: Sempre que você usar variáveis dentro de comandos ou 
# comparações, é uma boa prática colocar as variáveis entre aspas ("$variavel"), para 
# garantir que o valor da variável seja interpretado corretamente, especialmente se ela 
# contiver espaços ou caracteres especiais.


# ----------------------------------------------------------------------------------------

# Tela de login do LightDM


if [ "$tela_de_login" == "LightDM Theme" ]; then



    # O código a ser executado se a variável for igual a "LightDM Theme"

if [ -f "$THEMEPATH/$LDM" ]; then


    # O arquivo existe.

    tela_de_login_theme=$(cat "$THEMEPATH/$LDM" | grep "theme-name" | cut -d= -f2 | sed 's/ //g')

    # Os espaços no valor do tema acima serão removidos.


# Para verifica se a variável "$tela_de_login_theme" não está vazia.

if [ -n "$tela_de_login_theme" ]; then

    # A variável "$tela_de_login_theme" não é nula, executando o código.


    # tela_login_theme="$(gettext 'Login screen (SDDM theme)'): $tela_de_login_theme"

    tela_login_theme="$(gettext 'Login Screen Theme (LightDM)'):\t $tela_de_login_theme" 

    # echo "$tela_de_login_theme"

fi



fi



# Verificar se o tema do LightDM esta instalado no sistema


# Verificar se "/usr/share/themes/$tela_de_login_theme" não está vazio e se o diretório existe

# Isso vai garantir que você não tente verificar um diretório vazio ou inexistente.

if [ -n "/usr/share/themes/$tela_de_login_theme" ] && [ -d "/usr/share/themes/$tela_de_login_theme" ]; then


        message=$(gettext "The directory %s exists.")

        echo -e "\n${GREEN}$(printf "$message" "/usr/share/themes/$tela_de_login_theme") ${NC} \n"


        ls -lh "/usr/share/themes/" | grep -w $tela_de_login_theme$


else

        message=$(gettext "The directory %s does not exist.")

        echo -e "\n${RED}$(printf "$message" "/usr/share/themes/$tela_de_login_theme") ${NC} \n" >&2



    if [[ "$tela_de_login_theme" == "BL-Lithium" ]]; then


echo "O BL-Lithium é um tema popular para o LightDM, e você pode encontrá-lo em 
repositórios online, como o GitHub. Para baixar e instalar o tema BL-Lithium para 
o LightDM

Vá até o repositório do tema BL-Lithium no GitHub: BL-Lithium no GitHub https://github.com/BunsenLabs/bunsen-themes


Instalar o tema:

Após baixar o tema, copie a pasta do tema para o diretório de temas do LightDM. O 
diretório padrão de temas é geralmente /usr/share/themes/, mas você pode verificar qual 
diretório é adequado para o seu sistema.

Para copiar o tema para o diretório correto, use o seguinte comando:

sudo cp -r BL-Lithium /usr/share/themes/


Configurar o LightDM para usar o novo tema:

Agora, edite o arquivo de configuração do LightDM para usar o tema BL-Lithium. O arquivo 
de configuração geralmente está localizado em /etc/lightdm/lightdm-gtk-greeter.conf.

Abra o arquivo de configuração com um editor de texto, como o nano:

sudo nano /etc/lightdm/lightdm-gtk-greeter.conf

Modifique a configuração:

No arquivo, encontre a linha greeter-theme e altere para o seguinte:

greeter-theme = BL-Lithium


Reinicie o LightDM:

Após salvar as alterações no arquivo de configuração, reinicie o LightDM para aplicar 
o novo tema:

Debian:

    sudo systemctl restart lightdm

Após isso, o BL-Lithium será usado como o tema do seu LightDM.

"

    fi

# https://github.com/orgs/BunsenLabs/repositories?q=themes
# https://github.com/BunsenLabs/bunsen-themes


fi





fi


# ----------------------------------------------------------------------------------------


# Tela de login do SDDM


if [ "$tela_de_login" == "SDDM Theme" ]; then

    # O código a ser executado se a variável for igual a "SDDM Theme"


if [ -f "$THEMEPATH/sddm.conf" ]; then

    # O arquivo existe.


    tela_de_login_theme=$(cat $THEMEPATH/sddm.conf | grep "Current=" | cut -d= -f2)



# Para verifica se a variável "$tela_de_login_theme" não está vazia.

if [ -n "$tela_de_login_theme" ]; then

    # A variável "$tela_de_login_theme" não é nula, executando o código.


    # tela_login_theme="$(gettext 'Login screen (SDDM theme)'): $tela_de_login_theme"

    tela_login_theme="$(gettext 'Login Screen Theme (SDDM)'):\t $tela_de_login_theme" 

    # echo "$tela_de_login_theme"

fi



fi




# O operador -f verifica se o caminho fornecido (/etc/sddm.conf) é um arquivo regular 
# (não um diretório ou outro tipo de arquivo especial).

if [ -f "/etc/sddm.conf" ]; then


# Armazenar o diretório obtido no arquivo de configuração

theme_dir=$(cat /etc/sddm.conf | grep "ThemeDir=" | cut -d= -f2)




# Para garantir que um bloco de código só seja executado se a variável $theme_dir não 
# for nula, você pode usar o operador -n, que verifica se a variável não está vazia. 


if [ -n "$theme_dir" ]; then

    # A variável $theme_dir não é nula, executando o código.




# Verificar se "$theme_dir/$tela_de_login_theme" não está vazio e se o diretório existe

# Isso vai garantir que você não tente verificar um diretório vazio ou inexistente.


if [ -n "$theme_dir/$tela_de_login_theme" ] && [ -d "$theme_dir/$tela_de_login_theme" ]; then


        message=$(gettext "The directory %s exists.")

        echo -e "\n${GREEN}$(printf "$message" "$theme_dir/$tela_de_login_theme")  ${NC} \n"


        ls -lh "$theme_dir" | grep -w $tela_de_login_theme$


else

        message=$(gettext "The directory %s does not exist.")

        echo -e "\n${RED}$(printf "$message" "$theme_dir/$tela_de_login_theme") ${NC} \n" >&2

        # return 1



    if [[ "$tela_de_login_theme" == "maldives" ]]; then


        echo "
$(gettext 'Login Screen Theme (SDDM)'): $tela_de_login_theme

Você pode baixar o tema Maldives para o SDDM (Simple Desktop Display Manager) diretamente do repositório do autor do tema.

https://github.com/ArtemSmaznov/SDDM-themes

Homepage: https://github.com/sddm/sddm


Após o download, descompacte o arquivo ZIP.

    Mover para o diretório do SDDM:

        Os temas do SDDM geralmente ficam armazenados no diretório /usr/share/sddm/themes ou em ~/.themes. Mova a pasta do tema extraída para um desses diretórios.

    Para mover para o diretório /usr/share/sddm/themes, você precisará de permissões de administrador:

sudo mv caminho/para/pasta/Maldives /usr/share/sddm/themes/

Selecionar o tema no SDDM:

    Para aplicar o tema, edite o arquivo de configuração do SDDM:

sudo nano /etc/sddm.conf

    Adicione ou altere a linha Current para o nome do tema:

[Theme]
Current=Maldives

Reiniciar o SDDM:

    Após salvar o arquivo de configuração, reinicie o SDDM para aplicar o novo tema:

    sudo systemctl restart sddm

Isso deve aplicar o tema Maldives no SDDM da sua máquina!


Para visualizar (pré-visualizar) um tema do SDDM sem precisar reiniciar o sistema ou o 
gerenciador de exibição (SDDM). Isso permite que você veja como o tema ficará na tela de 
login de forma rápida.


sddm-greeter --test-mode --theme /usr/share/sddm/themes/maldives

"


# Explicação do comando:
# 
# 
# sddm-greeter --test-mode --theme /usr/share/sddm/themes/maldives
# 
# 
# sddm-greeter: Este é o programa responsável por renderizar a tela de login do SDDM. Ele 
# é a parte gráfica do SDDM que exibe o tema de login.
# 
# --test-mode: Este modo faz o SDDM greeter (a tela de login) rodar em modo de teste, sem 
# realmente iniciar a sessão de login. Ele exibe a tela de login, mas não a aplica 
# permanentemente até que você a configure corretamente.
# 
# --theme /usr/share/sddm/themes/maldives: Especifica o caminho para o tema que você quer 
# pré-visualizar. Nesse caso, o tema é o "maldives" e está localizado em 
# /usr/share/sddm/themes/maldives.
# 
# 
# O que o comando faz?
# 
# Esse comando faz com que o SDDM greeter abra em uma janela de teste com o tema 
# especificado (no exemplo, o tema "sober"). Ele não aplica permanentemente o tema no 
# SDDM, mas é útil para você verificar se o tema está funcionando corretamente e se ele 
# tem a aparência que você deseja. Se gostar do resultado, você pode configurar o SDDM 
# para usar esse tema permanentemente.
# 
# 
# Observação:
# 
# O comando sddm-greeter pode precisar ser executado com permissões de superusuário 
# (sudo), dependendo do seu sistema.



    fi




fi


fi


fi



fi




# ----------------------------------------------------------------------------------------


# Comando para executar apenas quando a variável "$tela_login_theme"  não estiver vazia.

if [ -n "$tela_login_theme" ]; then

    $tela_login_theme


fi



# ----------------------------------------------------------------------------------------


# Criar uma função com base no tema estabelecido verifica se os itens estão instalado no 
# sistema e caso falso indica para o usuário os links dos sites na internet para baixar 
# os itens do tema correspondente.

message=$(gettext "Check theme %s")

echo -e "\n$(printf "$message" "${themename}") \n"


                                       # Verificar a inicialização automática de programas no OpenBox

                                       # check_autostart_OpenBox


                                       # Verificar a inicialização automática de programas no Fluxbox

                                       # check_autostart_FluxBox



# ----------------------------------------------------------------------------------------


# Verifica a existência do papel de parede


papel_de_parede1="$papel_de_parede"


# Definir o nome do papel de parede

papel_de_parede="$(basename "$papel_de_parede")" # Apenas o nome, sem o caminho

# papel_de_parede="Chaves.png"


# Caminhos das pastas onde o papel de parede pode estar

pasta_sistema="/usr/share/backgrounds"

pasta_usuario="$HOME/Imagens"



# Função para verificar se o papel de parede existe em uma das pastas específicas

verificar_papel_de_parede() {

    pasta=$1

    # Usar o comando find para procurar o papel de parede na pasta

    resultado=$(find "$pasta" -type f -iname "$papel_de_parede")


    # Verificar se o papel de parede foi encontrado

    if [ -z "$resultado" ]; then


        # Se não encontrar, retorna falso

        message=$(gettext "Wallpaper %s NOT found.")

        echo -e "\n${RED}$(printf "$message" "'$papel_de_parede'") ${NC} \n" >&2

        return 1

    else


        # Se encontrar, exibe a mensagem de sucesso e encerra a função

        message=$(gettext "Wallpaper %s found in: %s")

        echo -e "\n${GREEN}$(printf "$message" "'$papel_de_parede'" "$(dirname $resultado)") ${NC} \n"


        ls -lh "$resultado"


        # exit  # Encerra a função, não verifica as próximas pastas

        return 0

    fi
}




# Usar um laço para verificar as pastas

for pasta in "$pasta_sistema" "$pasta_usuario"; do

    verificar_papel_de_parede "$pasta"


done



# Se houve erro, exibe a mensagem de erro ao final

# Se chegou até aqui, significa que o papel de parede não foi encontrado em nenhuma das pastas


# echo -e "\n${RED}Papel de parede '$papel_de_parede' NÃO encontrado em nenhuma das pastas verificadas.${NC} \n" >&2




# ----------------------------------------------------------------------------------------

# Verifica tema de ícone se esta instalado no sistema

# Caminhos das pastas

pasta_sistema="/usr/share/icons"
pasta_usuario="$HOME/.icons"


# Função para verificar se o tema existe em uma pasta específica

check_icon_theme() {


    # Verifica se o tema existe nas pastas

    # Se o tema for encontrado, imprime o nome do tema


    if [ -d "$pasta_sistema/$Icon_theme/" ] || [ -d "$pasta_usuario/$Icon_theme/" ]; then

    # Inicializa a variável caminho como vazia

    caminho=""

    # Verificar se a pasta do sistema contém algo

    if ls "$pasta_sistema/$Icon_theme" > /dev/null 2>&1; then

        caminho="$pasta_sistema/$Icon_theme"

    fi

    # Verificar se a pasta do usuário contém algo

    if ls "$pasta_usuario/$Icon_theme" > /dev/null 2>&1; then

        caminho="$pasta_usuario/$Icon_theme"
    fi

       caminho=$(dirname "$caminho")

    # Explicação: 

    # Ex: /usr/share/themes/Clearlooks

    # dirname: Retorna o diretório pai de um caminho fornecido.
    # No exemplo acima, ele removeria o nome Clearlooks e retornaria o caminho /usr/share/themes.


       message=$(gettext "The %s icon theme is installed on: %s")

       echo -e "\n${GREEN}$(printf "$message" "'$Icon_theme'" "$caminho") ${NC} \n"


       ls -lh "$caminho" | grep -w $Icon_theme$


       # -w: Garante que o grep só retornará correspondências exatas de palavras. Isso evita que o grep encontre resultados parciais (por exemplo, Clearlooks-3.4).

    else

        message=$(gettext "The %s icon theme is NOT installed.")

        echo -e "\n${RED}$(printf "$message" "'$Icon_theme'") ${NC} \n" >&2


    if [[ "$Icon_theme" == "elementary-xfce" ]]; then

        echo "
Tema de ícones: elementary-xfce

O elementary-xfce é um tema de ícones baseado no estilo do sistema elementaryOS, 
mas projetado para ser usado em ambientes de desktop como o XFCE.

Para instalar, você pode baixar o pacote do tema de ícones a partir de:

    elementary-xfce no GitHub      https://github.com/elementary/icons
    elementary-xfce no GNOME-Look

"

    fi



    fi





}



check_icon_theme


# ----------------------------------------------------------------------------------------


# Verifica tema Gtk se esta instalado no sistema

# Caminhos das pastas

pasta_sistema="/usr/share/themes"
pasta_usuario="$HOME/.themes"


# Função para verificar se o tema existe em uma pasta específica

check_gtk_theme() {



    # Se o tema for encontrado, imprime o nome do tema


    # Verifica se o tema existe nas pastas

    # Verifica se o subdiretório 'cursors' existe dentro do tema


    if [ -d "$pasta_sistema/$gtk_theme" ] || [ -d "$pasta_usuario/$gtk_theme" ]; then

    # Inicializa a variável caminho como vazia

    caminho=""

    # Verificar se a pasta do sistema contém algo

    if ls "$pasta_sistema/$gtk_theme" > /dev/null 2>&1; then

        caminho="$pasta_sistema/$gtk_theme"

    fi


    # Verificar se a pasta do usuário contém algo

    if ls "$pasta_usuario/$gtk_theme" > /dev/null 2>&1; then

        caminho="$pasta_usuario/$gtk_theme"
    fi

       caminho=$(dirname "$caminho")

    # Explicação: 

    # Ex: /usr/share/themes/Clearlooks

    # dirname: Retorna o diretório pai de um caminho fornecido.
    # No exemplo acima, ele removeria o nome Clearlooks e retornaria o caminho /usr/share/themes.


        message=$(gettext "The Gtk theme %s is installed on: %s")

        echo -e "\n${GREEN}$(printf "$message" "'$gtk_theme'" "$caminho") ${NC} \n"


       ls -lh "$caminho" | grep -w $gtk_theme$

       # -w: Garante que o grep só retornará correspondências exatas de palavras. Isso evita que o grep encontre resultados parciais (por exemplo, Clearlooks-3.4).


    else

        message=$(gettext "Gtk theme %s is NOT installed.")

        echo -e "\n${RED}$(printf "$message" "'$gtk_theme'") ${NC} \n" >&2


    if [[ "$gtk_theme" == "Adwaita" ]]; then

        echo "
Tema GTK: Adwaita

O tema Adwaita é o tema padrão do GNOME e vem com muitas distribuições Linux que utilizam 
o GNOME como ambiente de desktop. Caso você queira baixar ou instalar o tema, ele geralmente 
já está disponível no repositório da sua distribuição.

Se não tiver, você pode baixar no seguinte link:

    Adwaita no GNOME-Look
"

    fi



    fi




}



check_gtk_theme 


# ----------------------------------------------------------------------------------------

# Para verificar se a Fonte está instalada


# Não esta pegando o nome completo da fonte.


# Nome da fonte a ser verificado (substitua pelo nome da fonte desejada)

fonte=$(echo "$Source" | cut -d' ' -f1)  # Substitua pelo nome exato da fonte (pode ser parcial)

# Usa o comando fc-list para verificar se a fonte está instalada

resultado=$(fc-list | grep -i "$fonte")

# Verifica se a fonte foi encontrada

if [ -z "$resultado" ]; then


    message=$(gettext "The font %s is NOT installed on the system.")

    echo -e "\n${RED}$(printf "$message" "'$fonte'") ${NC} \n" >&2


if [[ "$fonte" == "Sans" ]]; then

        echo "
A fonte Sans (geralmente uma variação de fontes como DejaVu Sans ou Liberation Sans) é 
bastante comum em distribuições Linux.

No caso de fontes no Linux, você pode instalar pacotes como:

    sudo apt install -y ttf-dejavu

    Ou, para mais opções de fontes, consulte o repositório de pacotes da sua distribuição.
"

# $ fc-list | grep Sans-Regular

# fc-list | grep LiberationSans-Regular.ttf
# /usr/share/fonts/TTF/liberation/LiberationSans-Regular.ttf: Liberation Sans:style=Regular


    fi


else

    message=$(gettext "The font %s is installed on the system.")

    echo -e "\n${GREEN}$(printf "$message" "'$fonte'") ${NC} \n"

fi


# ----------------------------------------------------------------------------------------

# Verifica se o tema do curso esta instalado no sistema

# $HOME/.icons/Qogir/cursors/


# Nome do tema a ser verificado (substitua pelo nome do tema desejado)

tema="$Course_theme"  # Substitua  pelo nome do tema que você deseja verificar


# Caminhos das pastas onde o tema pode estar

pasta_sistema="/usr/share/icons"
pasta_usuario="$HOME/.icons"


# Função para verificar se o tema existe em uma pasta específica

verificar_tema_do_curso() {


    # Verifica se o tema existe nas pastas

    # Verifica se o subdiretório 'cursors' existe dentro do tema


    if [ -d "$pasta_sistema/$tema/cursors" ] || [ -d "$pasta_usuario/$tema/cursors" ]; then

    # Inicializa a variável caminho como vazia

    caminho=""

    # Verificar se a pasta do sistema contém algo

    if ls "$pasta_sistema/$tema/cursors" > /dev/null 2>&1; then

        caminho="$pasta_sistema/$tema"

    fi


    # Verificar se a pasta do usuário contém algo

    if ls "$pasta_usuario/$tema/cursors" > /dev/null 2>&1; then

        caminho="$pasta_usuario/$tema"
    fi

       caminho=$(dirname "$caminho")

    # Explicação: 

    # Ex: /usr/share/themes/Clearlooks

    # dirname: Retorna o diretório pai de um caminho fornecido.
    # No exemplo acima, ele removeria o nome Clearlooks e retornaria o caminho /usr/share/themes.


        message=$(gettext "The course theme %s is installed on: %s")

        echo -e "\n${GREEN}$(printf "$message" "'$tema'" "$caminho") ${NC} \n"


       ls -lh "$caminho" | grep -w $tema$

       # -w: Garante que o grep só retornará correspondências exatas de palavras. Isso evita que o grep encontre resultados parciais (por exemplo, Clearlooks-3.4).

    else

        message=$(gettext "Course theme %s is NOT installed.")

        echo -e "\n${RED}$(printf "$message" "'$tema'") ${NC} \n" >&2


    if [[ "$tema" == "Qogir" ]]; then
        echo "
Tema do curso: Qogir

Qogir é um tema GTK moderno que pode ser usado com ambientes como o GNOME ou XFCE. Você pode baixá-lo em:

    Qogir no GitHub      https://github.com/vinceliuice/Qogir-theme
    Qogir no GNOME-Look
"

    fi


    fi



}


# Verifica nas duas pastas (do sistema e do usuário)

verificar_tema_do_curso




# Edita o arquivo index.theme
# com o nano por exemplo
# sudo nano /usr/share/icons/default/index.theme
# 
# Troca o adwaita por breeze_cursors


# cat ~/.icons/default/index.theme 
# This file is written by LXAppearance. Do not edit.
# [Icon Theme]
# Name=Default
# Comment=Default Cursor Theme
# Inherits=Qogir


# https://plus.diolinux.com.br/t/como-definir-o-cursor-do-mous-para-todos-os-programas/70323


# ----------------------------------------------------------------------------------------


# O script verifica a existência dessa subpasta específica (openbox-3/), onde os arquivos 
# de tema do Openbox são armazenados.


# Nome do tema do Openbox a ser verificado (substitua pelo nome do tema desejado)

tema="$Openbox_Theme"  # Substitua pelo nome do tema que você deseja verificar



# Caminhos das pastas onde os temas podem estar localizados


# Pasta do Sistema: /usr/share/themes/NomeDoTema/openbox-3/

pasta_sistema="/usr/share/themes"

# Pasta do Usuário: ~/.themes/NomeDoTema/openbox-3/

pasta_usuario="$HOME/.themes"


# Função para verificar se o tema existe em uma pasta específica

verificar_tema_openbox() {


    # Verificar as pastas

    if [ -d "$pasta_sistema/$tema/openbox-3" ] || [ -d "$pasta_usuario/$tema/openbox-3" ]; then

    # Inicializa a variável caminho como vazia

    caminho=""

    # Verificar se a pasta do sistema contém algo

    if ls "$pasta_sistema/$tema/openbox-3" > /dev/null 2>&1; then

        caminho="$pasta_sistema/$tema"

    fi

    # Verificar se a pasta do usuário contém algo

    if ls "$pasta_usuario/$tema/openbox-3" > /dev/null 2>&1; then

        caminho="$pasta_usuario/$tema"
    fi

       caminho=$(dirname "$caminho")

    # Explicação: 

    # Ex: /usr/share/themes/Clearlooks

    # dirname: Retorna o diretório pai de um caminho fornecido.
    # No exemplo acima, ele removeria o nome Clearlooks e retornaria o caminho /usr/share/themes.


        message=$(gettext "The Openbox theme %s is installed on: %s")

        echo -e "\n${GREEN}$(printf "$message" "'$tema'" "$caminho") ${NC} \n"


       ls -lh "$caminho" | grep -w $tema$

       # -w: Garante que o grep só retornará correspondências exatas de palavras. Isso evita que o grep encontre resultados parciais (por exemplo, Clearlooks-3.4).

    else

        echo -e "\n${RED}O tema do Openbox '$tema' NÃO está instalado. ${NC} \n" >&2


    if [[ "$tema" == "Clearlooks" ]]; then
        echo "
    Tema Openbox: '$tema' não encontrado. Baixe de: https://www.pling.com/p/1017792

    O Clearlooks (Evolving) é um tema clássico para o Openbox e pode ser encontrado em várias fontes, incluindo:

    Clearlooks no GNOME-Look

    Instalar via terminal: sudo apt-get install -y openbox-themes (no caso de distribuições baseadas no Ubuntu).
"

    fi


    fi
}


verificar_tema_openbox


# ----------------------------------------------------------------------------------------

# Para verificar se um tema do Fluxbox está instalado no sistema



# Nome do tema a ser verificado (substitua pelo nome do tema desejado)

tema="$Fluxbox_Theme"  # Substitua pelo nome do tema que você deseja verificar




# Caminhos das pastas onde o tema pode estar

pasta_sistema="/usr/share/fluxbox/styles"

pasta_usuario="$HOME/.fluxbox/styles"


# Função para verificar se o tema existe em uma pasta específica

verificar_tema_fluxbox() {



# Verificar se a variável 'tema' está vazia

if [ -z "$tema" ]; then

    # A variável $tema está vazia. Por favor, defina um nome de tema do Fluxbox.


    message=$(gettext "Fluxbox theme not set to theme %s")

    echo -e "\n${RED}$(printf "$message" "${themename}") ${NC} \n" >&2


    # exit 1  # Encerra o script com um código de erro


else


# A variável $tema contém o valor 



    # Verificar as pastas

    if [ -d "$pasta_sistema/$tema/" ] || [ -d "$pasta_usuario/$tema/" ]; then

    # Inicializa a variável caminho como vazia

    caminho=""

    # Verificar se a pasta do sistema contém algo

    if ls "$pasta_sistema/$tema/" > /dev/null 2>&1; then

        caminho="$pasta_sistema/$tema"

    fi

    # Verificar se a pasta do usuário contém algo

    if ls "$pasta_usuario/$tema/" > /dev/null 2>&1; then

        caminho="$pasta_usuario/$tema"
    fi



    # Verifica se o diretório do tema existe ou se o arquivo .style do tema está presente

    if [ -d "$caminho" ] || [ -f "$caminho" ]; then

        message=$(gettext "Fluxbox theme %s is installed on: %s")

        echo -e "\n${GREEN}$(printf "$message" "'$tema'" "$(dirname "$caminho")") ${NC} \n"


       ls -lh "$caminho" | grep -w $tema$

       # -w: Garante que o grep só retornará correspondências exatas de palavras. Isso evita que o grep encontre resultados parciais (por exemplo, Clearlooks-3.4).

    else

        message=$(gettext "Fluxbox theme %s is NOT installed.")

        echo -e "\n${RED}$(printf "$message" "'$tema'") ${NC} \n" >&2



    # if [[ "$tema" == "Clearlooks" ]]; then
    #    echo ""

    # fi



    fi


       caminho=$(dirname "$caminho")

    # Explicação: 

    # Ex: /usr/share/themes/Clearlooks

    # dirname: Retorna o diretório pai de um caminho fornecido.
    # No exemplo acima, ele removeria o nome Clearlooks e retornaria o caminho /usr/share/themes.




    fi



fi


}


# Verifica nas duas pastas (do sistema e do usuário)

verificar_tema_fluxbox 


# ----------------------------------------------------------------------------------------

# Para verificar se um tema do Plank está instalado no sistema



# Nome do tema a ser verificado (substitua pelo nome do tema desejado)

tema="$tema_plank"  # Substitua  pelo nome do tema que você deseja verificar




# Caminhos das pastas onde o tema pode estar

pasta_sistema="/usr/share/plank/themes"
pasta_usuario="$HOME/.local/share/plank/themes"


# Função para verificar se o tema existe em uma pasta específica

verificar_tema_plank() {


# Para verificar se uma variável está nula ou vazia 

if [ -z "$tema" ]; then


    message=$(gettext "Plank theme not set to theme %s.")

    echo -e "\n${RED}$(printf "$message" "${themename}") ${NC} \n" >&2


else


# echo "A variável 'tema' possui valor: $tema"



    # Verificar as pastas

    if [ -d "$pasta_sistema/$tema/" ] || [ -d "$pasta_usuario/$tema/" ]; then

    # Inicializa a variável caminho como vazia

    caminho=""

    # Verificar se a pasta do sistema contém algo

    if ls "$pasta_sistema/$tema/" > /dev/null 2>&1; then

        caminho="$pasta_sistema/$tema"

    fi

    # Verificar se a pasta do usuário contém algo

    if ls "$pasta_usuario/$tema/" > /dev/null 2>&1; then

        caminho="$pasta_usuario/$tema"
    fi

       caminho=$(dirname "$caminho")

    # Explicação: 

    # Ex: /usr/share/themes/Clearlooks

    # dirname: Retorna o diretório pai de um caminho fornecido.
    # No exemplo acima, ele removeria o nome Clearlooks e retornaria o caminho /usr/share/themes.


        message=$(gettext "The Plank theme %s is installed on: %s")

        echo -e "\n${GREEN}$(printf "$message" "'$tema'" "$caminho") ${NC} \n"


        # ls -dlh "$caminho"

        # ls -lh "$caminho" | grep -w $tema$

        # -w: Garante que o grep só retornará correspondências exatas de palavras. Isso evita que o grep encontre resultados parciais (por exemplo, Clearlooks-3.4).


        ls -dlh --time-style="+%d/%m/%Y %H:%M" "$caminho"


# A opção -d faz com que o ls não entre no conteúdo de diretórios, mas apenas exiba 
# informações sobre o próprio diretório ou arquivo especificado. Sem o -d, o ls exibiria 
# o conteúdo dentro do diretório.

# Com o -d, ele mostra informações sobre o próprio diretório (ou arquivo) em vez de listar 
# o conteúdo dele.

# A opção -l ativa o formato de listagem longa, mostrando informações detalhadas sobre o 
# arquivo ou diretório, como permissões, proprietário, grupo, tamanho, data de modificação, etc.

# A opção -h (human-readable) torna o tamanho dos arquivos legível para humanos, exibindo 
# os tamanhos de forma mais fácil de entender (por exemplo, usando KB, MB, GB, em vez de bytes).




    else

        message=$(gettext "The Plank theme %s is NOT installed.")

        echo -e "\n${RED}$(printf "$message" "'$tema'") ${NC} \n" >&2


    if [[ "$tema" == "MB-X-Yosemite-Dark-v2" ]]; then
        echo "
Tema do Plank: MB-X-Yosemite-Dark-v2

O Plank é um dock para Linux, e o tema MB-X-Yosemite-Dark-v2 é um tema inspirado no 
estilo do macOS. Você pode procurar por esse tema em sites como:

    Plank Themes no GNOME-Look  https://www.gnome-look.org/
    Plank Themes no GitHub      https://github.com/tonal/mbx-yosemite-dark-v2
"

    fi


    fi




# Resultado:

# O tema do Plank 'MB-X-Yosemite-Dark-v2' NÃO está instalado em: /usr/share/plank/themes/MB-X-Yosemite-Dark-v2  


# O tema do Plank 'MB-X-Yosemite-Dark-v2' está instalado em: /home/fernando/.local/share/plank/themes/MB-X-Yosemite-Dark-v2  



# Podemos só deixa a variavel $pasta



fi




# Comando para executar apenas quando a variável "$tema_plank" não estiver vazia:


if [ -n "$tema_plank" ]; then

    # A variável Rofi_Menu_Theme contém valor

    Plank_Theme="$(gettext 'Plank Theme'):\t\t\t\t $tema_plank"

fi



}


verificar_tema_plank


# ----------------------------------------------------------------------------------------


check_Rofi() {




    # Verifica se o diretório do tema existe

    if [ -d "$HOME/.local/share/rofi/themes/" ] || [ -d "$HOME/.config/rofi/themes/" ] || [ -d "/usr/share/rofi/themes" ]; then

        # echo "Tem pasta de tema do Rofi"


    # Verificar se a pasta contém algo

    if ls "$HOME/.local/share/rofi/themes" > /dev/null 2>&1; then

        caminho="$HOME/.local/share/rofi/themes"

    fi


    # Verificar se a pasta contém algo

    if ls "$HOME/.config/rofi/themes" > /dev/null 2>&1; then

        caminho="$HOME/.config/rofi/themes"

    fi


    # Verificar se a pasta contém algo

    if ls "/usr/share/rofi/themes" > /dev/null 2>&1; then

        caminho="/usr/share/rofi/themes"

    fi





        echo -e "\nPasta de tema do Rofi localizada: $caminho \n"


        echo "

Execute o rofi-theme-selector.

Procure o tema desejado, pressione enter para visualizar, depois Alt+a para aceitar o novo tema.

Aproveite seu novo tema Rofi!

"

        #message=$(gettext "Fluxbox theme %s is installed on: %s")

        #echo -e "\n${GREEN}$(printf "$message" "'$tema'" "$(dirname "$caminho")") ${NC} \n"


       #ls -lh "$caminho" | grep -w $tema$

       # -w: Garante que o grep só retornará correspondências exatas de palavras. Isso evita que o grep encontre resultados parciais (por exemplo, Clearlooks-3.4).










# Ex: @theme "/home/fernando/.config/rofi/themes/windows11-list-light.rasi"

grep "^@theme" "$THEMEPATH/user/.config/rofi/config.rasi"  1>/dev/null 2>/dev/null

                                        if [ "$?" == "0" ];
                                        then 

                                                   message=$(gettext 'There is a theme option for Rofi in the file %s...')

                                                   echo -e "\n${GREEN}$(printf "$message" "$THEMEPATH/user/.config/rofi/config.rasi") ${NC} \n"


                                                  # Nome do tema Rofi

                                                  # Ex: @theme "/home/fernando/.config/rofi/themes/windows11-list-light.rasi"


                                                  tema_Rofi=$(grep '^@theme' "$THEMEPATH/user/.config/rofi/config.rasi" | awk -F'/' '{print $NF}' | sed 's/.rasi//' | sed 's/"//g')

                                                  # echo "$tema_Rofi"

                                                  echo -e "\nArquivo modificado em: `ls -lh $(grep '@theme' $THEMEPATH/user/.config/rofi/config.rasi | awk -F'"' '{print $2}')` \n"

                                              else

                                                   message=$(gettext 'No theme option found for Rofi in file %s...')

                                                   echo -e "\n$0: ${RED}$(printf "$message" "$THEMEPATH/user/.config/rofi/config.rasi") ${NC} \n"


                                        fi






    else


        echo -e "\n${RED}$(gettext 'No Rofi theme folder.') ${NC} \n" >&2


    fi





# Comando para executar apenas quando a variável "$tema_Rofi" não estiver vazia:

if [ -n "$tema_Rofi" ]; then

    # A variável Rofi_Menu_Theme contém valor

    Rofi_Menu_Theme="$(gettext 'Rofi Menu Theme'):\t\t\t $tema_Rofi"

fi




}



check_Rofi




# Coleção de temas para Rofi

# https://github.com/newmanls/rofi-themes-collection
# https://github.com/Murzchnvok/rofi-collection


# ----------------------------------------------------------------------------------------


papel_de_parede="$papel_de_parede1"


    message=$(gettext "Theme Information %s")


# $(gettext 'Wallpaper'):\t $papel_de_parede
# $(gettext 'gtk theme'):\t\t\t `cat "$arquivo" | grep gtk-theme-name        | cut -d= -f2 | sed 's/"//g'`
# $(gettext 'Icon theme'):\t `cat "$arquivo" | grep gtk-icon-theme-name   | cut -d= -f2 | sed 's/"//g'`
# $(gettext 'Source'):\t\t\t `cat "$arquivo" | grep gtk-font-name         | cut -d= -f2 | sed 's/"//g'`
# $(gettext 'Course theme'):\t\t `cat "$arquivo" | grep gtk-cursor-theme-name | cut -d= -f2 | sed 's/"//g'`
# $(gettext 'Course size'):\t `cat "$arquivo" | grep gtk-cursor-theme-size | cut -d= -f2 | sed 's/"//g'`
# $(gettext 'Openbox Theme'):\t `grep -m1 "<name>" $OLDRCFILE  | sed 's|<name>||g' | sed 's|</name>||g' | sed 's| ||g'`
# $(gettext 'Plank Theme'):\t\t $tema_plank





echo -e "
$(gettext 'Wallpaper'):\t\t\t $papel_de_parede
$(gettext 'gtk theme'):\t\t\t\t\t $gtk_theme
$(gettext 'Icon theme'):\t\t\t $Icon_theme
$(gettext 'Source'):\t\t\t\t\t $Source
$(gettext 'Course theme'):\t\t\t\t $Course_theme
$(gettext 'Course size'):\t\t\t $Course_size
$(gettext 'Openbox Theme'):\t\t\t $Openbox_Theme
$(gettext 'Fluxbox Theme'):\t\t\t $Fluxbox_Theme
$Plank_Theme
$Rofi_Menu_Theme
$tela_login_theme
"  | yad \
 --center \
 --window-icon="$ICON" \
 --title="$(printf "$message" ${themename}) " \
 --fontname "Sans regular 9" \
 --text-info \
 --tail --wrap \
 --buttons-layout=center \
 --button="$(gettext 'Cancel')":1 \
 --button="$(gettext 'OK')":0 \
 --height="400" \
 --width="700" \
 2>/dev/null &





# Papel de parede:	 /home/fernando/Imagens/Chapolin/Chapolin.png
# Tema gtk:			 Adwaita
# Tema de icones:	 elementary-xfce
# Fonte:			 Sans 10
# Tema do curso:     Qogir
# Tamanho do curso:	 0
# Tema do Openbox:	 Clearlooks
# Tema do Plank:     MB-X-Yosemite-Dark-v2



# clear


# Limpar as variaveis

tela_login_theme=""



else 

     # [ERRO] - Arquivo $arquivo não localizado...

     message=$(gettext "[ERROR] - File %s not found...")

     echo -e "\e[1;31m\n$(printf "$message" $arquivo)\n\e[0m"

     yad_warning "$(printf "$message" $arquivo)"
     


fi



# Como fazer o grep retornar só a primeira ocorrencia? grep -m1 

# https://www.vivaolinux.com.br/topico/Comandos/GREP-uma-ocorrencia-so



# Plank é um dock leve e minimalista. Plank não funcionará se você estiver usando Wayland.


# Embora as preferências de cada dock sejam armazenadas no banco de dados dconf e não em 
# texto simples, às vezes faz sentido obter e armazenar essas informações de qualquer maneira 
# e então alimentá-las de volta em algum momento. Por exemplo, fazer backup das configurações 
# ou migrar as configurações, etc.

# Portanto, pode ser que você queira salvar todas as docas:

# $ dconf dump /net/launchpad/plank/docks/ > /caminho/onde/salvar/plank/docks.ini

# E então você pode querer recarregar as configurações salvas:

# $ cat /caminho/onde/salvo/plank/docks.ini | dconf load /net/launchpad/plank/docks/



# https://codybonney.com/how-to-launch-the-preferences-window-for-plank/
# https://en.ubunlog.com/plank-installation-configuration-of-this-simple-dock/
# https://wiki.archlinux.org/title/Plank
# https://community.linuxmint.com/software/view/plank


# ----------------------------------------------------------------------------------------


# Exibi uma notificação ao usuário informando que o arquivo de imagem será aberto, usando 
# o notify-send.

# O notify-send faz parte do pacote libnotify e permite enviar notificações no estilo do 
# sistema de notificações do seu ambiente gráfico (como GNOME, XFCE, ou Openbox).



# Caminho do arquivo de imagem a ser aberto (substitua pelo seu caminho)

imagem="$img"  # Ou use um caminho fixo como "/caminho/para/imagem.jpg"


# Verifica se o arquivo de imagem existe

if [ -f "$imagem" ]; then

    # Exibe a notificação

    # \nVocê está prestes a abrir a imagem: $imagem

    notify-send "Abrindo Imagem..." "\n$imagem"
    
    # Abre a imagem com um visualizador (exemplo: `eog` ou qualquer outro visualizador de sua escolha)
    # eog "$imagem"  # Substitua `eog` por outro visualizador, como `feh`, `gwenview`, etc.

                    sleep 10

                    $IMGCMD "$img" 2> /dev/null

else

    # Se o arquivo não existir, notifica o erro

    notify-send "Erro" "O arquivo de imagem não foi encontrado: $imagem"

fi



                else
                    yad_prompt "$(gettext 'Make a selection')" "$OK"
                fi

                ;;

            10) 


echo "$HELP" > /tmp/helpfile-blob.txt

# /usr/share/doc/bl-obthemes/helpfile-blob.txt

# /usr/share/bunsen/docs/helpfiles/helpfile-blob.txt

yad \
--center \
--window-icon="$ICON"  \
--title="$(gettext 'Theme Manager')" \
--fontname=Monospace \
--text-info \
--filename="/tmp/helpfile-blob.txt" \
--buttons-layout=center \
--button="$(gettext 'OK')":0 \
--width="900" --height="700" \
2> /dev/null


rm -Rf /tmp/helpfile-blob.txt

                Intro



                ;;


            5)  # Criar tema

                clear


yad \
--center \
--title="$(gettext 'Create settings for theme')" \
--wrap \
--text="Personalizar a aparência envolve principalmente a modificação de arquivos de configuração e o uso de temas.

Pode ser feito de forma bastante detalhada, envolvendo vários aspectos como bordas das janelas, cores, ícones, fontes e outros elementos visuais. 


Diretórios de Temas

Os temas do Openbox são geralmente armazenados em dois diretórios principais:

    Temas Globais: /usr/share/openbox/themes/
    Temas do Usuário: ~/.config/openbox/ ou ~/.themes/

Dentro desses diretórios, você verá pastas com os nomes dos temas. Cada pasta contém 
arquivos de configuração que definem a aparência do tema.


Usando temas para o GTK

Se você também usa aplicativos GTK e deseja que a aparência do Openbox seja consistente com outros aplicativos, pode aplicar temas GTK para alterar a aparência desses aplicativos.

O lxappearance também pode ser utilizado para alterar os temas GTK. Além disso, você pode editar arquivos de configuração como ~/.gtkrc-2.0 ou ~/.config/gtk-3.0/settings.ini para 
personalizar o tema.


Na interface do lxappearance, você pode alterar:

    Tema: Escolha um tema que mude a aparência das janelas e botões.
    Ícones: Altere o conjunto de ícones para os menus, botões, pastas e mais.
    Fontes: Altere as fontes usadas no sistema.


Alterar a aparência da barra (se utilizada)

Se você usa uma barra como o tint2 ou polybar, pode personalizar a aparência dessa barra 
separadamente.

    Para o tint2, edite o arquivo de configuração, que normalmente está em ~/.config/tint2/tint2rc.

    Para o polybar, a configuração está em arquivos .config/polybar/config.

Após editar esses arquivos, basta reiniciar a barra para ver as mudanças.


O tint2 não possui um painel gráfico de configuração nativo, mas você pode facilmente 
configurar o tint2 editando o arquivo de configuração diretamente.

O arquivo de configuração padrão do tint2 fica localizado em ~/.config/tint2/tint2rc. 

$ xdg-open ~/.config/tint2/tint2rc

    Dentro desse arquivo, você pode personalizar a aparência, o comportamento da barra, e muito mais. O arquivo está bem comentado, o que facilita a personalização.

Para facilitar a configuração visual do tint2, existem ferramentas de terceiros, como o tint2conf, que fornecem uma interface gráfica para editar o arquivo tint2rc.
" \
--buttons-layout=center \
--button="$(gettext 'OK')":0 \
--max-width="700" --max-height="100" \
2>/dev/null


if [ $? -eq 252 ]; then
  
   exit

fi





# ----------------------------------------------------------------------------------------


# Instala as ferramentas necessárias



# Funções que serão chamadas quando um botão for pressionado na proxima tela do yad


# ----------------------------------------------------------------------------------------

# Função para configurar o Rofi

configurar_rofi() {

echo "
$(gettext 'Configure Rofi')
"


        echo "

Execute o rofi-theme-selector.

Procure o tema desejado, pressione enter para visualizar, depois Alt+a para aceitar o novo tema.

Aproveite seu novo tema Rofi!


Configurando o Rofi para parecer com o Whisker Menu

rofi -show drun -show-icons

Isso fará com que o Rofi mostre ícones ao lado dos aplicativos, dando uma experiência 
mais parecida com o Whisker Menu do xfce.

"


rofi-theme-selector # 1> /dev/null 2> /dev/null 


}

# ----------------------------------------------------------------------------------------

# Função para editar tema Openbox

# Função para abrir o gerenciador de temas do OpenBox

editar_tema_openbox() {

# Gerenciador de configuração do Openbox

echo "
$(gettext 'Change Openbox theme using obconf')
"

obconf


}


# ----------------------------------------------------------------------------------------


# Função para alterar o tema de ícones

alterar_tema_icones() {


# Para gerenciar temas de ícones

echo "
$(gettext 'Change the icon theme using lxappearance')
"

lxappearance 2> /dev/null


# $ lxappearance

# (lxappearance:5415): GLib-CRITICAL **: 04:27:46.152: g_utf8_collate: assertion 'str1 != NULL' failed

# (lxappearance:5415): GLib-CRITICAL **: 04:27:46.156: g_utf8_collate: assertion 'str2 != NULL' failed

# (lxappearance:5415): GLib-CRITICAL **: 04:27:46.157: g_utf8_collate: assertion 'str2 != NULL' failed



}

# ----------------------------------------------------------------------------------------


# Função para alterar o papel de parede

alterar_papel_parede() {

echo "
$(gettext 'Change wallpaper using Nitrogen')
"

nitrogen 2> /dev/null


# (nitrogen:2687): GLib-GObject-CRITICAL **: 16:18:08.487: Attempting to freeze the notification queue for object GtkSettings[0x55d0f3363390]; Property notification does not work during instance finalization.

# (nitrogen:2687): GLib-GObject-CRITICAL **: 16:18:08.487: Attempting to thaw the notification queue for object GtkSettings[0x55d0f3363390]; Property notification does not work during instance finalization.


# https://www.peakpx.com/


}

# ----------------------------------------------------------------------------------------


# Função para configurar o Plank

configurar_plank() {

echo "
$(gettext 'Configure Plank')
"

plank --preferences 1> /dev/null 2> /dev/null 

}

# ----------------------------------------------------------------------------------------


# Função para configurar o compositor Picom

configurar_picom() {

echo "
$(gettext 'Adjusting the picom composer (Optional)')
"

# Se você deseja efeitos visuais mais avançados, como sombras ou transparência, pode 
# configurar um compositor como picom. Esse compositor podem ser configurado para 
# adicionar efeitos visuais enquanto você trabalha no Openbox.


# O arquivo de configuração para o compositor geralmente fica localizado em ~/.config/picom.conf ou ~/.config/picom/picom.conf.

# Verifica qual arquivo existe

if [ -f $HOME/.config/picom.conf ]; then

    arquivo="$HOME/.config/picom.conf"

elif [ -f $HOME/.config/picom/picom.conf ]; then

    arquivo="$HOME/.config/picom/picom.conf"

else

    echo -e "\n$(gettext 'None of the Picom configuration files exist.')\n"

    exit 1
fi

# Abre o arquivo com o editor de texto padrão via xdg-open

xdg-open "$arquivo" 2> /dev/null


sleep 1

}


# ----------------------------------------------------------------------------------------


# Função para configurar o tint2

configurar_tint2() {


echo "
$(gettext 'Configure tint2')
"

# Isso abrirá uma interface gráfica onde você pode configurar o tint2 de maneira visual.

tint2conf

# Embora o tint2 não tenha um painel de configuração gráfico embutido, você pode editar o 
# arquivo tint2rc diretamente ou usar o tint2conf para uma experiência mais amigável.


}


# ----------------------------------------------------------------------------------------


# Função para sair

sair() {

    echo -e "\n$(gettext 'Returning to the main menu...')\n"

    sleep 1

    clear

    # Defina a variável de controle para sair do loop

    sair_da_entrada=1

    # exit

    # break


}


# ----------------------------------------------------------------------------------------


   
# Exibindo a caixa de diálogo do Yad com os botões


# No YAD (Yet Another Dialog), você pode criar uma interface gráfica com diferentes tipos 
# de widgets, incluindo botões, que podem chamar funções dentro de um script. O YAD permite 
# que você crie caixas de diálogo com botões personalizados e atribua ações a esses botões 
# por meio de scripts.





# Loop principal

while true; do


    # Exibe a caixa de diálogo do YAD


# Clique no botão abaixo para chamar a função.

# yad \
# --center  \
# --window-icon="$ICON" \
# --title="$(gettext 'Create settings for theme')" \
# --text="$(gettext 'Click a button below to customize your window manager theme.')" \
# --buttons-layout=center \
# --button="$(gettext 'Edit OpenBox Theme')":7 \
# --button="$(gettext 'Change icon theme')":2 \
# --button="$(gettext 'Change the wallpaper')":3 \
# --button="$(gettext 'Configure Plank')":4 \
# --button="$(gettext 'Configure Picom composer')":5 \
# --button="$(gettext 'Configure tint2')":6 \
# --button="$(gettext 'Exit')":1 \
# --width="400" --height="300" \
# 2> /dev/null





retorno=$(yad \
--center \
--window-icon="$ICON" \
--list \
--title="$(gettext 'Create settings for theme')" \
--text="\n$(gettext 'Click an option below to customize your window manager theme.')\n" \
--column="$(gettext 'Options')" --column="$(gettext 'Action')" \
"$(gettext 'Change icon theme')" "2" \
"$(gettext 'Change the wallpaper')" "3" \
"$(gettext 'Configure Plank')" "4" \
"$(gettext 'Configure Picom composer')" "5" \
"$(gettext 'Configure tint2')" "6" \
"$(gettext 'Edit OpenBox Theme')" "7" \
"$(gettext 'Edit Rofi Theme')" "8" \
"$(gettext 'Exit')" "1" \
--separator="|" \
--no-buttons \
--width="600" --height="300" \
2> /dev/null)




# --buttons-layout=center \
# --button="$(gettext 'Cancel')":1 \
# --button="$(gettext 'OK')" \
# --no-buttons \



# Explicação:

# --buttons-layout=center: Esta opção centraliza os botões na janela. Ela faz com que os 
# botões apareçam no centro, em vez de na parte inferior ou em uma disposição 
# horizontal/vertical padrão.



# Captura o retorno do YAD

# Verifica o código de saída


# retorno="$?"

# echo "$retorno"
# sleep 2

retorno_code=$?


# O erro "número excessivo de argumentos" ocorre quando você tenta comparar uma variável 
# com um valor ou expressão, e essa variável contém mais de um valor, o que não é esperado 
# pela condição. Esse erro pode ocorrer em diversos locais do script onde você utiliza 
# comparações, como if ou while.
# 
# No seu caso, provavelmente o erro ocorre na parte em que você tenta comparar a variável 
# retorno, que contém mais de um valor. A comparação if [ $retorno -eq ... ] espera um 
# único valor, mas se a variável contém espaços ou múltiplos valores, ela pode causar o 
# erro mencionado.


    # Verificar se o valor retornado é 252 ou 1

    # Se o retorno for 252, isso significa que o usuário fechou a janela (clicou no "X")


# Captura o código de retorno de YAD



# Verifica se o retorno foi 252 (quando o "X" é clicado ou a janela fechada)

if [ $retorno_code -eq 252 ]; then

    echo "$(gettext 'Window closed or X clicked, exiting...')"

    exit 0
fi


# Verifica se o retorno foi 1 (quando o botão Cancelar é clicado)

if [ $retorno_code -eq 1 ]; then

    echo "$(gettext 'Cancel clicked, exiting...')"

    exit 0
fi






# Verificar se a variável retorno está vazia

    if [[ -z "$retorno" ]]; then

        echo "$(gettext 'Error: No return value found')"

        continue  # Pula para a próxima iteração do loop
    fi





    # Extrair o valor numérico da seleção

    # Verifica a ação selecionada

    if [[ -n "$retorno" ]]; then

    # Captura o valor numérico da segunda coluna, usando o separador "|"

    retorno=$(echo "$retorno" | awk -F'|' '{print $2}')

    # retorno=$(echo "$retorno" | awk -F'|' '{print $1}')

    # Exibe a ação selecionada

    echo "$(gettext 'Selected action'): $retorno"

    fi




# Verifica a opção escolhida e executa a função correspondente



# Chama as funções correspondentes às ações

    case $retorno in

        1)
            sair

            ;;


        2)  # Se o botão "Alterar tema de ícones" for pressionado (código 2)

            alterar_tema_icones

            ;;


        3)  # Se o botão "Alterar o papel de parede" for pressionado (código 3)

            alterar_papel_parede

            ;;


        4)  # Se o botão "Configurar Plank" for pressionado (código 4)

            # Esta passando direto para o menu não espera o programa fecha.

            configurar_plank &

            clear

            sleep 5

            ;;


        5)  # Se o botão "Configurar compositor picom" for pressionado (código 5)

            # Esta passando direto para o menu não espera o programa fecha.

            configurar_picom

            clear

            sleep 5

            ;;


        6)  # Se o botão "Configurar o tint2" for pressionado (código 6)

            configurar_tint2

            clear

            ;;


        7)  # Se o botão "Editar tema do OpenBox" for pressionado (código 7)

            editar_tema_openbox

            echo -e "\n$(gettext 'Reloading Openbox to apply changes...') \n"

            openbox --reconfigure


           # Captura o código de saída

           retorno=$?

           # Verifica se o comando falhou (código de saída diferente de 0)

           if [[ $retorno -ne 0 ]]; then

               # Se falhou, informa o usuário

               echo -e "\n$0: ${RED}$(gettext 'Error: Failed to reconfigure Openbox. Please check for errors.') ${NC} \n" >&2

           else

               # Caso tenha sucesso, informa que a reconfiguração foi bem-sucedida

               echo -e "\n${GREEN}$(gettext 'Openbox has been successfully reconfigured.') ${NC} \n"

               sleep 2

          fi



            sleep 2

            ;;


        8)  # Configura o tema do Rofi

            configurar_rofi

            clear

            ;;


        *)

            echo -e "\n$0: ${RED}$(gettext 'Unrecognized action') ${NC} \n" >&2

            ;;
    esac



# Se o botão "Sair" for pressionado (código 1)
# 
# -eq 1 é uma comparação numérica que verifica se o valor da variável à esquerda é igual a 1.
# 
# Isso significa "se o valor de $retorno for igual a 1". Caso essa condição seja verdadeira, o bloco de código dentro do if será executado.
# 
# 
# Exemplos de uso com outros operadores:
# 
#     -eq → Igual a
#     -ne → Não igual a
#     -gt → Maior que
#     -lt → Menor que
#     -ge → Maior ou igual a
#     -le → Menor ou igual a


# Isso significa que, se o valor de $retorno for 1, a função sair será chamada. Normalmente, 
# no YAD, o código de retorno 1 é retornado quando o usuário fecha a janela clicando no 
# "X" (ou se houver algum erro).
#
# Portanto, o teste -eq 1 no if verifica se o usuário fechou a janela, e, se for o caso, 
# chama a função sair().



# ----------------------------------------------------------------------------------------


# Verifica se a função sair foi chamada e sai do loop

    if [ $sair_da_entrada -eq 1 ]; then

        break  # Sai do loop quando o usuário clica em "Exit"

    fi

# ----------------------------------------------------------------------------------------



clear


done


# https://www.vivaolinux.com.br/artigos/impressora.php?codigo=13213
# https://stackoverflow.com/questions/71616702/if-yad-is-a-fork-of-zenity-why-is-there-no-imagelist
# https://distrowatch.com/weekly.php?issue=20180625
# https://www.thelinuxrain.org/articles/the-buttons-of-yad/


                ;;


            *)  
                clear

                if (( RET == 252 ));then


                      # Neste caso, você atribui a tradução a uma variável (msg), o que torna a sintaxe do echo muito mais simples.

                      msg=$(gettext "You pressed \"CANCEL\" or \"ESC\", so let's exit...")

                      echo -e "\n$0: ${RED} '$msg' ${NC} \n" >&2



                else

                      echo -e "\n$0: ${RED}  $(gettext "Error") = $RET ${NC} \n" >&2

                fi

                exit 1

                ;;

        esac
    done
}


# https://aurelio.net/shell/dialog/#menu


################### Fim das funções de restauração ##############################

function cleanup(){

    if [[ $1 = all ]];then

        if [[ -d $CONFIGDIR ]];then

            rm -rf "$CONFIGDIR"


            # Excluída $CONFIGDIR

            message=$(gettext "Deleted %s")

            debug "\n  $(printf "$message" $CONFIGDIR)"

        fi

        if [[ -d $CONFIGDIR_BKP ]];then

            mv "$CONFIGDIR_BKP" "$CONFIGDIR"


            # Cancelada\n..Backup $CONFIGDIR restaurado.

            message=$(gettext "Canceled\n..Backup %s restored.")

            debug "\n  $(printf "$message" $CONFIGDIR)\n"

        fi

        rm -f /tmp/blob.*

    elif [[ $1 = save ]];then

        saveSettings

    fi

}



###################### FUNÇÕES FINAIS ###################################


# Adicione isto onde um erro deve disparar um aviso, saída opcional:

# trap 'trap_error $LINENO "$BASH_COMMAND"' ERR

# Para remover trap:

# trap - ERR



# Verifique se não está sendo executado como root, teste o arquivo de inicialização da sessão do openbox

# sets OBSESSION


firstChecks


# Teste o diretório de configuração do blobthemes, crie se ele não existir

mkdir -p "$USRCONFIGPATH"


# Crie um arquivo para armazenar o nome da configuração salva mais recente

if [[ ! -f $CURSESSFILE ]];then

    touch "$CURSESSFILE"

fi


# Converter caminhos de arquivo de configuração em qualquer BLOB salvo pelo usuário existente para o novo esquema

# Armazenar comandos conky e tint2 em arquivos de sessão


upgradeBlobs

Intro --one-view-only


exit 0

