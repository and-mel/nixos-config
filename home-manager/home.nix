{ homeStateVersion, user, ... }: {
	imports = [
	  ./dotfiles
	  ./modules
		./home-packages.nix
	];

	home = {
		username = user;
		homeDirectory = "/home/${user}";
		stateVersion = homeStateVersion;
	};
}
