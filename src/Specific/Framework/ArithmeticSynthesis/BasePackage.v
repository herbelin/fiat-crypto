(* This file is autogenerated from Base.v by remake_packages.py *)
Require Import Crypto.Specific.Framework.CurveParametersPackage.
Require Export Crypto.Specific.Framework.ArithmeticSynthesis.Base.
Require Import Crypto.Specific.Framework.Packages.
Require Import Crypto.Util.TagList.

Module TAG.
  Inductive tags := r | m | wt | sz2 | half_sz | half_sz_nonzero | s_nonzero | sz_le_log2_m | m_correct | m_enc | coef | coef_mod | sz_nonzero | wt_nonzero | wt_nonneg | wt_divides | wt_divides' | wt_divides_chains | wt_pos | wt_multiples.
End TAG.

Ltac add_r pkg :=
  let bitwidth := Tag.get pkg TAG.bitwidth in
  let r := fresh "r" in
  let r := pose_r bitwidth r in
  Tag.update pkg TAG.r r.

Ltac add_m pkg :=
  let s := Tag.get pkg TAG.s in
  let c := Tag.get pkg TAG.c in
  let m := fresh "m" in
  let m := pose_m s c m in
  Tag.update pkg TAG.m m.

Ltac add_wt pkg :=
  let m := Tag.get pkg TAG.m in
  let sz := Tag.get pkg TAG.sz in
  let wt := fresh "wt" in
  let wt := pose_wt m sz wt in
  Tag.update pkg TAG.wt wt.

Ltac add_sz2 pkg :=
  let sz := Tag.get pkg TAG.sz in
  let sz2 := fresh "sz2" in
  let sz2 := pose_sz2 sz sz2 in
  Tag.update pkg TAG.sz2 sz2.

Ltac add_half_sz pkg :=
  let sz := Tag.get pkg TAG.sz in
  let half_sz := fresh "half_sz" in
  let half_sz := pose_half_sz sz half_sz in
  Tag.update pkg TAG.half_sz half_sz.

Ltac add_half_sz_nonzero pkg :=
  let half_sz := Tag.get pkg TAG.half_sz in
  let half_sz_nonzero := fresh "half_sz_nonzero" in
  let half_sz_nonzero := pose_half_sz_nonzero half_sz half_sz_nonzero in
  Tag.update pkg TAG.half_sz_nonzero half_sz_nonzero.

Ltac add_s_nonzero pkg :=
  let s := Tag.get pkg TAG.s in
  let s_nonzero := fresh "s_nonzero" in
  let s_nonzero := pose_s_nonzero s s_nonzero in
  Tag.update pkg TAG.s_nonzero s_nonzero.

Ltac add_sz_le_log2_m pkg :=
  let sz := Tag.get pkg TAG.sz in
  let m := Tag.get pkg TAG.m in
  let sz_le_log2_m := fresh "sz_le_log2_m" in
  let sz_le_log2_m := pose_sz_le_log2_m sz m sz_le_log2_m in
  Tag.update pkg TAG.sz_le_log2_m sz_le_log2_m.

Ltac add_m_correct pkg :=
  let m := Tag.get pkg TAG.m in
  let s := Tag.get pkg TAG.s in
  let c := Tag.get pkg TAG.c in
  let m_correct := fresh "m_correct" in
  let m_correct := pose_m_correct m s c m_correct in
  Tag.update pkg TAG.m_correct m_correct.

Ltac add_m_enc pkg :=
  let sz := Tag.get pkg TAG.sz in
  let s := Tag.get pkg TAG.s in
  let c := Tag.get pkg TAG.c in
  let wt := Tag.get pkg TAG.wt in
  let m_enc := fresh "m_enc" in
  let m_enc := pose_m_enc sz s c wt m_enc in
  Tag.update pkg TAG.m_enc m_enc.

