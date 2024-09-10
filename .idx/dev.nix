# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    # pkgs.go
    # pkgs.python311
    # pkgs.python311Packages.pip
    # pkgs.nodejs_20
    # pkgs.nodePackages.nodemon
    # pkgs.openssh-server
    # pkgs.screen
    # pkgs.python
    # pkgs.git
    # pkgs.git-core
    # pkgs.openjdk-8-jdk
    # pkgs.android-tools-adb
    # pkgs.bc
    # pkgs.bison
    # pkgs.build-essential
    # pkgs.curl
    # pkgs.flex
    # pkgs.g++-multilib
    # pkgs.gcc-multilib
    # pkgs.gnupg
    # pkgs.gperf
    # pkgs.imagemagick
    # pkgs.lib32ncurses-dev
    # pkgs.lib32readline-dev
    # pkgs.lib32z1-dev 
    # pkgs.liblz4-tool
    # pkgs.libncurses5-dev
    # pkgs.libsdl1.2-dev
    # pkgs.libssl-dev
    # pkgs.libxml2
    # pkgs.libxml2-utils
    # pkgs.lzop pngcrush
    # pkgs.rsync
    # pkgs.schedtool
    # pkgs.squashfs-tools
    # pkgs.xsltproc
    # pkgs.yasm
    # pkgs.zip
    # pkgs.zlib1g-dev
    # pkgs.libtinfo5
    # pkgs.libncurses5
    # pkgs.neofetch
    # pkgs.llvm
    # pkgs.lld
  ];

  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # "vscodevim.vim"
    ];

    # Enable previews
    previews = {
      enable = true;
      previews = {
        # web = {
        #   # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
        #   # and show it in IDX's web preview panel
        #   command = ["npm" "run" "dev"];
        #   manager = "web";
        #   env = {
        #     # Environment variables to set for your server
        #     PORT = "$PORT";
        #   };
        # };
      };
    };

    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: install JS dependencies from NPM
        # npm-install = "npm install";
      };
      # Runs when the workspace is (re)started
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}
