<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
 xmlns="http://www.opengis.net/sld"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>default_raster</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Default Raster</Title>
      <Abstract>A sample style that draws a raster, good for displaying imagery</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering rasters -->
      <FeatureTypeStyle>
        <Rule>
          <Name>rule1</Name>
          <Title>Opaque Raster</Title>
          <Abstract>A raster</Abstract>
          <RasterSymbolizer>
                <ColorMap>
                   <ColorMapEntry color="#2c7bb6" quantity="0" opacity="0"/>
                   <ColorMapEntry color="#2c7bb6" quantity="0.111966335" />
                   <ColorMapEntry color="#abd9e9" quantity="0.28613619" />
                   <ColorMapEntry color="#ffffbf" quantity="0.466526396" />
                   <ColorMapEntry color="#fdae61" quantity="0.7696205049" />
                   <ColorMapEntry color="#d7191c" quantity="1.579969395" />
                </ColorMap>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>