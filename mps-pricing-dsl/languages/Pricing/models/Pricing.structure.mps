<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2f4abf87-6023-4adf-93d9-2683da48157d(Pricing.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="4KC2aIjRRdM">
    <property role="EcuMT" value="5487645678964274034" />
    <property role="TrG5h" value="PricingStrategy" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4KC2aIjSj1Y" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964387966" />
      <property role="20kJfa" value="sameBasePricesAs" />
      <ref role="20lvS9" node="4KC2aIjRRdM" resolve="PricingStrategy" />
    </node>
    <node concept="1TJgyj" id="4KC2aIjRRe6" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964274054" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="basePrices" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4KC2aIjRRdO" resolve="BasePrice" />
    </node>
    <node concept="1TJgyj" id="4KC2aIjRRe7" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964274055" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="discountPolicies" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4KC2aIjRRe1" resolve="DiscountPolicy" />
    </node>
    <node concept="PrWs8" id="4KC2aIjRRdN" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4KC2aIjRRdO">
    <property role="EcuMT" value="5487645678964274036" />
    <property role="TrG5h" value="BasePrice" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4KC2aIjRRdP" role="1TKVEl">
      <property role="IQ2nx" value="5487645678964274037" />
      <property role="TrG5h" value="itemID" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="4KC2aIjRRe0" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964274048" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="amount" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4KC2aIjRRdR" resolve="Amount" />
    </node>
  </node>
  <node concept="1TIwiD" id="4KC2aIjRRdR">
    <property role="EcuMT" value="5487645678964274039" />
    <property role="TrG5h" value="Amount" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4KC2aIjRRdW" role="1TKVEl">
      <property role="IQ2nx" value="5487645678964274044" />
      <property role="TrG5h" value="currencey" />
      <ref role="AX2Wp" node="4KC2aIjRRdS" resolve="Currency" />
    </node>
    <node concept="1TJgyi" id="4KC2aIjRRdX" role="1TKVEl">
      <property role="IQ2nx" value="5487645678964274045" />
      <property role="TrG5h" value="integerPart" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4KC2aIjRRdY" role="1TKVEl">
      <property role="IQ2nx" value="5487645678964274046" />
      <property role="TrG5h" value="decimalPart" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="25R3W" id="4KC2aIjRRdS">
    <property role="3F6X1D" value="5487645678964274040" />
    <property role="TrG5h" value="Currency" />
    <node concept="25R33" id="4KC2aIjRRdT" role="25R1y">
      <property role="3tVfz5" value="5487645678964274041" />
      <property role="TrG5h" value="EUR" />
    </node>
    <node concept="25R33" id="4KC2aIjRRdU" role="25R1y">
      <property role="3tVfz5" value="5487645678964274042" />
      <property role="TrG5h" value="USD" />
    </node>
    <node concept="25R33" id="4KC2aIjRRdV" role="25R1y">
      <property role="3tVfz5" value="5487645678964274043" />
      <property role="TrG5h" value="YEN" />
    </node>
  </node>
  <node concept="1TIwiD" id="4KC2aIjRRe1">
    <property role="EcuMT" value="5487645678964274049" />
    <property role="TrG5h" value="DiscountPolicy" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2Ad$hsw6lAI" role="1TKVEl">
      <property role="IQ2nx" value="2994208855780055470" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="4KC2aIjRRe4" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964274052" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4KC2aIjRRe2" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="4KC2aIjRRe5" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964274053" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="discount" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4KC2aIjRRe2" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4KC2aIjRRe2">
    <property role="EcuMT" value="5487645678964274050" />
    <property role="TrG5h" value="Expression" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="4KC2aIjSq8u">
    <property role="EcuMT" value="5487645678964417054" />
    <property role="TrG5h" value="ItemQuantity" />
    <ref role="1TJDcQ" node="4KC2aIjRRe2" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="4KC2aIjSq8E">
    <property role="EcuMT" value="5487645678964417066" />
    <property role="TrG5h" value="GreaterThan" />
    <ref role="1TJDcQ" node="4KC2aIjSq8F" resolve="BinaryExpression" />
  </node>
  <node concept="1TIwiD" id="4KC2aIjSq8F">
    <property role="EcuMT" value="5487645678964417067" />
    <property role="TrG5h" value="BinaryExpression" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="4KC2aIjRRe2" resolve="Expression" />
    <node concept="1TJgyj" id="4KC2aIjSq8H" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964417069" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="left" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4KC2aIjRRe2" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="4KC2aIjSq8I" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964417070" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="right" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4KC2aIjRRe2" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4KC2aIjSq9$">
    <property role="EcuMT" value="5487645678964417124" />
    <property role="TrG5h" value="IntLiteral" />
    <ref role="1TJDcQ" node="4KC2aIjRRe2" resolve="Expression" />
    <node concept="1TJgyi" id="4KC2aIjSq9R" role="1TKVEl">
      <property role="IQ2nx" value="5487645678964417143" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="4KC2aIjSUcI">
    <property role="EcuMT" value="5487645678964548398" />
    <property role="TrG5h" value="Percentage" />
    <ref role="1TJDcQ" node="4KC2aIjRRe2" resolve="Expression" />
    <node concept="1TJgyj" id="4KC2aIjSUcJ" role="1TKVEi">
      <property role="IQ2ns" value="5487645678964548399" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="base" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4KC2aIjRRe2" resolve="Expression" />
    </node>
  </node>
</model>

