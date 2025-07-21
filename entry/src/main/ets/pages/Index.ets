@Entry
@Component
struct Index {
  @State currentIndex: number = 0

  private tabsController: TabsController = new TabsController()

  @Builder TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImg : normalImg)
        .width(24)
        .height(24)
      Text(title)
        .margin({ top: 4 })
        .fontSize(10)
        .fontColor(this.currentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
    }
    .justifyContent(FlexAlign.Center)
    .height(26)
    .width('100%')
    .onClick(() => {
      this.currentIndex = index
      this.tabsController.changeIndex(this.currentIndex)
    })
  }

  build() {
    Tabs({
      barPosition: BarPosition.End,
      controller: this.tabsController
    }) {
      TabContent() {
        // 首页内容
      }
      .padding({ left: 12, right: 12 })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder('首页', 0, $r('app.media.icon'), $r('app.media.icon')))

      TabContent() {
        // 我的内容
      }
      .padding({ left: 12, right: 12 })
      .backgroundColor($r('app.color.mainPage_backgroundColor'))
      .tabBar(this.TabBuilder('我的', 1, $r('app.media.icon'), $r('app.media.icon')))
    }
    .width('100%')
    .backgroundColor(Color.White)
    .barHeight(56)
    .barMode(BarMode.Fixed)
    .onChange((index: number) => {
      this.currentIndex = index
    })
  }
}