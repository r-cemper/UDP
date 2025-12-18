/// 
Class ZX.DBlog Extends %DeepSee.CubeDefinition [ DependsOn = ZX.dbfree, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="ZX.DBlog" displayName="ZX.DBlog" disabled="false" abstract="false" sourceClass="ZX.dbfree" namedFactNums="true" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="DatabaseName" disabled="false" hasAll="false" allCaption="All DatabaseName" allDisplayName="DatabaseName" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="DatabaseName" disabled="false" sourceProperty="DatabaseName" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="2">
      </level>
    </hierarchy>
  </dimension>
  <measure name="logSize" disabled="false" sourceProperty="logSize" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="1">
  </measure>
  <measure name="logAvail" disabled="false" sourceProperty="logAvail" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="2">
  </measure>
  <measure name="logFreePrz" disabled="false" sourceProperty="logFreePrz" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="3">
  </measure>
</cube>
}

Parameter DOMAIN;

}
