<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
 xmlns="http://www.opengis.net/sld"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>default_point</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Default Point</Title>
      <Abstract>A sample style that draws a point</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering points -->
      <FeatureTypeStyle>
     <Rule>
       <Name>Large</Name>
       <MaxScaleDenominator>160000000</MaxScaleDenominator>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#B31212</CssParameter>
             </Fill>
           </Mark>
           <Size>4</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>Medium</Name>
       <MinScaleDenominator>160000000</MinScaleDenominator>
       <MaxScaleDenominator>320000000</MaxScaleDenominator>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#B31212</CssParameter>
             </Fill>
           </Mark>
           <Size>3</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>Small</Name>
       <MinScaleDenominator>320000000</MinScaleDenominator>
       <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>circle</WellKnownName>
             <Fill>
               <CssParameter name="fill">#B31212</CssParameter>
             </Fill>
           </Mark>
           <Size>2</Size>
         </Graphic>
       </PointSymbolizer>
     </Rule>
   </FeatureTypeStyle>
   </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
