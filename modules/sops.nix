{
  inputs,
  user,
  config,
  ...
}:
{
  sops = {
    defaultSopsFile = ../secrets.yaml;
    validateSopsFiles = true;

    age = {
      # sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];
      keyFile = "/home/${user}/.config/sops/age/keys.txt";
      # generateKey = true;
    };

    secrets = {
      # Add secrets to be added to file here
    };
  };
}
