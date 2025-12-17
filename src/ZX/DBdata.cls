/// 
Class ZX.DBdata Extends %DeepSee.CubeDefinition [ DependsOn = ZX.dbfree, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="ZX.DBdata" displayName="ZX.DBdata" disabled="false" abstract="false" sourceClass="ZX.dbfree" namedFactNums="true" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="DatabaseName" disabled="false" hasAll="false" allCaption="All DatabaseName" allDisplayName="DatabaseName" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="DatabaseName" disabled="false" sourceProperty="DatabaseName" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="2">
      </level>
    </hierarchy>
  </dimension>
  <measure name="mbSize" disabled="false" sourceProperty="mbSize" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="1">
  </measure>
  <measure name="mbAvail" disabled="false" sourceProperty="mbAvail" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="2">
  </measure>
  <measure name="FreePrz" disabled="false" sourceProperty="FreePrz" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="3">
  </measure>
</cube>
}

Parameter DOMAIN;

}
