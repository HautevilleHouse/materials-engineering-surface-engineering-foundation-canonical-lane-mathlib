import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  pointGroup : Type v
  spaceGroup : Type w
  bravaisLattice : Prop
  primitiveCell : Prop
  reciprocalLattice : Prop
  brillouinZone : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  primitiveCellClosed : C.primitiveCell
  reciprocalLatticeClosed : C.reciprocalLattice
  brillouinZoneClosed : C.brillouinZone

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravai sLattice ∧ C.primitiveCell ∧ C.reciprocalLattice ∧ C.brillouinZone

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed
    (And.intro E.primitiveCellClosed
      (And.intro E.reciprocalLatticeClosed E.brillouinZoneClosed))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse