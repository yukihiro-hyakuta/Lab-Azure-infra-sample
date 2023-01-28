## Azure infrastructure sample  
  
Dapr + Bicep + Azure Container Apps + nginx simplefy  
  
まずは  
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash 
でAzureCLIをインストール  

以下参考文献アドレス

https://github.com/tjoudeh/TasksTracker.ContainerApps/blob/master/deploy/main.bicep
Daprの参考になりそう。サービスバスやらバックエンドAPIとか一式そろっている。
bicepもシンプル。

https://bitoftech.net/2022/09/16/use-bicep-to-deploy-dapr-microservices-apps-to-azure-container-apps-part-10/
ゆっくり解説している感じ。
cosmosdb使っているので料金的に合わないのかも。

https://github.com/apc-kamezaki/dapr-sample/tree/main/settings/aca
ファイルが散らばっているが設定ファイルが良い感じ。
フロントやコンポーネントももじっくり見る必要あり。レベル高い

https://techblog.ap-com.co.jp/entry/2022/09/01/120000
GitHubActionsでデプロイしている。bicepはないかも。動きを知るには良い。

https://gooner.hateblo.jp/entry/2022/05/27/092220
bicepわかりやすい。ブルーグリーンデプロイでトラフィック制御を取りあげている。
ただし、DockerHubにあげている。
https://github.com/thara0402/dapr-frontend
上記のコード。こちらを参考に第一弾を構築。

