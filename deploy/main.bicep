//  https://github.com/thara0402/dapr-frontend/blob/main/deploy/env/main.bicep

param environmentName string = 'env-${resourceGroup().name}'
param location string = resourceGroup().location

module environment 'environment.bicep' = {
  name: 'container-app-environment'
  params: {
    environmentName: environmentName
    location: location
  }
}