Ltac add_coef pkg :=
  let sz := Tag.get pkg TAG.sz in
  let wt := Tag.get pkg TAG.wt in
  let m_enc := Tag.get pkg TAG.m_enc in
  let coef_div_modulus := Tag.get pkg TAG.coef_div_modulus in
  let coef := fresh "coef" in
  let coef := pose_coef sz wt m_enc coef_div_modulus coef in
  Tag.update pkg TAG.coef coef.

Ltac add_coef_mod pkg :=
  let sz := Tag.get pkg TAG.sz in
  let wt := Tag.get pkg TAG.wt in
  let m := Tag.get pkg TAG.m in
  let coef := Tag.get pkg TAG.coef in
  let coef_mod := fresh "coef_mod" in
  let coef_mod := pose_coef_mod sz wt m coef coef_mod in
  Tag.update pkg TAG.coef_mod coef_mod.

Ltac add_sz_nonzero pkg :=
  let sz := Tag.get pkg TAG.sz in
  let sz_nonzero := fresh "sz_nonzero" in
  let sz_nonzero := pose_sz_nonzero sz sz_nonzero in
  Tag.update pkg TAG.sz_nonzero sz_nonzero.

Ltac add_wt_nonzero pkg :=
  let wt := Tag.get pkg TAG.wt in
  let wt_nonzero := fresh "wt_nonzero" in
  let wt_nonzero := pose_wt_nonzero wt wt_nonzero in
  Tag.update pkg TAG.wt_nonzero wt_nonzero.

Ltac add_wt_nonneg pkg :=
  let wt := Tag.get pkg TAG.wt in
  let wt_nonneg := fresh "wt_nonneg" in
  let wt_nonneg := pose_wt_nonneg wt wt_nonneg in
  Tag.update pkg TAG.wt_nonneg wt_nonneg.

Ltac add_wt_divides pkg :=
  let wt := Tag.get pkg TAG.wt in
  let wt_divides := fresh "wt_divides" in
  let wt_divides := pose_wt_divides wt wt_divides in
  Tag.update pkg TAG.wt_divides wt_divides.

Ltac add_wt_divides' pkg :=
  let wt := Tag.get pkg TAG.wt in
  let wt_divides := Tag.get pkg TAG.wt_divides in
  let wt_divides' := fresh "wt_divides'" in
  let wt_divides' := pose_wt_divides' wt wt_divides wt_divides' in
  Tag.update pkg TAG.wt_divides' wt_divides'.

Ltac add_wt_divides_chains pkg :=
  let wt := Tag.get pkg TAG.wt in
  let carry_chains := Tag.get pkg TAG.carry_chains in
  let wt_divides_chains := fresh "wt_divides_chains" in
  let wt_divides_chains := pose_wt_divides_chains wt carry_chains wt_divides_chains in
  Tag.update pkg TAG.wt_divides_chains wt_divides_chains.

Ltac add_wt_pos pkg :=
  let wt := Tag.get pkg TAG.wt in
  let wt_pos := fresh "wt_pos" in
  let wt_pos := pose_wt_pos wt wt_pos in
  Tag.update pkg TAG.wt_pos wt_pos.

Ltac add_wt_multiples pkg :=
  let wt := Tag.get pkg TAG.wt in
  let wt_multiples := fresh "wt_multiples" in
  let wt_multiples := pose_wt_multiples wt wt_multiples in
  Tag.update pkg TAG.wt_multiples wt_multiples.

Ltac add_Base_package pkg :=
  let pkg := add_r pkg in
  let pkg := add_m pkg in
  let pkg := add_wt pkg in
  let pkg := add_sz2 pkg in
  let pkg := add_half_sz pkg in
  let pkg := add_half_sz_nonzero pkg in
  let pkg := add_s_nonzero pkg in
  let pkg := add_sz_le_log2_m pkg in
  let pkg := add_m_correct pkg in
  let pkg := add_m_enc pkg in
  let pkg := add_coef pkg in
  let pkg := add_coef_mod pkg in
  let pkg := add_sz_nonzero pkg in
  let pkg := add_wt_nonzero pkg in
  let pkg := add_wt_nonneg pkg in
  let pkg := add_wt_divides pkg in
  let pkg := add_wt_divides' pkg in
  let pkg := add_wt_divides_chains pkg in
  let pkg := add_wt_pos pkg in
  let pkg := add_wt_multiples pkg in
  Tag.strip_local pkg.


