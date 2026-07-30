import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLattice : Type u
  unitCell : Type v
  latticeParameters : Prop
  symmetryGroup : Prop
  bravaisLatticeDefined : bravaisLattice
  unitCellDefined : unitCell
  latticeParametersTerm : latticeParameters
  symmetryGroupTerm : symmetryGroup

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  bravaisLatticeClosed : C.bravaisLattice
  unitCellClosed : C.unitCell
  latticeParametersClosed : C.latticeParameters
  symmetryGroupClosed : C.symmetryGroup

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.bravaisLattice ∧ C.unitCell ∧ C.latticeParameters ∧ C.symmetryGroup

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.unitCellClosed (And.intro E.latticeParametersClosed E.symmetryGroupClosed))

end MaterialsEngineeringSurfaceEngineeringFoundationCanonicalLaneLean
end HautevilleHouse