//  https://github.com/thara0402/dapr-frontend/blob/main/deploy/env/main.bicep
// https://blog.jbs.co.jp/entry/2022/12/02/173052

targetScope = 'subscription'

@description('リソースグループ名を指定してください')
param resourceGroupName string = 'LabInfraTest'
@allowed([
  'japaneast'
  'japanwest'
])
param Location string = 'japaneast'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: Location
}

param environmentName string = 'env${resourceGroupName}'

module environment './env/environment.bicep' = {
  name: 'container-app-environment'
  scope: resourceGroup
  params: {
    environmentName: environmentName
    location: Location
  }
}
