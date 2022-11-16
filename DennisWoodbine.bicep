param serverName string = 'DENNISazpipedbdemosvr'
param sqlDBName string = 'DENNISazpipedbdemo'
param location string = 'eastus'
param administratorLogin string = 'DENNISpcsadmin'
param administratorLoginPassword string = 'fX^%a^074QuaDENNIS'

resource sqlServer 'Microsoft.Sql/servers@2021-08-01-preview' = {
  name: serverName
  location: location
  properties: {
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
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
