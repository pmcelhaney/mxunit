<cfcomponent  extends="mxunit.framework.TestCase">

<cfscript>
  htmlTestResult = createobject("component",'mxunit.framework.HtmlTestResult');
</cfscript>

<cffunction name="testPrintResources">
  <cfsavecontent variable="headers"><cfoutput>#htmlTestResult.printResources()#</cfoutput></cfsavecontent>
  <cfset debug( hash(headers)) />
  <!--- This is fairly volitile --->
  <cfset assertEquals("688c3a26dbbe836363235e1ba96a9445",hash(headers) , "Hash changed. Maybe something (even small) changed in the printResources method?") />
</cffunction>
</cfcomponent>
