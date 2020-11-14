#
# © 2019 Kirill Elagin <kirelagin@gmail.com>
#
# SPDX-License-Identifier: MIT
#

{ pkgs }:

let
  inherit (pkgs.lib) mkOption types;

in

{
  rtype = "SSHFP";
  options = {
    data = mkOption {
      type = types.str;
      example = "4 2 9252e4e4780b31c9d8fddee82349f7cbda4e324341b3bea4b70c38cf97d67fe5";
      description = "A ressource record value according to RFC 4255";
    };
  };
  dataToString = {data, ...}: data;
  fromString = data: { inherit data; };
}
