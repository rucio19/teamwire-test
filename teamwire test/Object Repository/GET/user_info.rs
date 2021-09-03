<?xml version="1.0" encoding="UTF-8"?>
<WebServiceRequestEntity>
   <description></description>
   <name>user_info</name>
   <tag></tag>
   <elementGuidId>d7ed6a28-f94b-4e16-bb91-c673ffb44fc4</elementGuidId>
   <selectorMethod>BASIC</selectorMethod>
   <useRalativeImagePath>false</useRalativeImagePath>
   <connectionTimeout>-1</connectionTimeout>
   <followRedirects>false</followRedirects>
   <httpBody></httpBody>
   <httpBodyContent></httpBodyContent>
   <httpBodyType></httpBodyType>
   <katalonVersion>8.1.0</katalonVersion>
   <maxResponseSize>-1</maxResponseSize>
   <migratedVersion>5.4.1</migratedVersion>
   <restRequestMethod>GET</restRequestMethod>
   <restUrl>https://api.github.com/users/${user_id}</restUrl>
   <serviceType>RESTful</serviceType>
   <soapBody></soapBody>
   <soapHeader></soapHeader>
   <soapRequestMethod></soapRequestMethod>
   <soapServiceEndpoint></soapServiceEndpoint>
   <soapServiceFunction></soapServiceFunction>
   <socketTimeout>-1</socketTimeout>
   <useServiceInfoFromWsdl>true</useServiceInfoFromWsdl>
   <variables>
      <defaultValue>GlobalVariable.user_id</defaultValue>
      <description></description>
      <id>65b58f96-10c5-431f-a9e8-203682c0e2a7</id>
      <masked>false</masked>
      <name>user_id</name>
   </variables>
   <verificationScript>import static org.assertj.core.api.Assertions.*

import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webservice.verification.WSResponseManager

import groovy.json.JsonSlurper
import internal.GlobalVariable as GlobalVariable

RequestObject request = WSResponseManager.getInstance().getCurrentRequest()

ResponseObject response = WSResponseManager.getInstance().getCurrentResponse()


// two different ways to asure the properly status response, 200 for this case
WS.verifyResponseStatusCode(response, 200)
assertThat(response.getStatusCode()).isEqualTo(200)

WS.verifyElementPropertyValue(response, 'name', &quot;Michael&quot;)
WS.verifyElementPropertyValue(response, 'node_id', &quot;MDQ6VXNlcjE4MjU3OTg=&quot;)
WS.verifyElementPropertyValue(response, 'company', null)
WS.verifyElementPropertyValue(response, 'email', null)
WS.verifyElementPropertyValue(response, 'public_repos', 5)
WS.verifyElementPropertyValue(response, 'public_gists', 0)
WS.verifyElementPropertyValue(response, 'followers', 28)
WS.verifyElementPropertyValue(response, 'following', 0)</verificationScript>
   <wsdlAddress></wsdlAddress>
</WebServiceRequestEntity>
