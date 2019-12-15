{ lib, rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  pname = "swaylayout";
  version = "0.3.1";

  src = fetchFromGitHub {
    owner = "filalex77";
    repo = pname;
    rev = "v${version}";
    sha256 = "0vdmfdgbr6jwin4vyzrlnri55b7nndgdn88rhavk05z5b3f0n9ac";
  };

  cargoSha256 = "05zl4whc4aglg2l0m96z1r60zd9ay506xcifnirymjydgssqjqrx";

  meta = with lib; {
    description = "Get the current Sway keyboard layout";
    homepage = "https://github.com/filalex77/swaylayout";
    license = licenses.mit;
    maintainers = with maintainers; [ filalex77 ];
    platforms = platforms.linux;
  };
}
