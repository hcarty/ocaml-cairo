(* This file is part of the tutorial
   http://cairo.forge.ocamlcore.org/tutorial/
*)

let () =
  let surface = Cairo.Image.create Cairo.Image.ARGB32 120 120 in
  let cr = Cairo.create surface in
  (* Examples are in 1.0 x 1.0 coordinate space *)
  Cairo.scale cr 120. 120.;

  (* Drawing code goes here *)
  Cairo.set_line_width cr 0.1;
  Cairo.set_source_rgb cr 0. 0. 0.;
  Cairo.rectangle cr 0.25 0.25 0.5 0.5;
  Cairo.stroke cr;

  (* Write output *)
  Cairo.PNG.write surface "stroke.png"
