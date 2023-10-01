# チームFlutter Forwards

[東京 Flutter ハッカソン 2023](https://hackathon.flutteruniv.com/)に参加するチーム「Flutter Forwards」のレポジトリです。

<img width="741" alt="CleanShot 2023-09-24 at 15 16 39@2x" src="https://github.com/heyhey1028/flutter_forwards/assets/44666053/d48f9743-aae0-4de0-a5a5-de8209c4b84f">

https://hackathon.flutteruniv.com/


## Product

<img width="1512" alt="スクリーンショット 2023-10-01 11 52 24" src="https://github.com/heyhey1028/flutter_forwards/assets/37182704/51b5478c-54bf-4ca6-a05b-6076ad756430">

「Manabi Forward WE」は学びの見える化アプリです。

英語学習を推進しタレントの英語テストのスコアをKPIとする企業と、そこで働くメンバーに向けたプロダクトです。

### Features
#### 管理者画面（Webページ）

企業側は各メンバーの学習進捗をチームごとに管理できます。
チームで設定した学習時間ノルマの達成状況を個人・チーム単位で確認でき、フォローが必要なメンバーを割り出すことに役立ちます。

![manager](https://github.com/heyhey1028/flutter_forwards/assets/37182704/bd3ffe15-13b4-440d-ba5d-8847a10410bd)

#### メンバー画面（モバイルアプリページ）

各メンバーはそれぞれ好きなサービスを使って学習します。
サービスごとに集計した学習状況を一つの画面に集約し、ノルマに対する進捗を見える化できます。
また、チーム内の他メンバーの進捗も確認できるため、モチベーションの維持に役立てることも可能です。

<img src="https://github.com/heyhey1028/flutter_forwards/assets/37182704/14b4d36c-7e1d-4204-a217-bb3e8a516631" width="40%">

<img src="https://github.com/heyhey1028/flutter_forwards/assets/44666053/4086bc5f-6e58-4a4f-83e1-3153d2f593e5" width="40%">

## Tech stack
- Flutter v3.13.6
- Supabase


## Service Architecture

![Architecture](https://github.com/heyhey1028/flutter_forwards/assets/37182704/a2e1d318-441b-499a-acf3-3da1ee41dca7)

## Supabase Edge function API

### ユーザー（アプリ）

#### `/functions/v1/total-service-screen-times?user_id=:uuid`

```json
{
  "data": [
    {
      "user_id":"uuid",
      "user_name":"しげる",
      "team_id":"uuid",
      "monthly_target":1800,
      "sum":215,
      "service_id":"uuid",
      "service_name":"native camp",
      "icon_path":"https://...."
    },
  ]
}
```


#### `/functions/v1/sum-service-screen-times?user_id=:uuid`

```json
{
  "total_service_screen_times":1800,
  "monthly_target":1800,
  "icon_path":"https://..."
}
```

### 管理者（Web）

#### `/functions/v1/sum-screen-times`

```json
{
  "data": [
    {
      "user_id":"uuid",
      "user_name":"Aさん",
      "user_icon_path":"...",
      "team_id":"uuid",
      "monthly_target":1800,
      "sum":984
    },
  ]
}
```

#### `/functions/v1/total-screen-times`

```json
{
  "total_team_screen_times":18000,
  "team_member_count":10,
  "monthly_target":1800
}
```

## Directory Architecture
- factories
  - supabase にダミーデータを追加する
- supabase
  - supabase edge function を設定している
- extension
  - 各英語学習サービスのデータを収集する chrome 拡張機能
