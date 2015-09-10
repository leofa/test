#!/usr/bin/perl

# File generated by menutray v0.43

# DO NOT edit this file!
# Any change in this file will be lost!
# Edit '/home/faruk/.config/menutray/schema.pl' instead!

use utf8;
use Gtk2 ('-init');

my $menu = 'Gtk2::Menu'->new;
my $icon = 'Gtk2::StatusIcon'->new;

$icon->set_from_icon_name('menutray');
$icon->set_visible(1);
$icon->signal_connect('button-release-event', \&show_icon_menu);

load_menu();

sub show_icon_menu {
    $menu->popup(undef, undef, sub {return Gtk2::StatusIcon::position_menu($menu, 0, 0, $icon)}, [1, 1], 0, 0);
    return 1;
}

sub load_menu {
{
    my $item = 'Gtk2::ImageMenuItem'->new("Uitvoeren\.\.");
    $item->set_image('Gtk2::Image'->new_from_icon_name("system\-run",q{menu}));
    $item->signal_connect('activate', sub {system "rofi\ \-show\ run &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Terminalvenster");
    $item->set_image('Gtk2::Image'->new_from_icon_name("terminal",q{menu}));
    $item->signal_connect('activate', sub {system "i3\-sensible\-terminal &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Tekstverwerker");
    $item->set_image('Gtk2::Image'->new_from_icon_name("medit",q{menu}));
    $item->signal_connect('activate', sub {system "subl &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Webbrowser");
    $item->set_image('Gtk2::Image'->new_from_icon_name("web\-browser",q{menu}));
    $item->signal_connect('activate', sub {system "chromium &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("E\-mailprogramma");
    $item->set_image('Gtk2::Image'->new_from_icon_name("internet\-mail",q{menu}));
    $item->signal_connect('activate', sub {system "geary &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Chromium\-apps");
    $item->set_image('Gtk2::Image'->new_from_icon_name("chromium\-app\-list",q{menu}));
    $item->signal_connect('activate', sub {system "xdotool\ key\ Super_L\+backslash &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Bestandsbeheerder");
    $item->set_image('Gtk2::Image'->new_from_icon_name("file\-manager",q{menu}));
    $item->signal_connect('activate', sub {system "caja &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Zoek\ bestanden\.\.");
    $item->set_image('Gtk2::Image'->new_from_icon_name("tracker",q{menu}));
    $item->signal_connect('activate', sub {system "mate\-search\-tool &"});
    $menu->append($item);
}


    $menu->append('Gtk2::SeparatorMenuItem'->new);

    # # # # # # # # # # # # # # # # # # # # HULPAPPS # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Hulpapps");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("gtk\-help",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Caja");
    $app->signal_connect('activate', sub {system "caja\ \-\-no\-desktop\ \-\-browser &"});
    $app->set_property('tooltip_text', "Bestandssysteem\ doorbladeren\ met\ het\ bestandsbeheer");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-file\-manager",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Engrampa\ Archiefbeheer");
    $app->signal_connect('activate', sub {system "engrampa &"});
    $app->set_property('tooltip_text', "Archieven\ maken\ en\ wijzigen");
    $app->set_image('Gtk2::Image'->new_from_icon_name("engrampa",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Galculator");
    $app->signal_connect('activate', sub {system "galculator &"});
    $app->set_property('tooltip_text', "Perform\ simple\ and\ scientific\ calculations");
    $app->set_image('Gtk2::Image'->new_from_icon_name("galculator",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("gVim");
    $app->signal_connect('activate', sub {system "gvim &"});
    $app->set_property('tooltip_text', "GTK2\ enhanced\ vim\ text\ editor");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gvim",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("MATE\ Zoekprogramma");
    $app->signal_connect('activate', sub {system "mate\-search\-tool &"});
    $app->set_property('tooltip_text', "Documenten\ en\ mappen\ vinden\ op\ naam\ of\ inhoud");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-search",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Schermafdruk\ maken");
    $app->signal_connect('activate', sub {system "mate\-screenshot\ \-\-interactive &"});
    $app->set_property('tooltip_text', "Afbeeldingen\ van\ uw\ bureaublad\ of\ vensters\ maken");
    $app->set_image('Gtk2::Image'->new_from_icon_name("applets\-screenshooter",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Tekens\ en\ symbolen");
    $app->signal_connect('activate', sub {system "gucharmap &"});
    $app->set_property('tooltip_text', "Speciale\ tekens\ invoegen\ in\ documenten");
    $app->set_image('Gtk2::Image'->new_from_icon_name("accessories\-character\-map",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Wachtwoorden\ en\ sleutels");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/seahorse &"});
    $app->set_property('tooltip_text', "Uw\ cryptografische\ sleutels\ en\ wachtwoorden\ beheren");
    $app->set_image('Gtk2::Image'->new_from_icon_name("seahorse",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Xournal");
    $app->signal_connect('activate', sub {system "xournal &"});
    $app->set_property('tooltip_text', "Take\ handwritten\ notes");
    $app->set_image('Gtk2::Image'->new_from_icon_name("xournal",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # ONTWIKKELING # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Ontwikkeling");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-development",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("gitg");
    $app->signal_connect('activate', sub {system "gitg\ \-\-no\-wd &"});
    $app->set_property('tooltip_text', "Git\-repository\-viewer");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gitg",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Icon\ Browser");
    $app->signal_connect('activate', sub {system "yad\-icon\-browser &"});
    $app->set_property('tooltip_text', "Inspect\ GTK\ Icon\ Theme");
    $app->set_image('Gtk2::Image'->new_from_icon_name("yad",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Sublime\ Text\ 3\ Dev");
    $app->signal_connect('activate', sub {system "subl3 &"});
    $app->set_property('tooltip_text', "Sophisticated\ text\ editor\ for\ code\,\ markup\ and\ prose");
    $app->set_image('Gtk2::Image'->new_from_icon_name("sublime\-text",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # EDUCATIE # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Educatie");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-science",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Klavaro");
    $app->signal_connect('activate', sub {system "klavaro &"});
    $app->set_property('tooltip_text', "Een\ zeer\ flexibel\ en\ efficiënt\ typelesprogramma\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("klavaro",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Math");
    $app->signal_connect('activate', sub {system "libreoffice\ \-\-math &"});
    $app->set_property('tooltip_text', "Create\ and\ edit\ scientific\ formulas\ and\ equations\ by\ using\ Math\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-math",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # GAMES # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Games");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-games",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Minecraft");
    $app->signal_connect('activate', sub {system "minecraft &"});
    $app->set_property('tooltip_text', "A\ game\ about\ placing\ blocks\ while\ running\ from\ skeletons\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("minecraft",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Steam");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/steam &"});
    $app->set_property('tooltip_text', "Application\ for\ managing\ and\ playing\ games\ on\ Steam");
    $app->set_image('Gtk2::Image'->new_from_icon_name("steam",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # GRAFISCH # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Grafisch");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop\-theme",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Afbeeldingsviewer");
    $app->signal_connect('activate', sub {system "eog &"});
    $app->set_property('tooltip_text', "Afbeeldingen\ doorbladeren\ en\ roteren");
    $app->set_image('Gtk2::Image'->new_from_icon_name("eog",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Documentenviewer");
    $app->signal_connect('activate', sub {system "evince &"});
    $app->set_property('tooltip_text', "Documenten\ weergeven");
    $app->set_image('Gtk2::Image'->new_from_icon_name("evince",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Gcolor2");
    $app->signal_connect('activate', sub {system "gcolor2 &"});
    $app->set_property('tooltip_text', "Choose\ colours\ from\ palette\ or\ screen");
    $app->set_image('Gtk2::Image'->new_from_pixbuf('Gtk2::Gdk::Pixbuf'->new_from_file_at_size("\/usr\/share\/pixmaps\/gcolor2\/icon\.png",22,22)));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("GNU\ Image\ Manipulation\ Program");
    $app->signal_connect('activate', sub {system "gimp\-2\.8 &"});
    $app->set_property('tooltip_text', "Afbeeldingen\ of\ foto\'s\ aanmaken\ en\ bewerken");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gimp",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("gThumb");
    $app->signal_connect('activate', sub {system "gthumb &"});
    $app->set_property('tooltip_text', "Uw\ afbeeldingen\ weergeven\ en\ beheren");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gthumb",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Inkscape");
    $app->signal_connect('activate', sub {system "inkscape &"});
    $app->set_property('tooltip_text', "Scalable\ Vector\ Graphics\-afbeeldingen\ maken\ en\ bewerken");
    $app->set_image('Gtk2::Image'->new_from_icon_name("inkscape",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Draw");
    $app->signal_connect('activate', sub {system "libreoffice\ \-\-draw &"});
    $app->set_property('tooltip_text', "Create\ and\ edit\ drawings\,\ flow\ charts\ and\ logos\ by\ using\ Draw\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-draw",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("MATE\ kleur\ selectie");
    $app->signal_connect('activate', sub {system "mate\-color\-select &"});
    $app->set_property('tooltip_text', "Kies\ kleuren\ van\ het\ palet\ of\ het\ scherm");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gcolor2",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # MULTIMEDIA # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Multimedia");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-multimedia",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("bomi");
    $app->signal_connect('activate', sub {system "bomi\ \-\-wake &"});
    $app->set_property('tooltip_text', "Play\ your\ media");
    $app->set_image('Gtk2::Image'->new_from_icon_name("bomi",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Cheese");
    $app->signal_connect('activate', sub {system "cheese &"});
    $app->set_property('tooltip_text', "Foto\'s\ en\ video\'s\ met\ een\ webcam\ maken\,\ met\ leuke\ visuele\ effecten");
    $app->set_image('Gtk2::Image'->new_from_icon_name("cheese",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("DeaDBeeF");
    $app->signal_connect('activate', sub {system "deadbeef &"});
    $app->set_property('tooltip_text', "Listen\ to\ music");
    $app->set_image('Gtk2::Image'->new_from_icon_name("deadbeef",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Kodi\ Media\ Center");
    $app->signal_connect('activate', sub {system "kodi &"});
    $app->set_property('tooltip_text', "Manage\ and\ view\ your\ media");
    $app->set_image('Gtk2::Image'->new_from_icon_name("kodi",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("mpv\ Media\ Player");
    $app->signal_connect('activate', sub {system "mpv\ \-\-profile\=pseudo\-gui\ \-\- &"});
    $app->set_property('tooltip_text', "Play\ movies\ and\ songs");
    $app->set_image('Gtk2::Image'->new_from_icon_name("mpv",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("PulseAudio\-volumeregeling");
    $app->signal_connect('activate', sub {system "pavucontrol &"});
    $app->set_property('tooltip_text', "Geluidsniveau\ aanpassen");
    $app->set_image('Gtk2::Image'->new_from_icon_name("multimedia\-volume\-control",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Radio\ Tray");
    $app->signal_connect('activate', sub {system "radiotray &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("radiotray",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # INTERNET # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Internet");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-internet",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Chromium");
    $app->signal_connect('activate', sub {system "chromium &"});
    $app->set_property('tooltip_text', "Verbinding\ maken\ met\ internet");
    $app->set_image('Gtk2::Image'->new_from_icon_name("chromium",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Dropbox");
    $app->signal_connect('activate', sub {system "dropboxd &"});
    $app->set_property('tooltip_text', "Dropbox\ is\ a\ free\ service\ that\ lets\ you\ bring\ your\ photos\,\ docs\,\ and\ videos\ anywhere\ and\ share\ them\ easily");
    $app->set_image('Gtk2::Image'->new_from_icon_name("dropbox",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("ELinks");
    $app->signal_connect('activate', sub {system "xterm\-color\ \-e\ \'\/usr\/bin\/elinks\' &"});
    $app->set_property('tooltip_text', "Browse\ the\ World\ Wide\ Web\ in\ Text\-Mode");
    $app->set_image('Gtk2::Image'->new_from_icon_name("html",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Geary");
    $app->signal_connect('activate', sub {system "geary &"});
    $app->set_property('tooltip_text', "E\-mail\ verzenden\ en\ ontvangen");
    $app->set_image('Gtk2::Image'->new_from_icon_name("geary",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Iceweasel");
    $app->signal_connect('activate', sub {system "iceweasel &"});
    $app->set_property('tooltip_text', "Verken\ het\ internet");
    $app->set_image('Gtk2::Image'->new_from_icon_name("iceweasel",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Insync");
    $app->signal_connect('activate', sub {system "insync\ start &"});
    $app->set_property('tooltip_text', "Launch\ Insync");
    $app->set_image('Gtk2::Image'->new_from_icon_name("insync",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Midori");
    $app->signal_connect('activate', sub {system "midori &"});
    $app->set_property('tooltip_text', "Surfen\ op\ het\ web");
    $app->set_image('Gtk2::Image'->new_from_icon_name("midori",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Midori\ Privé\-surfen");
    $app->signal_connect('activate', sub {system "midori\ \-\-private &"});
    $app->set_property('tooltip_text', "Open\ een\ nieuw\ privé\-surfvenster");
    $app->set_image('Gtk2::Image'->new_from_icon_name("midori",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("qBittorrent");
    $app->signal_connect('activate', sub {system "qbittorrent &"});
    $app->set_property('tooltip_text', "Bestanden\ downloaden\ en\ delen\ via\ BitTorrent");
    $app->set_image('Gtk2::Image'->new_from_icon_name("qbittorrent",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("QupZilla");
    $app->signal_connect('activate', sub {system "qupzilla &"});
    $app->set_property('tooltip_text', "Een\ snelle\ en\ veilige\ webbrowser");
    $app->set_image('Gtk2::Image'->new_from_icon_name("qupzilla",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Steam");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/steam &"});
    $app->set_property('tooltip_text', "Application\ for\ managing\ and\ playing\ games\ on\ Steam");
    $app->set_image('Gtk2::Image'->new_from_icon_name("steam",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Syncthing\ GTK");
    $app->signal_connect('activate', sub {system "\/usr\/bin\/syncthing\-gtk &"});
    $app->set_property('tooltip_text', "GUI\ for\ Syncthing");
    $app->set_image('Gtk2::Image'->new_from_icon_name("syncthing\-gtk",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # KANTOOR # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Kantoor");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("applications\-office",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Documentenviewer");
    $app->signal_connect('activate', sub {system "evince &"});
    $app->set_property('tooltip_text', "Documenten\ weergeven");
    $app->set_image('Gtk2::Image'->new_from_icon_name("evince",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice");
    $app->signal_connect('activate', sub {system "libreoffice &"});
    $app->set_property('tooltip_text', "The\ office\ productivity\ suite\ compatible\ to\ the\ open\ and\ standardized\ ODF\ document\ format\.\ Supported\ by\ The\ Document\ Foundation\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-startcenter",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Base");
    $app->signal_connect('activate', sub {system "libreoffice\ \-\-base &"});
    $app->set_property('tooltip_text', "Manage\ databases\,\ create\ queries\ and\ reports\ to\ track\ and\ manage\ your\ information\ by\ using\ Base\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-base",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Calc");
    $app->signal_connect('activate', sub {system "libreoffice\ \-\-calc &"});
    $app->set_property('tooltip_text', "Perform\ calculations\,\ analyze\ information\ and\ manage\ lists\ in\ spreadsheets\ by\ using\ Calc\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-calc",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Draw");
    $app->signal_connect('activate', sub {system "libreoffice\ \-\-draw &"});
    $app->set_property('tooltip_text', "Create\ and\ edit\ drawings\,\ flow\ charts\ and\ logos\ by\ using\ Draw\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-draw",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Impress");
    $app->signal_connect('activate', sub {system "libreoffice\ \-\-impress &"});
    $app->set_property('tooltip_text', "Create\ and\ edit\ presentations\ for\ slideshows\,\ meeting\ and\ Web\ pages\ by\ using\ Impress\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-impress",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Math");
    $app->signal_connect('activate', sub {system "libreoffice\ \-\-math &"});
    $app->set_property('tooltip_text', "Create\ and\ edit\ scientific\ formulas\ and\ equations\ by\ using\ Math\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-math",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("LibreOffice\ Writer");
    $app->signal_connect('activate', sub {system "libreoffice\ \-\-writer &"});
    $app->set_property('tooltip_text', "Create\ and\ edit\ text\ and\ graphics\ in\ letters\,\ reports\,\ documents\ and\ Web\ pages\ by\ using\ Writer\.");
    $app->set_image('Gtk2::Image'->new_from_icon_name("libreoffice\-writer",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("MATE\ Woordenboek");
    $app->signal_connect('activate', sub {system "mate\-dictionary &"});
    $app->set_property('tooltip_text', "Definities\ en\ spelling\ van\ woorden\ opzoeken\ in\ een\ on\-line\ woordenboek");
    $app->set_image('Gtk2::Image'->new_from_icon_name("accessories\-dictionary",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # SYSTEEM # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Systeem");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("preferences\-system",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Afdrukinstellingen");
    $app->signal_connect('activate', sub {system "system\-config\-printer &"});
    $app->set_property('tooltip_text', "Printers\ configureren");
    $app->set_image('Gtk2::Image'->new_from_icon_name("printer",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Caja");
    $app->signal_connect('activate', sub {system "caja\ \-\-no\-desktop\ \-\-browser &"});
    $app->set_property('tooltip_text', "Bestandssysteem\ doorbladeren\ met\ het\ bestandsbeheer");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-file\-manager",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("dconf\-editor");
    $app->signal_connect('activate', sub {system "dconf\-editor &"});
    $app->set_property('tooltip_text', "De\ gehele\ configuratie\-database\ rechtstreeks\ bewerken");
    $app->set_image('Gtk2::Image'->new_from_icon_name("dconf\-editor",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Htop");
    $app->signal_connect('activate', sub {system "xterm\-color\ \-e\ \'htop\' &"});
    $app->set_property('tooltip_text', "Show\ System\ Processes");
    $app->set_image('Gtk2::Image'->new_from_icon_name("htop",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Logbestand\-weergave");
    $app->signal_connect('activate', sub {system "mate\-system\-log &"});
    $app->set_property('tooltip_text', "Systeemlogboeken\ bekijken");
    $app->set_image('Gtk2::Image'->new_from_icon_name("logviewer",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("MATE\ Schijfgebruik");
    $app->signal_connect('activate', sub {system "mate\-disk\-usage\-analyzer &"});
    $app->set_property('tooltip_text', "Mapgroottes\ en\ beschikbare\ schijfruimte\ bekijken");
    $app->set_image('Gtk2::Image'->new_from_icon_name("mate\-disk\-usage\-analyzer",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Termite");
    $app->signal_connect('activate', sub {system "termite &"});
    $app->set_property('tooltip_text', "Use\ the\ command\ line");
    $app->set_image('Gtk2::Image'->new_from_icon_name("utilities\-terminal",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # INSTELLINGEN # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Instellingen");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("3D\ Acceleration");
    $app->signal_connect('activate', sub {system "driconf &"});
    $app->set_property('tooltip_text', "Change\ 3D\ Acceleration\ options");
    $app->set_image('Gtk2::Image'->new_from_pixbuf('Gtk2::Gdk::Pixbuf'->new_from_file_at_size("\/usr\/share\/driconf\/driconf\-icon\.png",22,22)));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Bestandsbeheer");
    $app->signal_connect('activate', sub {system "caja\-file\-management\-properties &"});
    $app->set_property('tooltip_text', "Het\ gedrag\ en\ uiterlijk\ van\ de\ bestandsbeheervensters\ aanpassen");
    $app->set_image('Gtk2::Image'->new_from_icon_name("system\-file\-manager",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Bluetooth\-adapters");
    $app->signal_connect('activate', sub {system "blueman\-adapters &"});
    $app->set_property('tooltip_text', "Bluetooth\-adapter\ eigenschappen");
    $app->set_image('Gtk2::Image'->new_from_icon_name("blueman\-device",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Bluetooth\-beheer");
    $app->signal_connect('activate', sub {system "blueman\-manager &"});
    $app->set_property('tooltip_text', "Blueman\ Bluetooth\-beheer");
    $app->set_image('Gtk2::Image'->new_from_icon_name("blueman",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Caja\-Actions\ Configuration\ Tool");
    $app->signal_connect('activate', sub {system "caja\-actions\-config\-tool &"});
    $app->set_property('tooltip_text', "Configure\ items\ to\ be\ added\ to\ the\ Caja\ context\ menus");
    $app->set_image('Gtk2::Image'->new_from_icon_name("caja\-actions",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Firewall\-instellingen");
    $app->signal_connect('activate', sub {system "gufw &"});
    $app->set_property('tooltip_text', "Een\ eenvoudige\ manier\ om\ uw\ firewall\ in\ te\ stellen");
    $app->set_image('Gtk2::Image'->new_from_icon_name("gufw",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Uiterlijk\ en\ bediening\ aanpassen");
    $app->signal_connect('activate', sub {system "lxappearance &"});
    $app->set_property('tooltip_text', "Past\ uiterlijk\ en\ bediening\ aan\ van\ uw\ bureaublad\ en\ toepassingen");
    $app->set_image('Gtk2::Image'->new_from_icon_name("preferences\-desktop\-theme",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    # # # # # # # # # # # # # # # # # # # # HOOFDMENU # # # # # # # # # # # # # # # # # # # # 
{
    my $apps = 'Gtk2::Menu'->new;
    my $cat = 'Gtk2::ImageMenuItem'->new("Hoofdmenu");
    $cat->set_image('Gtk2::Image'->new_from_icon_name("mozo",q{menu}));
{
    my $app = 'Gtk2::ImageMenuItem'->new("Config");
    $app->signal_connect('activate', sub {system "subl\ \/home\/faruk\/\.config\/menutray\/config\.pl &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("gtk\-edit",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Exit");
    $app->signal_connect('activate', sub {system "pkill\ perl &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("exit",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Menu");
    $app->signal_connect('activate', sub {system "subl\ \/home\/faruk\/\.config\/menutray\/menu\.pl &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("gtk\-edit",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Menutray");
    $app->signal_connect('activate', sub {system "gksu\-polkit\ subl\ \/usr\/bin\/menutray &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("gtk\-edit",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Reload");
    $app->signal_connect('activate', sub {system "pkill\ perl\;\ menutray\ \-r\ \-i\ \-u &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("reload",q{menu}));
    $apps->append($app);
}
{
    my $app = 'Gtk2::ImageMenuItem'->new("Schema");
    $app->signal_connect('activate', sub {system "subl\ \/home\/faruk\/\.config\/menutray\/schema\.pl &"});
    $app->set_image('Gtk2::Image'->new_from_icon_name("gtk\-edit",q{menu}));
    $apps->append($app);
}
    $cat->set_submenu($apps);
    $menu->append($cat);
}

    $menu->append('Gtk2::SeparatorMenuItem'->new);
{
    my $item = 'Gtk2::ImageMenuItem'->new("Sluiten\ ");
    $item->set_image('Gtk2::Image'->new_from_icon_name("gtk\-close",q{menu}));
    $item->signal_connect('activate', sub {system "xdotool\ getactivewindow\ windowraise\ windowunmap &"});
    $menu->append($item);
}

{
    my $item = 'Gtk2::ImageMenuItem'->new("Afsluiten\.\.");
    $item->set_image('Gtk2::Image'->new_from_icon_name("window\-close",q{menu}));
    $item->signal_connect('activate', sub {system "yad_logout &"});
    $menu->append($item);
}

    $menu->show_all;
    return 1;
}
'Gtk2'->main;
