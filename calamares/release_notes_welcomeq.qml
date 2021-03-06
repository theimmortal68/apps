/* === This file is part of Calamares - <https://github.com/calamares> ===
 *
 *   Copyright 2020, Anke Boersma <demm@kaosx.us>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1

Rectangle {
    width: parent.width
    height: parent.height
    focus: true
    color: "#f2f2f2"

    Flickable {
        id: flick
        anchors.fill: parent
        contentHeight: 4200
        
        ScrollBar.vertical: ScrollBar {
            id: fscrollbar 
            width: 10
            policy: ScrollBar.AlwaysOn
        }

        TextArea {
            id: intro
            x: 130
            y: 8
            width: 640
            font.pointSize: 14
            textFormat: Text.RichText
            antialiasing: true
            activeFocusOnPress: false
            wrapMode: Text.WordWrap

            text: qsTr("<h3>KaOS - 2020.07</h3>
            <p>KaOS is very proud to announce the availability of the July release of a new stable ISO.</p>
            
            <p>You will find <b>Plasma 5.19</b> on this ISO. Highlights of 5.19 include incorporation of a consistent design and header area for system tray applets as well as notifications, refreshed look of the media playback applet in the System Tray, System monitor widgets have all been rewritten from scratch and Sticky notes get several usability improvements and if you use Wayland, you will also appreciate the new option that lets you configure the mouse and touchpad scroll speed .<br />
            Frameworks is at 5.71.0, Plasma at 5.19.2 and KDE Applications at 20.04.2. All built on <b>Qt 5.15.0</b>.
            
            <p>For the installer Calamares, KaOS has started a move to using as many QML modules as possible. For the Welcome screen that now means any text or needed info can now be shown as a qml file within the Calamares window, no need for pop-ups or external applications. The keyboard module is also rewritten in QML, which now gives a much clearer overview of possible keyboard models, languages and variants.</p>
            
            <p>A few new firmwares/modules have been added to the repositories, this include sof-firmware (needed for newer sound-cards, will move to linux-firmware soon according to upstream reports) and two new rtl wifi modules (rtl8723de & rtl8821ce). New applications added include Photoflare and the musicplayer VVave, the successor of Babe</p>
            
            <p>Updates to the base of this distribution include Cfitiso 3.480, Poppler 0.89.0, Pciutils 3.7.0, Git 2.27.0, Libacp 2.36, Pam 1.4.0. Other rebuilds were needed for ICU 66.1, Boost 1.72.0, Krb5 1.18, Glib2 2.64.3 based stack, Guile 2.2.6, Mesa 20.1.2, NetworkManager 1.24.2, Perl 5.30.3, Linux 5.7.7 and Qt 5.15.0.</p>
            
            <p>The Midna them used for KaOS has been redone for 2020, biggest change there is the move from QtCurve to <b>Kvantum</b> for the application style.  Implemented is a custom Midna Kvantum theme, following the same style as used in Croeso and the Welcome application. Ksplash is simplified with less moving images, SDDM theme has better contrast.  Complete new is <b>theming for the systemd-bootloader</b>, gone is the standard black background with white text, instead you will see a well intgrated option with the rest of the Midna theme.  The grub bootloader was updated to follow a similar look as the systemd-bootloader.</p>
            
            <p>Since LibreOffice 6.2, it is now possible to supply this as a pure Qt5/kf5 application.  LibreOffice has thus replaced Calligra as the default Office Application for KaOS.</p>
            
            <p>KaOS' creation <strong>Croeso</strong> (Welsh for welcome) for helping with configuring a new install is included.  It will run on the newly installed system and offers to adjust some 15 commonly used settings, includes a custom Wallpaper selector, distribution info and the option to select packages to install from six different groups.  It is written in QML and fits well with the Welcome application used in the Live system.  The latter includes an Installation Guide.</p>
            
            <p>There is an option to verify the authenticity of downloaded KaOS ISO files through GPG signature verification, see the Download page for further details and instructions.</p>
            
            <p>A KaOS specific tool to write ISO files to USB is in use.  Not only does IsoWriter write to USB it also gives the option to recover your USB stick after using it for an ISO, something that regular dd copy or the previously used Imagewriter were not able to do. It includes the option to verify the written USB in comparison to the used ISO file.</p>
            
            <p>The artwork includes custom icon themes for light and dark themes. Midna and Midna Dark both create a complete unified look from boot-up all the way through logout.</p>

            <p>This ISO uses the <b>CRC and finobt enabled</b> XFS filesystem as default. CRCs enable enhanced error detection due to hardware issues, whilst the format changes also improves crash recovery algorithms and the ability  of  various  tools to validate and repair metadata corruptions when they are found.  The  free  inode  btree does not index used inodes, allowing faster, more consistent inode allocation performance as filesystems age.</p>
            
            <p><strong>Octopi</strong> is becoming a very crucial part of full system maintenance for KaOS. It is not just a GUI frontend to pacman. Tools like making sure a mirror is synced before starting any update, looking at the pacman logs, an option to get a paste from a complete snapshot of all info of a system with the SysInfo tool are included. Also included are very simple ways to open files, like copy to clipboard the file path shown in Octopi. To make sure the system doesn't start using too much disk space for the pacman cache, but still giving the user the option to retain some recent packages, the cache-cleaner tool is a great addition. The built-in tool to access <b>KCP</b> has now a much clearer place with the addition of its own foreign icon in the menu-bar. New added is the option to select custom icons for the systemtray.</p>
            
            <p>For UEFI installs, KaOS uses the simple, transparent but quite powerful systemd-boot as bootloader.</p>
            
            <p>To learn more about the goals and ideas behind KaOS, please read the <b>http://kaosx.us/</b>, <b>http://kaosx.us/about/</b>, and <b>http://kaosx.us/faq/</b> pages.</p>
            
            <p>To avoid any misunderstanding and confusion, KaOS is <b>not based upon, derived of, or inspired by</b> any one particular distribution. It is completely independent, build entirely from scratch with its own repositories. To read more about this see <b>http://kaosx.us/about/based/</b>. A <b>rolling release distribution</b> never has a final release, every ISO is merely a snapshot of the current status of the repositories. An idea what is currently available:</p>
            
            <p>The ISO ships with <b>Frameworks 5.71.0, Plasma 5.19.2, KDE Applications 20.04.2</b>, Linux 5.7.7, Systemd 244, Kmod 27, NetworkManager 1.24.2, LibreOffice 6.4.5, Krita 4.3.0, Elisa, Xorg-Server 1.20.8, Mesa 20.1.2, Glibc 2.31, GCC 9.3.0, non-free Nvidia 440.100, Pepperflash and Python3 3.7.7 to name a few.</p>
            
            <p>The package manager is <strong>Pacman 5.2.2</strong>, with the simple but powerful Octopi 0.9.0 as GUI frontend. Falkon is the default, Qt based, web browser. <b>GFXboot</b> is included with KaOS artwork, Grub theme is Midna, Look &amp; Feel is a KaOS exclusive version Midna.</p>
            
            <p><b>Repositories</b> of KaOS will stay limited in size and expect it to stay at the current maximum of about 2100-2200. A gist of what is available, besides the stable kernel there is Linux-next 5.7, Calligra 3.2.1, VLC, Vokoscreen, Blender, Kodi, Calibre, Sigil, Vulkan packages, a few games like 0ad and Knights.<br />
            A limited number of the most well-known GTK applications are available, examples Firefox 78.0.1, Chrome 85, Ardour 6.0.0, Inkscape 1.0, GIMP 2.10.20 and Google-talkplugin 5.41.3.0.1.<br />
            Complete language packs are available for KDE, Calligra, Firefox, LibreOffice and Thunderbird. For IM, Fcitx 4.2.9.6 is available as a rather complete group.</p>
            
            <p><b>Known issues:</b></p>
            <ul>
                <li>Some Intel CPU systems might have an issue kernel’s entropy pool and have a long boot delay, if encountered add <strong>random.trust_cpu=1</strong> to the kernel boot line.
                <li>Installing on RAID is currently not possible</li>
            </ul>
            
            <p>To create <b>reliable</b> installation media, please follow the instructions from the <b>http://kaosx.us/download/</b> page. KaOS's ISO's <b>do not support Unetbootin or Rufus</b>, and DVDs need a burn speed <b>no higher than 4x</b>.</p>")

        }
    }

    ToolButton {
        id: toolButton
        x: 19
        y: 29
        width: 105
        height: 48
        text: qsTr("Back")
        hoverEnabled: true
        onClicked: load.source = ""

        Image {
            id: image1
            x: 0
            y: 13
            width: 22
            height: 22
            source: "file:/usr/share/pixmaps/chevron-left-solid.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

}
