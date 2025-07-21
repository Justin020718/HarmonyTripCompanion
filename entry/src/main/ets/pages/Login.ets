import router from '@ohos.router'
import http from '@ohos.net.http';
@Entry
@Component
struct Login {
  build() {
    // 页面纵向布局
    Column() {
      Image($r('app.media.app_icon'))
        .width(78)
        .height(78)
        .margin({ top: 100, bottom: 16 })
      Text('登录')
        .fontSize(24)
        .fontWeight(FontWeight.Medium)
        .fontColor($r('app.color.title_text_color'))
      Text('登录帐号以使用更多服务')
        .fontSize(16)
        .fontColor($r('app.color.login_more_text_color'))
        .margin({ top: 16, bottom: 30 })

      .backgroundColor($r('app.color.background'))
      .height('100%')
      .width('100%')
      .padding({
        left: 12,
        right: 12,
        bottom: 24
      })
    }
  }
}