{ user, ... }:
{
  sops = {
    age.keyFile = "/home/${user}/.config/sops/age/keys.txt";

    defaultSopsFile = ../../secrets.yaml;
    validateSopsFiles = false;

    secrets = {
      "private_keys/${user}".path = "/home/${user}/.ssh/id_ed25519";
    };
  };
}
