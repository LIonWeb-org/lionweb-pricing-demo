<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6fc3e8e4-c418-4850-a3c6-0aea2843c7b8(Pricing.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="n0di" ref="r:2f4abf87-6023-4adf-93d9-2683da48157d(Pricing.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="9d69e719-78c8-4286-90db-fb19c107d049" name="com.mbeddr.mpsutil.grammarcells">
      <concept id="8207263695490893775" name="com.mbeddr.mpsutil.grammarcells.structure.CellBasedRule" flags="ng" index="2ElW$n" />
      <concept id="7363578995839435357" name="com.mbeddr.mpsutil.grammarcells.structure.WrapperCell" flags="ng" index="1kIj98">
        <child id="7363578995839435358" name="wrapped" index="1kIj9b" />
      </concept>
      <concept id="3011849438420226693" name="com.mbeddr.mpsutil.grammarcells.structure.GrammarInfoCell" flags="ng" index="1WcQYu">
        <child id="8207263695490916687" name="rules" index="2El2Yn" />
        <child id="2862331529394260612" name="projection" index="1LiK7o" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="4KC2aIjRReD">
    <ref role="1XX52x" to="n0di:4KC2aIjRRdM" resolve="PricingStrategy" />
    <node concept="3EZMnI" id="4KC2aIjRReF" role="2wV5jI">
      <node concept="3EZMnI" id="4KC2aIjRReL" role="3EZMnx">
        <node concept="2iRfu4" id="4KC2aIjRReM" role="2iSdaV" />
        <node concept="3F0ifn" id="4KC2aIjRReJ" role="3EZMnx">
          <property role="3F0ifm" value="Pricing Strategy" />
        </node>
        <node concept="3F0A7n" id="4KC2aIjRReO" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3EZMnI" id="4KC2aIjSj20" role="3EZMnx">
        <node concept="VPM3Z" id="4KC2aIjSj22" role="3F10Kt" />
        <node concept="3XFhqQ" id="4KC2aIjSj26" role="3EZMnx" />
        <node concept="2iRfu4" id="4KC2aIjSj25" role="2iSdaV" />
        <node concept="3F0ifn" id="4KC2aIjSj29" role="3EZMnx">
          <property role="3F0ifm" value="same base prices as" />
        </node>
        <node concept="1iCGBv" id="4KC2aIjSlFr" role="3EZMnx">
          <ref role="1NtTu8" to="n0di:4KC2aIjSj1Y" resolve="sameBasePricesAs" />
          <node concept="1sVBvm" id="4KC2aIjSlFt" role="1sWHZn">
            <node concept="3F0A7n" id="4KC2aIjSlFx" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4KC2aIjSj1Z" role="3EZMnx" />
      <node concept="3F0ifn" id="4KC2aIjRReR" role="3EZMnx">
        <property role="3F0ifm" value="base prices:" />
      </node>
      <node concept="3EZMnI" id="4KC2aIjRReX" role="3EZMnx">
        <node concept="VPM3Z" id="4KC2aIjRReZ" role="3F10Kt" />
        <node concept="3XFhqQ" id="4KC2aIjRRf3" role="3EZMnx" />
        <node concept="2iRfu4" id="4KC2aIjRRf2" role="2iSdaV" />
        <node concept="3F2HdR" id="4KC2aIjRRf6" role="3EZMnx">
          <ref role="1NtTu8" to="n0di:4KC2aIjRRe6" resolve="basePrices" />
          <node concept="2iRkQZ" id="4KC2aIjRRf9" role="2czzBx" />
        </node>
      </node>
      <node concept="3F0ifn" id="4KC2aIjRRfb" role="3EZMnx" />
      <node concept="3F0ifn" id="4KC2aIjRRfc" role="3EZMnx">
        <property role="3F0ifm" value="discount policies:" />
      </node>
      <node concept="3EZMnI" id="4KC2aIjRRfe" role="3EZMnx">
        <node concept="VPM3Z" id="4KC2aIjRRfg" role="3F10Kt" />
        <node concept="3XFhqQ" id="4KC2aIjRRfk" role="3EZMnx" />
        <node concept="2iRfu4" id="4KC2aIjRRfj" role="2iSdaV" />
        <node concept="3F2HdR" id="4KC2aIjRRfn" role="3EZMnx">
          <ref role="1NtTu8" to="n0di:4KC2aIjRRe7" resolve="discountPolicies" />
          <node concept="2iRkQZ" id="4KC2aIjRRfq" role="2czzBx" />
        </node>
      </node>
      <node concept="2iRkQZ" id="4KC2aIjRReI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4KC2aIjRRfz">
    <ref role="1XX52x" to="n0di:4KC2aIjRRdO" resolve="BasePrice" />
    <node concept="3EZMnI" id="4KC2aIjRRf_" role="2wV5jI">
      <node concept="3F0A7n" id="4KC2aIjRRfD" role="3EZMnx">
        <ref role="1NtTu8" to="n0di:4KC2aIjRRdP" resolve="itemID" />
      </node>
      <node concept="2iRfu4" id="4KC2aIjRRfC" role="2iSdaV" />
      <node concept="3F0ifn" id="4KC2aIjRRfG" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="4KC2aIjRRfJ" role="3EZMnx">
        <ref role="1NtTu8" to="n0di:4KC2aIjRRe0" resolve="amount" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4KC2aIjRRfS">
    <ref role="1XX52x" to="n0di:4KC2aIjRRe1" resolve="DiscountPolicy" />
    <node concept="3EZMnI" id="4KC2aIjRRfU" role="2wV5jI">
      <node concept="3EZMnI" id="4KC2aIjRRg0" role="3EZMnx">
        <node concept="2iRfu4" id="4KC2aIjRRg1" role="2iSdaV" />
        <node concept="3F0ifn" id="2Ad$hsw6lAQ" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11LMrY" id="2Ad$hsw6lBc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="2Ad$hsw6lBq" role="3EZMnx">
          <ref role="1NtTu8" to="n0di:2Ad$hsw6lAI" resolve="description" />
          <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        </node>
        <node concept="3F0ifn" id="2Ad$hsw6lB4" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="2Ad$hsw6lBe" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="4KC2aIjRRfY" role="3EZMnx">
          <property role="3F0ifm" value="when" />
        </node>
        <node concept="3F1sOY" id="4KC2aIjRRg3" role="3EZMnx">
          <ref role="1NtTu8" to="n0di:4KC2aIjRRe4" resolve="condition" />
        </node>
        <node concept="3F0ifn" id="4KC2aIjRRg6" role="3EZMnx">
          <property role="3F0ifm" value="apply discount" />
        </node>
        <node concept="3F1sOY" id="4KC2aIjRRg9" role="3EZMnx">
          <ref role="1NtTu8" to="n0di:4KC2aIjRRe5" resolve="discount" />
        </node>
      </node>
      <node concept="2iRkQZ" id="4KC2aIjRRfX" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4KC2aIjRRgi">
    <ref role="1XX52x" to="n0di:4KC2aIjRRdR" resolve="Amount" />
    <node concept="3EZMnI" id="4KC2aIjRRgk" role="2wV5jI">
      <node concept="3F0A7n" id="4KC2aIjRRgo" role="3EZMnx">
        <ref role="1NtTu8" to="n0di:4KC2aIjRRdX" resolve="integerPart" />
      </node>
      <node concept="3F0ifn" id="4KC2aIjRRgr" role="3EZMnx">
        <property role="3F0ifm" value="." />
        <node concept="11L4FC" id="4KC2aIjRUin" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="4KC2aIjSgI6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="4KC2aIjRRgn" role="2iSdaV" />
      <node concept="3F0A7n" id="4KC2aIjRUis" role="3EZMnx">
        <ref role="1NtTu8" to="n0di:4KC2aIjRRdY" resolve="decimalPart" />
      </node>
      <node concept="3F0A7n" id="4KC2aIjRUiv" role="3EZMnx">
        <ref role="1NtTu8" to="n0di:4KC2aIjRRdW" resolve="currencey" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4KC2aIjSq8A">
    <ref role="1XX52x" to="n0di:4KC2aIjSq8u" resolve="ItemQuantity" />
    <node concept="1WcQYu" id="4KC2aIjSGvc" role="2wV5jI">
      <node concept="2ElW$n" id="4KC2aIjSGve" role="2El2Yn" />
      <node concept="3F0ifn" id="4KC2aIjSGvl" role="1LiK7o">
        <property role="3F0ifm" value="itemQuantity" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4KC2aIjSq8Q">
    <ref role="1XX52x" to="n0di:4KC2aIjSq8E" resolve="GreaterThan" />
    <node concept="1WcQYu" id="4KC2aIjSq98" role="2wV5jI">
      <node concept="2ElW$n" id="4KC2aIjSq9a" role="2El2Yn" />
      <node concept="3EZMnI" id="4KC2aIjSq9s" role="1LiK7o">
        <node concept="2iRfu4" id="4KC2aIjSq9t" role="2iSdaV" />
        <node concept="1kIj98" id="4KC2aIjSq9h" role="3EZMnx">
          <node concept="3F1sOY" id="4KC2aIjSq9q" role="1kIj9b">
            <ref role="1NtTu8" to="n0di:4KC2aIjSq8H" resolve="left" />
          </node>
        </node>
        <node concept="3F0ifn" id="4KC2aIjSq9v" role="3EZMnx">
          <property role="3F0ifm" value="&gt;" />
        </node>
        <node concept="3F1sOY" id="4KC2aIjSq9y" role="3EZMnx">
          <ref role="1NtTu8" to="n0di:4KC2aIjSq8I" resolve="right" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4KC2aIjSq9G">
    <ref role="1XX52x" to="n0di:4KC2aIjSq9$" resolve="IntLiteral" />
    <node concept="1WcQYu" id="4KC2aIjSq9I" role="2wV5jI">
      <node concept="2ElW$n" id="4KC2aIjSq9K" role="2El2Yn" />
      <node concept="3F0A7n" id="4KC2aIjSq9W" role="1LiK7o">
        <ref role="1NtTu8" to="n0di:4KC2aIjSq9R" resolve="value" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4KC2aIjSUcR">
    <ref role="1XX52x" to="n0di:4KC2aIjSUcI" resolve="Percentage" />
    <node concept="1WcQYu" id="4KC2aIjSUcY" role="2wV5jI">
      <node concept="2ElW$n" id="4KC2aIjSUd0" role="2El2Yn" />
      <node concept="3EZMnI" id="4KC2aIjSUdd" role="1LiK7o">
        <node concept="2iRfu4" id="4KC2aIjSUde" role="2iSdaV" />
        <node concept="1kIj98" id="4KC2aIjSUd7" role="3EZMnx">
          <node concept="3F1sOY" id="4KC2aIjSUdb" role="1kIj9b">
            <ref role="1NtTu8" to="n0di:4KC2aIjSUcJ" resolve="base" />
          </node>
        </node>
        <node concept="3F0ifn" id="4KC2aIjSUdg" role="3EZMnx">
          <property role="3F0ifm" value="%" />
        </node>
      </node>
    </node>
  </node>
</model>

