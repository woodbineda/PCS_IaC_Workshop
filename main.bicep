resource sqlServer 'Microsoft.Sql/servers@2022-05-01-preview' = {
  name: 'demoforpcs'
  location: resourceGroup().location
  properties: {
    administratorLogin: 'server_admin'
    administratorLoginPassword: 'P@ssw0rd1!'
  }

resource db 'databases@2022-05-01-preview' = {
  name: 'MyDemo'
  location: resourceGroup().location
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
  }
 }
 resource fwRule 'firewallRules@2022-05-01-preview' = {
   name: 'AllowAllWindowsAzureIps' 
   properties: {

    startIpAddress:'0.0.0.0'
    endIpAddress:'0.0.0.0'
   }
 }
}
