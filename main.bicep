
param serverName string = '<enter server name>'
param sqlDBName string = '<enter name of database here>'
param location string = 'eastus'
param administratorLogin string = '<create admin user>'
param adminpwd string = '<add admin user password here>'

//@secure()
//param administratorLoginPassword string

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
