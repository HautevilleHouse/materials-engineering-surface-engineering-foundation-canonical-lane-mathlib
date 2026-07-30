import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLatticeType : String
  unitCellVectors : String
  symmetryGroup : String
  latticeParameter : Float
  basisAtoms : List String
  latticeClosed : Prop

define CrystalLatticeEvidence (C : CrystalLatticePackage) where
  bravaisLatticeTypeClosed : C.bravaisLatticeType = "fcc"
  unitCellVectorsClosed : C.unitCellVectors = "a1, a2, a3"
  symmetryGroupClosed : C.symmetryGroup = "Fm-3m"
  latticeParameterClosed : C.latticeParameter = 0.405
  basisAtomsClosed : C.basisAtoms = ["Al", "Ni"]
  latticeClosedTerm : C.latticeClosed

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.bravaisLatticeType = "fcc" ∧ C.unitCellVectors = "a1, a2, a3" ∧ C.symmetryGroup = "Fm-3m" ∧ C.latticeParameter = 0.405 ∧ C.basisAtoms = ["Al", "Ni"] ∧ C.latticeClosed

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage) (E : CrystalLatticeEvidence C) : CrystalLatticeClosed C := by
  exact And.intro E.bravaisLatticeTypeClosed (And.intro E.unitCellVectorsClosed (And.intro E.symmetryGroupClosed (And.intro E.latticeParameterClosed (And.intro E.basisAtomsClosed E.latticeClosedTerm))))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse