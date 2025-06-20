{ lib, ... }: {

  services = {
    flatpak = {
      enable = true;
      uninstallUnmanaged = true;
      update = {
        onActivation = true;
        auto = {
          enable = true;
          onCalendar = "weekly";
        };
      };

      remotes = lib.mkOptionDefault [{
        name = "flathub-beta";
        location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
      }];

      packages = [
        # Web Browsing
        "com.brave.Browser"
        #"org.torproject.torbrowser-launcher"
        # Communication
        #"im.riot.Riot" # looks like Quadrix and nheko are working alternatives!
        "org.briarproject.Briar"
        #"org.signal.Signal"
        # Productivity
        #"org.onlyoffice.desktopeditors"
        #"org.libreoffice.LibreOffice"
        # Media
        "org.videolan.VLC"
        # Development
        "com.vscodium.codium"
        # Security
        "org.keepassxc.KeePassXC"
        "com.protonvpn.www"
        "com.github.tchx84.Flatseal"
        # Utility
        #"com.calibre_ebook.calibre"
        "me.kozec.syncthingtk"
        # Virtualization
        "io.podman_desktop.PodmanDesktop"
        #"org.gnome.Boxes"
      ];

    }; # end services block

  }; # end flatpak block

}
