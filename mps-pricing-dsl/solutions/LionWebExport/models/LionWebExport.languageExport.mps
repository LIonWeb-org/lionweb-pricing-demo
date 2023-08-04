<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5a94f000-e661-4b14-b077-ea4bc5faa71e(LionWebExport.languageExport)">
  <persistence version="9" />
  <languages>
    <use id="97ef2b8d-23e1-433e-8d23-48f916dd314d" name="io.lionweb.mps.converter.lang" version="0" />
  </languages>
  <imports>
    <import index="2pzz" ref="r:74e14b22-3b4a-45ce-940b-9bdca99c102f(io.lionweb.mps.m3.builtin)" implicit="true" />
  </imports>
  <registry>
    <language id="01cf0d82-8d29-4fc4-be96-28abaf4ad33d" name="io.lionweb.mps.m3">
      <concept id="7434462380790650845" name="io.lionweb.mps.m3.structure.IKeyed" flags="ng" index="K99fS">
        <property id="2656571587264857353" name="key" index="2RzON1" />
      </concept>
      <concept id="2656571587264859051" name="io.lionweb.mps.m3.structure.Link" flags="ng" index="2RzO9z">
        <property id="2656571587264859572" name="multiple" index="2RzOhW" />
        <reference id="2656571587264867894" name="type" index="2RzQvY" />
      </concept>
      <concept id="2656571587264858738" name="io.lionweb.mps.m3.structure.Property" flags="ng" index="2RzOeU">
        <reference id="2656571587265467165" name="type" index="2Rx9Fl" />
      </concept>
      <concept id="2656571587264860095" name="io.lionweb.mps.m3.structure.Reference" flags="ng" index="2RzOpR" />
      <concept id="2656571587264859782" name="io.lionweb.mps.m3.structure.Containment" flags="ng" index="2RzOte" />
      <concept id="2656571587264858085" name="io.lionweb.mps.m3.structure.Feature" flags="ng" index="2RzOSH">
        <property id="2656571587264858528" name="optional" index="2RzO1C" />
      </concept>
      <concept id="2656571587264863094" name="io.lionweb.mps.m3.structure.ConceptInterface" flags="ng" index="2RzPaY">
        <child id="2656571587264865653" name="extends" index="2RzQMX" />
      </concept>
      <concept id="2656571587264860434" name="io.lionweb.mps.m3.structure.Classifier" flags="ng" index="2RzPzq">
        <child id="2656571587264861371" name="features" index="2RzPPN" />
      </concept>
      <concept id="2656571587264861919" name="io.lionweb.mps.m3.structure.Concept" flags="ng" index="2RzPWn">
        <property id="2656571587264862414" name="abstract" index="2RzP46" />
        <property id="6461713321117308474" name="partition" index="3KdWwX" />
        <reference id="2656571587264862780" name="extends" index="2RzPfO" />
        <child id="2656571587264866539" name="implements" index="2RzQ4z" />
      </concept>
      <concept id="2656571587264865491" name="io.lionweb.mps.m3.structure.ConceptInterfaceReference" flags="ng" index="2RzQOr">
        <reference id="2656571587264865492" name="conceptInterface" index="2RzQOs" />
      </concept>
      <concept id="2656571587264871634" name="io.lionweb.mps.m3.structure.LanguageReference" flags="ng" index="2RzRkq">
        <reference id="2656571587264871635" name="language" index="2RzRkr" />
      </concept>
      <concept id="2656571587264869411" name="io.lionweb.mps.m3.structure.Language" flags="ng" index="2RzRRF">
        <property id="2526956841135898600" name="version" index="3HH78N" />
        <child id="2656571587264870511" name="entities" index="2RzR6B" />
        <child id="2656571587264871163" name="dependsOn" index="2RzRcN" />
      </concept>
      <concept id="2656571587264873280" name="io.lionweb.mps.m3.structure.Enumeration" flags="ng" index="2RzSE8">
        <child id="2656571587264874244" name="literals" index="2RzSVc" />
      </concept>
      <concept id="2656571587264873619" name="io.lionweb.mps.m3.structure.EnumerationLiteral" flags="ng" index="2RzSPr" />
    </language>
    <language id="97ef2b8d-23e1-433e-8d23-48f916dd314d" name="io.lionweb.mps.converter.lang">
      <concept id="5066961138993480707" name="io.lionweb.mps.converter.lang.structure.ConvertLanguageToLionCore" flags="ng" index="qeN9c">
        <child id="5066961138993587939" name="languages" index="qeD2G" />
      </concept>
      <concept id="8551466651976017244" name="io.lionweb.mps.converter.lang.structure.ILanguageReferenceContainer" flags="ng" index="2P3sN0">
        <child id="755186209566487256" name="languages" index="1a0gs3" />
      </concept>
      <concept id="8551466651976015093" name="io.lionweb.mps.converter.lang.structure.ExportLanguageToJson" flags="ng" index="2P3vlD" />
      <concept id="5028875375328515028" name="io.lionweb.mps.converter.lang.structure.APathConverter" flags="ng" index="VS7hm">
        <property id="5028875375328515031" name="path" index="VS7hl" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="qeN9c" id="3vHbq8vGVui">
    <property role="TrG5h" value="ExportPricingToInternalModel" />
    <node concept="2V$Bhx" id="3vHbq8vGVuq" role="qeD2G">
      <property role="2V$B1T" value="ded39f0a-4290-489a-84fc-2da608d119da" />
      <property role="2V$B1Q" value="Pricing" />
    </node>
    <node concept="2V$Bhx" id="3vHbq8vGVus" role="qeD2G">
      <property role="2V$B1Q" value="jetbrains.mps.lang.core" />
      <property role="2V$B1T" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c" />
    </node>
  </node>
  <node concept="2RzRRF" id="3vHbq8vGVuv">
    <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRh" />
    <property role="TrG5h" value="Pricing" />
    <property role="3HH78N" value="0" />
    <node concept="2RzPWn" id="3vHbq8vGVuw" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="PricingStrategy" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzQ" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" to="2pzz:39$JcGFBN1$" resolve="Node" />
      <node concept="2RzOpR" id="3vHbq8vGVux" role="2RzPPN">
        <property role="TrG5h" value="sameBasePricesAs" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzQvNTQ4NzY0NTY3ODk2NDM4Nzk2Ng" />
        <property role="2RzO1C" value="true" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" node="3vHbq8vGVuw" resolve="PricingStrategy" />
      </node>
      <node concept="2RzOte" id="3vHbq8vGVuy" role="2RzPPN">
        <property role="TrG5h" value="basePrices" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzQvNTQ4NzY0NTY3ODk2NDI3NDA1NA" />
        <property role="2RzO1C" value="true" />
        <property role="2RzOhW" value="true" />
        <ref role="2RzQvY" node="3vHbq8vGVu$" resolve="BasePrice" />
      </node>
      <node concept="2RzOte" id="3vHbq8vGVuz" role="2RzPPN">
        <property role="TrG5h" value="discountPolicies" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzQvNTQ4NzY0NTY3ODk2NDI3NDA1NQ" />
        <property role="2RzO1C" value="true" />
        <property role="2RzOhW" value="true" />
        <ref role="2RzQvY" node="3vHbq8vGVuF" resolve="DiscountPolicy" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVw0" role="2RzQ4z">
        <ref role="2RzQOs" to="2pzz:6jTTMHCZNUU" resolve="INamed" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVu$" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="BasePrice" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzY" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" to="2pzz:39$JcGFBN1$" resolve="Node" />
      <node concept="2RzOeU" id="3vHbq8vGVu_" role="2RzPPN">
        <property role="TrG5h" value="itemID" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzYvNTQ4NzY0NTY3ODk2NDI3NDAzNw" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOte" id="3vHbq8vGVuA" role="2RzPPN">
        <property role="TrG5h" value="amount" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzYvNTQ4NzY0NTY3ODk2NDI3NDA0OA" />
        <property role="2RzO1C" value="false" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" node="3vHbq8vGVuB" resolve="Amount" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuB" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="Amount" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzk" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" to="2pzz:39$JcGFBN1$" resolve="Node" />
      <node concept="2RzOeU" id="3vHbq8vGVuC" role="2RzPPN">
        <property role="TrG5h" value="currencey" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzkvNTQ4NzY0NTY3ODk2NDI3NDA0NA" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" node="3vHbq8vGVuT" resolve="Currency" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVuD" role="2RzPPN">
        <property role="TrG5h" value="integerPart" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzkvNTQ4NzY0NTY3ODk2NDI3NDA0NQ" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:48csSBPfMBo" resolve="Integer" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVuE" role="2RzPPN">
        <property role="TrG5h" value="decimalPart" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwMzkvNTQ4NzY0NTY3ODk2NDI3NDA0Ng" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:48csSBPfMBo" resolve="Integer" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuF" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="DiscountPolicy" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNDk" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" to="2pzz:39$JcGFBN1$" resolve="Node" />
      <node concept="2RzOeU" id="3vHbq8vGVuG" role="2RzPPN">
        <property role="TrG5h" value="description" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNDkvMjk5NDIwODg1NTc4MDA1NTQ3MA" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOte" id="3vHbq8vGVuH" role="2RzPPN">
        <property role="TrG5h" value="condition" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNDkvNTQ4NzY0NTY3ODk2NDI3NDA1Mg" />
        <property role="2RzO1C" value="false" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" node="3vHbq8vGVuJ" resolve="Expression" />
      </node>
      <node concept="2RzOte" id="3vHbq8vGVuI" role="2RzPPN">
        <property role="TrG5h" value="discount" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNDkvNTQ4NzY0NTY3ODk2NDI3NDA1Mw" />
        <property role="2RzO1C" value="false" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" node="3vHbq8vGVuJ" resolve="Expression" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuJ" role="2RzR6B">
      <property role="2RzP46" value="true" />
      <property role="TrG5h" value="Expression" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNTA" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" to="2pzz:39$JcGFBN1$" resolve="Node" />
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuK" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="ItemQuantity" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ0MTcwNTQ" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuJ" resolve="Expression" />
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuL" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="GreaterThan" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ0MTcwNjY" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuM" resolve="BinaryExpression" />
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuM" role="2RzR6B">
      <property role="2RzP46" value="true" />
      <property role="TrG5h" value="BinaryExpression" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ0MTcwNjc" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuJ" resolve="Expression" />
      <node concept="2RzOte" id="3vHbq8vGVuN" role="2RzPPN">
        <property role="TrG5h" value="left" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ0MTcwNjcvNTQ4NzY0NTY3ODk2NDQxNzA2OQ" />
        <property role="2RzO1C" value="false" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" node="3vHbq8vGVuJ" resolve="Expression" />
      </node>
      <node concept="2RzOte" id="3vHbq8vGVuO" role="2RzPPN">
        <property role="TrG5h" value="right" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ0MTcwNjcvNTQ4NzY0NTY3ODk2NDQxNzA3MA" />
        <property role="2RzO1C" value="false" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" node="3vHbq8vGVuJ" resolve="Expression" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuP" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="IntLiteral" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ0MTcxMjQ" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuJ" resolve="Expression" />
      <node concept="2RzOeU" id="3vHbq8vGVuQ" role="2RzPPN">
        <property role="TrG5h" value="value" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ0MTcxMjQvNTQ4NzY0NTY3ODk2NDQxNzE0Mw" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuR" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="Percentage" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ1NDgzOTg" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuJ" resolve="Expression" />
      <node concept="2RzOte" id="3vHbq8vGVuS" role="2RzPPN">
        <property role="TrG5h" value="base" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQ1NDgzOTgvNTQ4NzY0NTY3ODk2NDU0ODM5OQ" />
        <property role="2RzO1C" value="false" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" node="3vHbq8vGVuJ" resolve="Expression" />
      </node>
    </node>
    <node concept="2RzSE8" id="3vHbq8vGVuT" role="2RzR6B">
      <property role="TrG5h" value="Currency" />
      <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNDA" />
      <node concept="2RzSPr" id="3vHbq8vGVuU" role="2RzSVc">
        <property role="TrG5h" value="EUR" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNDAvNTQ4NzY0NTY3ODk2NDI3NDA0MQ" />
      </node>
      <node concept="2RzSPr" id="3vHbq8vGVuV" role="2RzSVc">
        <property role="TrG5h" value="USD" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNDAvNTQ4NzY0NTY3ODk2NDI3NDA0Mg" />
      </node>
      <node concept="2RzSPr" id="3vHbq8vGVuW" role="2RzSVc">
        <property role="TrG5h" value="YEN" />
        <property role="2RzON1" value="ZGVkMzlmMGEtNDI5MC00ODlhLTg0ZmMtMmRhNjA4ZDExOWRhLzU0ODc2NDU2Nzg5NjQyNzQwNDAvNTQ4NzY0NTY3ODk2NDI3NDA0Mw" />
      </node>
    </node>
    <node concept="2RzRkq" id="3vHbq8vGVvZ" role="2RzRcN">
      <ref role="2RzRkr" node="3vHbq8vGVuX" resolve="jetbrains.mps.lang.core" />
    </node>
  </node>
  <node concept="2RzRRF" id="3vHbq8vGVuX">
    <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBj" />
    <property role="TrG5h" value="jetbrains.mps.lang.core" />
    <property role="3HH78N" value="2" />
    <node concept="2RzPWn" id="3vHbq8vGVuY" role="2RzR6B">
      <property role="2RzP46" value="true" />
      <property role="TrG5h" value="Attribute" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzUxNjk5OTU1ODMxODQ1OTExNjE" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" to="2pzz:39$JcGFBN1$" resolve="Node" />
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVuZ" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="LinkAttribute" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjQ2NjA2MzgwNDgwNDk3NDU" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuY" resolve="Attribute" />
      <node concept="2RzOeU" id="3vHbq8vGVv0" role="2RzPPN">
        <property role="TrG5h" value="role_DebugInfo" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjQ2NjA2MzgwNDgwNDk3NDUvMTc1NzY5OTQ3NjY5MTIzNjExNg" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVv1" role="2RzPPN">
        <property role="TrG5h" value="linkId" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjQ2NjA2MzgwNDgwNDk3NDUvMTM0MTg2MDkwMDQ4ODAxOTAzNg" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVv2" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="NodeAttribute" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjQ2NjA2MzgwNDgwNDk3NDg" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuY" resolve="Attribute" />
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVv3" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="PropertyAttribute" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjQ2NjA2MzgwNDgwNDk3NTA" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuY" resolve="Attribute" />
      <node concept="2RzOeU" id="3vHbq8vGVv4" role="2RzPPN">
        <property role="TrG5h" value="name_DebugInfo" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjQ2NjA2MzgwNDgwNDk3NTAvMTc1NzY5OTQ3NjY5MTIzNjExNw" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVv5" role="2RzPPN">
        <property role="TrG5h" value="propertyId" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjQ2NjA2MzgwNDgwNDk3NTAvMTM0MTg2MDkwMDQ4NzY0ODYyMQ" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVv6" role="2RzPPN">
        <property role="TrG5h" value="enumUsageMigrated" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjQ2NjA2MzgwNDgwNDk3NTAvMTE4OTQyNDQ1NTI1NDYzMzAwNw" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJk2" resolve="Boolean" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVv7" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="SuppressErrorsAnnotation" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzQyMjIzMTg4MDY4MDI0MjUyOTg" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVv2" resolve="NodeAttribute" />
      <node concept="2RzOeU" id="3vHbq8vGVv8" role="2RzPPN">
        <property role="TrG5h" value="filter" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzQyMjIzMTg4MDY4MDI0MjUyOTgvMjQyMzQxNzM0NTY2OTc1NTYyOQ" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVv9" role="2RzPPN">
        <property role="TrG5h" value="message" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzQyMjIzMTg4MDY4MDI0MjUyOTgvODU3NTMyODM1MDU0MzQ5MzM2NQ" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVva" role="2RzPPN">
        <property role="TrG5h" value="comment" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzQyMjIzMTg4MDY4MDI0MjUyOTgvODU3NTMyODM1MDU0MzQ5MzM3MQ" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVw1" role="2RzQ4z">
        <ref role="2RzQOs" node="3vHbq8vGVvG" resolve="ISuppressErrors" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVvb" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="SideTransformInfo" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzc3OTEyODQ5Mjg1MzM2OTE2NQ" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVv2" resolve="NodeAttribute" />
      <node concept="2RzOeU" id="3vHbq8vGVvc" role="2RzPPN">
        <property role="TrG5h" value="side" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzc3OTEyODQ5Mjg1MzM2OTE2NS83NzkxMjg0OTI4NTM2OTkzNjE" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" node="3vHbq8vGVvW" resolve="SideTransformSide" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVvd" role="2RzPPN">
        <property role="TrG5h" value="cellId" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzc3OTEyODQ5Mjg1MzM2OTE2NS83NzkxMjg0OTI4NTM5MzQ1MjM" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVve" role="2RzPPN">
        <property role="TrG5h" value="anchorTag" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzc3OTEyODQ5Mjg1MzM2OTE2NS83NzkxMjg0OTI4NTM5MzU5NjA" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVvf" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="BaseCommentAttribute" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzQ0NTI5NjE5MDgyMDI1NTY5MDc" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVvh" resolve="ChildAttribute" />
      <node concept="2RzOte" id="3vHbq8vGVvg" role="2RzPPN">
        <property role="TrG5h" value="commentedNode" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzQ0NTI5NjE5MDgyMDI1NTY5MDcvMzA3ODY2NjY5OTA0MzAzOTM4OQ" />
        <property role="2RzO1C" value="false" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" to="2pzz:39$JcGFBN1$" resolve="Node" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVw2" role="2RzQ4z">
        <ref role="2RzQOs" node="3vHbq8vGVvO" resolve="ISkipConstraintsChecking" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVw3" role="2RzQ4z">
        <ref role="2RzQOs" node="3vHbq8vGVvP" resolve="IDontApplyTypesystemRules" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVw4" role="2RzQ4z">
        <ref role="2RzQOs" node="3vHbq8vGVvG" resolve="ISuppressErrors" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVvh" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="ChildAttribute" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzcwOTc0NjkzNjAyNjQ2NjM5NA" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVuY" resolve="Attribute" />
      <node concept="2RzOeU" id="3vHbq8vGVvi" role="2RzPPN">
        <property role="TrG5h" value="role_DebugInfo" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzcwOTc0NjkzNjAyNjQ2NjM5NC83MDk3NDY5MzYwMjY2MDkwMjk" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVvj" role="2RzPPN">
        <property role="TrG5h" value="linkId" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzcwOTc0NjkzNjAyNjQ2NjM5NC83MDk3NDY5MzYwMjY2MDkwMzE" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVvk" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="ReviewMigration_old" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzI0ODI2MTEwNzQzNDY2NjEwNjU" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVv2" resolve="NodeAttribute" />
      <node concept="2RzOeU" id="3vHbq8vGVvl" role="2RzPPN">
        <property role="TrG5h" value="reasonShort" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzI0ODI2MTEwNzQzNDY2NjEwNjUvMjQ4MjYxMTA3NDM0NjY2MTA3OA" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVvm" role="2RzPPN">
        <property role="TrG5h" value="todo" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzI0ODI2MTEwNzQzNDY2NjEwNjUvMjQ4MjYxMTA3NDM0NjY2MTA3Mw" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVvn" role="2RzPPN">
        <property role="TrG5h" value="readableId" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzI0ODI2MTEwNzQzNDY2NjEwNjUvMjQ4MjYxMTA3NDM0NzE2OTUxNA" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVw5" role="2RzQ4z">
        <ref role="2RzQOs" node="3vHbq8vGVvS" resolve="MigrationAnnotation_old" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVvo" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="BasePlaceholder" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzM3MTczMDExNTYxOTc2MjYyNzk" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVvh" resolve="ChildAttribute" />
      <node concept="2RzOte" id="3vHbq8vGVvp" role="2RzPPN">
        <property role="TrG5h" value="content" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzM3MTczMDExNTYxOTc2MjYyNzkvMzcxNzMwMTE1NjE5NzYyNjMwMQ" />
        <property role="2RzO1C" value="true" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" node="3vHbq8vGVvT" resolve="IPlaceholderContent" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVvq" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="MigrationDataAnnotation" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzg3MDMxNzk0MzY5Nzg2Njg5NDU" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVv2" resolve="NodeAttribute" />
      <node concept="2RzOte" id="3vHbq8vGVvr" role="2RzPPN">
        <property role="TrG5h" value="dataNode" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzg3MDMxNzk0MzY5Nzg2Njg5NDUvNjgwNzkzMzQ0ODQ3MDMzMDU3NA" />
        <property role="2RzO1C" value="false" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" to="2pzz:39$JcGFBN1$" resolve="Node" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVw6" role="2RzQ4z">
        <ref role="2RzQOs" node="3vHbq8vGVvU" resolve="MigrationAnnotation" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVvs" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="ReviewMigration" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzg3MDMxNzk0MzY5NzkzNTkyMzg" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" node="3vHbq8vGVv2" resolve="NodeAttribute" />
      <node concept="2RzOeU" id="3vHbq8vGVvt" role="2RzPPN">
        <property role="TrG5h" value="reasonShort" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzg3MDMxNzk0MzY5NzkzNTkyMzgvODcwMzE3OTQzNjk3OTM1OTIzOQ" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVvu" role="2RzPPN">
        <property role="TrG5h" value="todo" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzg3MDMxNzk0MzY5NzkzNTkyMzgvODcwMzE3OTQzNjk3OTM1OTI0MA" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzOeU" id="3vHbq8vGVvv" role="2RzPPN">
        <property role="TrG5h" value="readableId" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzg3MDMxNzk0MzY5NzkzNTkyMzgvODcwMzE3OTQzNjk3OTM1OTI0MQ" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVw7" role="2RzQ4z">
        <ref role="2RzQOs" node="3vHbq8vGVvU" resolve="MigrationAnnotation" />
      </node>
    </node>
    <node concept="2RzPWn" id="3vHbq8vGVvw" role="2RzR6B">
      <property role="2RzP46" value="false" />
      <property role="TrG5h" value="TypeAnnotated" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzUyNTk2MzA5MjM1MDU3NzA2NjU" />
      <property role="3KdWwX" value="false" />
      <ref role="2RzPfO" to="2pzz:39$JcGFBN1$" resolve="Node" />
      <node concept="2RzOte" id="3vHbq8vGVvx" role="2RzPPN">
        <property role="TrG5h" value="annotation" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzUyNTk2MzA5MjM1MDU3NzA2NjUvNTI1OTYzMDkyMzUwNTc3MDY2Ng" />
        <property role="2RzO1C" value="true" />
        <property role="2RzOhW" value="false" />
        <ref role="2RzQvY" to="2pzz:39$JcGFBN1$" resolve="Node" />
      </node>
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvy" role="2RzR6B">
      <property role="TrG5h" value="IResolveInfo" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzExOTY5Nzg2MzAyMTQ" />
      <node concept="2RzOeU" id="3vHbq8vGVvz" role="2RzPPN">
        <property role="TrG5h" value="resolveInfo" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzExOTY5Nzg2MzAyMTQvMTE5Njk3ODY1NjI3Nw" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVv$" role="2RzR6B">
      <property role="TrG5h" value="IWrapper" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzEyMjE2NDcwOTM4MTI" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVv_" role="2RzR6B">
      <property role="TrG5h" value="IDeprecatable" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzEyMjQ2MDg4MzQ0NDU" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvA" role="2RzR6B">
      <property role="TrG5h" value="IContainer" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzEyMzMxNjAyOTY1OTc" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvB" role="2RzR6B">
      <property role="TrG5h" value="IType" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzEyMzQ5NzEzNTg0NTA" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvC" role="2RzR6B">
      <property role="TrG5h" value="IMetaLevelChanger" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzIwMTUzNzM2Nzg4MTA3MTkzMA" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvD" role="2RzR6B">
      <property role="TrG5h" value="ScopeProvider" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzM3MzQxMTYyMTMxMjk3OTI0OTk" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvE" role="2RzR6B">
      <property role="TrG5h" value="IAntisuppressErrors" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzEwNDc0MDg4MjI0MDk2MDE2NDc" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvF" role="2RzR6B">
      <property role="TrG5h" value="ICanSuppressErrors" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzOTMxNjUxMjE4NDYwOTE1ODY" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvG" role="2RzR6B">
      <property role="TrG5h" value="ISuppressErrors" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzOTMxNjUxMjE4NDYwOTE1ODc" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvH" role="2RzR6B">
      <property role="TrG5h" value="IDontSubstituteByDefault" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzE4MzU2MjEwNjIxOTA2NjM4MTk" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvI" role="2RzR6B">
      <property role="TrG5h" value="ScopeFacade" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzMzNjE0NzUzNzUxNTc0NjY1NTg" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvJ" role="2RzR6B">
      <property role="TrG5h" value="ImplementationPart" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzEzMTk3MjgyNzQ3ODMwNzc3MTk" />
      <node concept="2RzQOr" id="3vHbq8vGVw8" role="2RzQMX">
        <ref role="2RzQOs" node="3vHbq8vGVvI" resolve="ScopeFacade" />
      </node>
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvK" role="2RzR6B">
      <property role="TrG5h" value="ImplementationContainer" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzEzMTk3MjgyNzQ3ODMxNTE0Nzk" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvL" role="2RzR6B">
      <property role="TrG5h" value="InterfacePart" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzEzMTk3MjgyNzQ3ODQ5NzMwOTY" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvM" role="2RzR6B">
      <property role="TrG5h" value="ImplementationWithStubPart" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzY5OTk3MzgyODg3Mzg0MjcxOTA" />
      <node concept="2RzQOr" id="3vHbq8vGVw9" role="2RzQMX">
        <ref role="2RzQOs" node="3vHbq8vGVvJ" resolve="ImplementationPart" />
      </node>
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvN" role="2RzR6B">
      <property role="TrG5h" value="IStubForAnotherConcept" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzE1NTA4NzU0MjAyNzQ0NzYyMQ" />
      <node concept="2RzQOr" id="3vHbq8vGVwa" role="2RzQMX">
        <ref role="2RzQOs" node="3vHbq8vGVvL" resolve="InterfacePart" />
      </node>
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvO" role="2RzR6B">
      <property role="TrG5h" value="ISkipConstraintsChecking" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzU4MzE4ODc2MTUyOTk0NTcwOTE" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvP" role="2RzR6B">
      <property role="TrG5h" value="IDontApplyTypesystemRules" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzIyMTY3NjA0NjQxOTk1MDI0MjI" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvQ" role="2RzR6B">
      <property role="TrG5h" value="IOldCommentContainer" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzQxMjMxMjA3MzA5MzU0ODg0MzI" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvR" role="2RzR6B">
      <property role="TrG5h" value="ISmartReferent" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzcwOTQ5MjYxOTIyMzQwMzYxODQ" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvS" role="2RzR6B">
      <property role="TrG5h" value="MigrationAnnotation_old" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzI0ODI2MTEwNzQzNDc2MTQ5MjA" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvT" role="2RzR6B">
      <property role="TrG5h" value="IPlaceholderContent" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzQwNTgxNzc1NjkzNzUxNTAwMzg" />
    </node>
    <node concept="2RzPaY" id="3vHbq8vGVvU" role="2RzR6B">
      <property role="TrG5h" value="MigrationAnnotation" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzg3MDMxNzk0MzY5NzkzNTkyNTE" />
      <node concept="2RzOeU" id="3vHbq8vGVvV" role="2RzPPN">
        <property role="TrG5h" value="createdByScript" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzg3MDMxNzk0MzY5NzkzNTkyNTEvODcwMzE3OTQzNjk3OTM1OTI1Mg" />
        <property role="2RzO1C" value="false" />
        <ref role="2Rx9Fl" to="2pzz:2ju2syjnJjX" resolve="String" />
      </node>
      <node concept="2RzQOr" id="3vHbq8vGVwb" role="2RzQMX">
        <ref role="2RzQOs" node="3vHbq8vGVvS" resolve="MigrationAnnotation_old" />
      </node>
    </node>
    <node concept="2RzSE8" id="3vHbq8vGVvW" role="2RzR6B">
      <property role="TrG5h" value="SideTransformSide" />
      <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzc3OTEyODQ5Mjg1MzcwMDA3Ng" />
      <node concept="2RzSPr" id="3vHbq8vGVvX" role="2RzSVc">
        <property role="TrG5h" value="right" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzc3OTEyODQ5Mjg1MzcwMDA3Ni83NzkxMjg0OTI4NTM3MDAwNzc" />
      </node>
      <node concept="2RzSPr" id="3vHbq8vGVvY" role="2RzSVc">
        <property role="TrG5h" value="left" />
        <property role="2RzON1" value="Y2VhYjUxOTUtMjVlYS00ZjIyLTliOTItMTAzYjk1Y2E4YzBjLzc3OTEyODQ5Mjg1MzcwMDA3Ni83NzkxMjg0OTI4NTM3MDIyMjM" />
      </node>
    </node>
  </node>
  <node concept="2P3vlD" id="3vHbq8vGVN_">
    <property role="TrG5h" value="ExportPricingToJSON" />
    <property role="VS7hl" value="/Users/ftomassetti/repos/lionweb-pricing-demo/mps-pricing-dsl/build/pricing.json" />
    <node concept="2RzRkq" id="3vHbq8vGVNH" role="1a0gs3">
      <ref role="2RzRkr" node="3vHbq8vGVuv" resolve="Pricing" />
    </node>
    <node concept="2RzRkq" id="5$DmpJ49Frw" role="1a0gs3">
      <ref role="2RzRkr" node="3vHbq8vGVuX" resolve="jetbrains.mps.lang.core" />
    </node>
  </node>
</model>

