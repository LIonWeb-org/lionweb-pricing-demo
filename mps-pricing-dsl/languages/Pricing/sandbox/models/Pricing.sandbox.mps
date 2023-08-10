<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8bd5626a-20b2-43c9-ad59-fab35f307bc1(Pricing.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="ded39f0a-4290-489a-84fc-2da608d119da" name="Pricing" version="0" />
    <use id="97ef2b8d-23e1-433e-8d23-48f916dd314d" name="io.lionweb.mps.converter.lang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ded39f0a-4290-489a-84fc-2da608d119da" name="Pricing">
      <concept id="5487645678964417067" name="Pricing.structure.BinaryExpression" flags="ng" index="3vMqE0">
        <child id="5487645678964417070" name="right" index="3vMqE5" />
        <child id="5487645678964417069" name="left" index="3vMqE6" />
      </concept>
      <concept id="5487645678964417066" name="Pricing.structure.GreaterThan" flags="ng" index="3vMqE1" />
      <concept id="5487645678964417054" name="Pricing.structure.ItemQuantity" flags="ng" index="3vMqEP" />
      <concept id="5487645678964417124" name="Pricing.structure.IntLiteral" flags="ng" index="3vMqFf">
        <property id="5487645678964417143" name="value" index="3vMqFs" />
      </concept>
      <concept id="5487645678964548398" name="Pricing.structure.Percentage" flags="ng" index="3vMUI5">
        <child id="5487645678964548399" name="base" index="3vMUI4" />
      </concept>
      <concept id="5487645678964274049" name="Pricing.structure.DiscountPolicy" flags="ng" index="3vXRGE">
        <property id="2994208855780055470" name="description" index="9_cyT" />
        <child id="5487645678964274053" name="discount" index="3vXRGI" />
        <child id="5487645678964274052" name="condition" index="3vXRGJ" />
      </concept>
      <concept id="5487645678964274034" name="Pricing.structure.PricingStrategy" flags="ng" index="3vXRJp">
        <reference id="5487645678964387966" name="sameBasePricesAs" index="3vMjzl" />
        <child id="5487645678964274055" name="discountPolicies" index="3vXRGG" />
        <child id="5487645678964274054" name="basePrices" index="3vXRGH" />
      </concept>
      <concept id="5487645678964274039" name="Pricing.structure.Amount" flags="ng" index="3vXRJs">
        <property id="5487645678964274046" name="decimalPart" index="3vXRJl" />
        <property id="5487645678964274045" name="integerPart" index="3vXRJm" />
        <property id="5487645678964274044" name="currencey" index="3vXRJn" />
      </concept>
      <concept id="5487645678964274036" name="Pricing.structure.BasePrice" flags="ng" index="3vXRJv">
        <property id="5487645678964274037" name="itemID" index="3vXRJu" />
        <child id="5487645678964274048" name="amount" index="3vXRGF" />
      </concept>
    </language>
    <language id="97ef2b8d-23e1-433e-8d23-48f916dd314d" name="io.lionweb.mps.converter.lang">
      <concept id="3631234780355719700" name="io.lionweb.mps.converter.lang.structure.NodeRef" flags="ng" index="pgsVv">
        <reference id="3631234780355720143" name="target" index="pgsW4" />
      </concept>
      <concept id="3631234780355716573" name="io.lionweb.mps.converter.lang.structure.ExportInstanceToJson" flags="ng" index="pgt$m">
        <property id="3631234780355961878" name="scope" index="pjpzt" />
        <child id="3631234780355719074" name="instances" index="pgtdD" />
      </concept>
      <concept id="5028875375328515028" name="io.lionweb.mps.converter.lang.structure.APathConverter" flags="ng" index="VS7hm">
        <property id="5028875375328515031" name="path" index="VS7hl" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3vXRJp" id="4KC2aIjSj1U">
    <property role="TrG5h" value="NoDiscounts" />
    <node concept="3vXRJv" id="4KC2aIjSj1V" role="3vXRGH">
      <property role="3vXRJu" value="PAPER01" />
      <node concept="3vXRJs" id="4KC2aIjSj1W" role="3vXRGF">
        <property role="3vXRJm" value="10" />
        <property role="3vXRJl" value="23" />
        <property role="3vXRJn" value="4KC2aIjRRdU/USD" />
      </node>
    </node>
    <node concept="3vXRJv" id="2Ad$hsw6Pvc" role="3vXRGH">
      <property role="3vXRJu" value="PAPER02" />
      <node concept="3vXRJs" id="2Ad$hsw6Pvd" role="3vXRGF">
        <property role="3vXRJm" value="12" />
        <property role="3vXRJl" value="20" />
        <property role="3vXRJn" value="4KC2aIjRRdU/USD" />
      </node>
    </node>
    <node concept="3vXRJv" id="2Ad$hsw6Pvi" role="3vXRGH">
      <property role="3vXRJu" value="STAPLER_BASE" />
      <node concept="3vXRJs" id="2Ad$hsw6Pvj" role="3vXRGF">
        <property role="3vXRJm" value="20" />
        <property role="3vXRJl" value="0" />
        <property role="3vXRJn" value="4KC2aIjRRdU/USD" />
      </node>
    </node>
  </node>
  <node concept="3vXRJp" id="4KC2aIjSj1X">
    <property role="TrG5h" value="SummerSeason" />
    <ref role="3vMjzl" node="4KC2aIjSj1U" resolve="NoDiscounts" />
    <node concept="3vXRGE" id="4KC2aIjSGv6" role="3vXRGG">
      <property role="9_cyT" value="summer discount" />
      <node concept="3vMUI5" id="4KC2aIjTdGc" role="3vXRGI">
        <node concept="3vMqFf" id="4KC2aIjTdGg" role="3vMUI4">
          <property role="3vMqFs" value="5" />
        </node>
      </node>
      <node concept="3vMqE1" id="4KC2aIjSUcx" role="3vXRGJ">
        <node concept="3vMqEP" id="4KC2aIjSUcB" role="3vMqE6" />
        <node concept="3vMqFf" id="4KC2aIjSUcG" role="3vMqE5">
          <property role="3vMqFs" value="10" />
        </node>
      </node>
    </node>
  </node>
  <node concept="pgt$m" id="4KC2aIjTopx">
    <property role="TrG5h" value="LionWebExporter" />
    <property role="VS7hl" value="${pricing-dsl.home}/build/strategies.json" />
    <property role="pjpzt" value="39$JcGFaino/closure" />
    <node concept="pgsVv" id="4KC2aIjTopy" role="pgtdD">
      <ref role="pgsW4" node="4KC2aIjSj1U" resolve="NoDiscounts" />
    </node>
    <node concept="pgsVv" id="4KC2aIjTop$" role="pgtdD">
      <ref role="pgsW4" node="4KC2aIjSj1X" resolve="SummerSeason" />
    </node>
  </node>
</model>