Module MakeBasePackage (PKG : PrePackage).
  Module Import MakeBasePackageInternal := MakePackageBase PKG.

  Ltac get_r _ := get TAG.r.
  Notation r := (ltac:(let v := get_r () in exact v)) (only parsing).
  Ltac get_m _ := get TAG.m.
  Notation m := (ltac:(let v := get_m () in exact v)) (only parsing).
  Ltac get_wt _ := get TAG.wt.
  Notation wt := (ltac:(let v := get_wt () in exact v)) (only parsing).
  Ltac get_sz2 _ := get TAG.sz2.
  Notation sz2 := (ltac:(let v := get_sz2 () in exact v)) (only parsing).
  Ltac get_half_sz _ := get TAG.half_sz.
  Notation half_sz := (ltac:(let v := get_half_sz () in exact v)) (only parsing).
  Ltac get_half_sz_nonzero _ := get TAG.half_sz_nonzero.
  Notation half_sz_nonzero := (ltac:(let v := get_half_sz_nonzero () in exact v)) (only parsing).
  Ltac get_s_nonzero _ := get TAG.s_nonzero.
  Notation s_nonzero := (ltac:(let v := get_s_nonzero () in exact v)) (only parsing).
  Ltac get_sz_le_log2_m _ := get TAG.sz_le_log2_m.
  Notation sz_le_log2_m := (ltac:(let v := get_sz_le_log2_m () in exact v)) (only parsing).
  Ltac get_m_correct _ := get TAG.m_correct.
  Notation m_correct := (ltac:(let v := get_m_correct () in exact v)) (only parsing).
  Ltac get_m_enc _ := get TAG.m_enc.
  Notation m_enc := (ltac:(let v := get_m_enc () in exact v)) (only parsing).
  Ltac get_coef _ := get TAG.coef.
  Notation coef := (ltac:(let v := get_coef () in exact v)) (only parsing).
  Ltac get_coef_mod _ := get TAG.coef_mod.
  Notation coef_mod := (ltac:(let v := get_coef_mod () in exact v)) (only parsing).
  Ltac get_sz_nonzero _ := get TAG.sz_nonzero.
  Notation sz_nonzero := (ltac:(let v := get_sz_nonzero () in exact v)) (only parsing).
  Ltac get_wt_nonzero _ := get TAG.wt_nonzero.
  Notation wt_nonzero := (ltac:(let v := get_wt_nonzero () in exact v)) (only parsing).
  Ltac get_wt_nonneg _ := get TAG.wt_nonneg.
  Notation wt_nonneg := (ltac:(let v := get_wt_nonneg () in exact v)) (only parsing).
  Ltac get_wt_divides _ := get TAG.wt_divides.
  Notation wt_divides := (ltac:(let v := get_wt_divides () in exact v)) (only parsing).
  Ltac get_wt_divides' _ := get TAG.wt_divides'.
  Notation wt_divides' := (ltac:(let v := get_wt_divides' () in exact v)) (only parsing).
  Ltac get_wt_divides_chains _ := get TAG.wt_divides_chains.
  Notation wt_divides_chains := (ltac:(let v := get_wt_divides_chains () in exact v)) (only parsing).
  Ltac get_wt_pos _ := get TAG.wt_pos.
  Notation wt_pos := (ltac:(let v := get_wt_pos () in exact v)) (only parsing).
  Ltac get_wt_multiples _ := get TAG.wt_multiples.
  Notation wt_multiples := (ltac:(let v := get_wt_multiples () in exact v)) (only parsing).
End MakeBasePackage.
