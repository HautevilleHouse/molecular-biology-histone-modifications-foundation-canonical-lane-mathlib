import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean

structure ChromatinImmunoprecipitationPackage where
  antibodySpecificity : Prop
  crosslinkingEfficiency : Prop
  shearingFragmentSize : Prop
  pulldownEnrichment : Prop
  sequencingDepth : Prop

structure ChromatinImmunoprecipitationEvidence (C : ChromatinImmunoprecipitationPackage) where
  antibodySpecificityClosed : C.antibodySpecificity
  crosslinkingEfficiencyClosed : C.crosslinkingEfficiency
  shearingFragmentSizeClosed : C.shearingFragmentSize
  pulldownEnrichmentClosed : C.pulldownEnrichment
  sequencingDepthClosed : C.sequencingDepth

def ChromatinImmunoprecipitationClosed (C : ChromatinImmunoprecipitationPackage) : Prop :=
  C.antibodySpecificity ∧ C.crosslinkingEfficiency ∧ C.shearingFragmentSize ∧
  C.pulldownEnrichment ∧ C.sequencingDepth

theorem chip_closed_from_evidence (C : ChromatinImmunoprecipitationPackage)
    (E : ChromatinImmunoprecipitationEvidence C) : ChromatinImmunoprecipitationClosed C := by
  exact And.intro E.antibodySpecificityClosed
    (And.intro E.crosslinkingEfficiencyClosed
      (And.intro E.shearingFragmentSizeClosed
        (And.intro E.pulldownEnrichmentClosed E.sequencingDepthClosed)))

end MolecularBiologyHistoneModificationsFoundationCanonicalLaneLean
end HautevilleHouse