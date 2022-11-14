param serverName string = 'azpipedbdemosvr'
param sqlDBName string = 'azpipedbdemo'
param location string = 'eastus'
param administratorLogin string = 'pcsadmin'
param administratorLoginPassword string = 'passwd01'

@secure()
param administratorLoginPassword string
resource sqlServer 'Microsoft.Sql/servers@2021-08-01-preview' = {
  name: serverName
  location: location
  properties: {
    administratorLogin: administratorLogin
    administratorLoginPassword: adminpwd
  }
}
resource sqlDB 'Microsoft.Sql/servers/databases@2021-08-01-preview' = {
  parent: sqlServer
  name: sqlDBName
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}
