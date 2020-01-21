(lang dune 1.11)
(name webmachine)
(version 0.1.0)
(source (github idkjs/webmachine))
(license MIT)
(authors "Alain Armand")
(maintainers "Alain Armand")

(using fmt 1.2 (enabled_for ocaml))
(generate_opam_files true)

(package
 (name webmachine)
 (synopsis "ocaml webmachine implementation")
 (depends
  dune
  rely
  base
  stdio))
