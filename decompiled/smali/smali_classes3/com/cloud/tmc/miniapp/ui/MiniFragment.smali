.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment;
.super Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/IPageCallback;
.implements Lcom/cloud/tmc/kernel/debug/DebugCallback;
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;,
        Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;,
        Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniFragment"


# instance fields
.field private adTag:Ljava/lang/String;

.field private adm:Z

.field private binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

.field private callbackId:Ljava/lang/String;

.field private contextView:Landroid/view/View;

.field private eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field private eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field private final isLowClient$delegate:Lkotlin/Lazy;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

.field private mScrollY:I

.field private navigationBarCustomIconStyleIsWhite:Z

.field private navigationBarDefaultStyleIsWhite:Z

.field private needRefreshYCoordinate:Z

.field private perfSendFlag:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->Companion:Lcom/cloud/tmc/miniapp/ui/MiniFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;-><init>()V

    sget-object v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniFragment$isLowClient$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->isLowClient$delegate:Lkotlin/Lazy;

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getContextView$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMScrollY$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)I
    .locals 0

    iget p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mScrollY:I

    return p0
.end method

.method public static final synthetic access$getNavigationBarCustomIconStyleIsWhite$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarCustomIconStyleIsWhite:Z

    return p0
.end method

.method public static final synthetic access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    return-object p0
.end method

.method public static final synthetic access$hideCustomView(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideCustomView(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage()V

    return-void
.end method

.method public static final synthetic access$setNavigationBarDefaultStyleIsWhite$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    return-void
.end method

.method public static final synthetic access$showCustomView(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public static final synthetic access$updateTitleBarStyle(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->updateTitleBarStyle()V

    return-void
.end method

.method public static synthetic c0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage$lambda$25(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    move-result p0

    return p0
.end method

.method private static final changeNavigationBarProgress$lambda$26(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->changeNavigationBarProgress(IIJ)V

    return-void
.end method

.method private final checkFirstNormalPageOpened()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const-string v1, "firstNormalPageOpened"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check first page opened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiniFragment"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private final checkUpdateHomeButton()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    const-string v1, "isApiShowHomeEnabled"

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "showHomeButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isHomepage(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->showHomeButton()V

    goto :goto_1

    :cond_2
    const-string v1, "hideHomeButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isHomepage(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->showHomeButton()V

    :cond_5
    :goto_1
    return-void
.end method

.method private final checkUpdateTitleBarStyle()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isShow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->updateTabBarStyle()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->updateTitleBarStyle()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->updateTabBarMessage()V

    :cond_0
    return-void
.end method

.method private final customNavigationStyle(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V
    .locals 3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyleIsWhite()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleColor(Z)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarBackgroundColor(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableTransparentStatusBar()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTransparent(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarHomeAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->navigationBarAction(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setHomeAction(IZ)V

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyleIsWhite()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarCustomIconStyleIsWhite:Z

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    :cond_4
    return-void
.end method

.method public static synthetic d0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->changeNavigationBarProgress$lambda$26(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V

    return-void
.end method

.method private static final debugRefresh$lambda$44(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setFirstLaunch(Z)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->debugRefresh()V

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/webkit/WebView;

    move-object v3, v0

    goto :goto_5

    :cond_6
    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_7

    const-string v7, "utf-8"

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "text/html"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    if-eqz v0, :cond_c

    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$debugRefresh$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$debugRefresh$1$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

    const-string v3, "renderOnMessageReady"

    invoke-interface {v0, v3, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_8
    new-instance v0, Lcom/cloud/tmc/kernel/render/LoadParams;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    move-object v1, v2

    :goto_6
    iput-object v1, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    move-object v1, v2

    :goto_7
    iput-object v1, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_b
    iput-object v2, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    :cond_c
    return-void
.end method

.method public static synthetic e0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->initView$lambda$12$lambda$11$lambda$9(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showWebViewMask$lambda$41(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    return-void
.end method

.method public static synthetic g0(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setPageOnMain$lambda$28(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    return-void
.end method

.method public static synthetic h0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->initView$lambda$12$lambda$11$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    return-void
.end method

.method private final hideCustomView(Z)Z
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->needRefreshYCoordinate:Z

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/cloud/tmc/miniapp/ui/MiniFragment$hideCustomView$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$hideCustomView$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getHasVirtualNavBar()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showVirtualNavBar()V

    :cond_5
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->landScapeToProtrait(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    return v0
.end method

.method private final hideWebViewMask()V
    .locals 4

    const-string v0, "MiniFragment"

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->enableWebViewMask()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideWebViewMask enableWebViewMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oo:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v2, Lcom/cloud/tmc/miniapp/ui/o0;

    invoke-direct {v2, v1}, Lcom/cloud/tmc/miniapp/ui/o0;-><init>(Landroid/view/View;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static final hideWebViewMask$lambda$42(Landroid/view/View;)V
    .locals 3

    const-string v0, "MiniFragment"

    const-string v1, "$maskView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toInvisible(Landroid/view/View;)V

    const-string p0, "hideWebViewMask maskView \u9690\u85cf\u6210\u529f"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p0, "hideWebViewMask \u6267\u884c\u5b8c\u6bd5"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static synthetic i0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage$lambda$24(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    move-result p0

    return p0
.end method

.method private final init()V
    .locals 6

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v2, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "get(BuildConfigProxy::class.java).isDebug"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->enableWebViewDebugger()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    return-void

    :cond_4
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v0

    const-string v2, "contextView"

    if-eqz v0, :cond_f

    :try_start_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBgColor()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showWebViewMask(I)V

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4, v3}, Lcom/cloud/tmc/kernel/render/IRender;->setBgColor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    const-string v4, "MiniFragment"

    const-string v5, "set content background color error"

    invoke-static {v4, v5, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullDownRefresh()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullUpRefresh()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_8
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    if-nez v3, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v1

    :cond_9
    invoke-virtual {p0, v3, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->attachToRefresh(Landroid/view/View;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    :cond_a
    :try_start_2
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getLimitTextZoom()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_b
    move-object v0, v1

    :goto_5
    instance-of v3, v0, Landroid/webkit/WebView;

    if-eqz v3, :cond_c

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_6

    :cond_c
    move-object v0, v1

    :goto_6
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    goto :goto_7

    :cond_d
    move-object v0, v1

    :goto_7
    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_f
    :goto_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    if-nez v3, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v1

    :cond_10
    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_11
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->prePage()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    goto :goto_9

    :cond_12
    move-object v0, v1

    :goto_9
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    goto :goto_a

    :cond_13
    move-object v2, v1

    :goto_a
    invoke-direct {p0, v0, v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->injectRenderFramework(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/structure/App;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v2, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_14
    if-eqz v1, :cond_15

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getStartLoadingNativeAnimDelayTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoadingDelay(J)V

    :cond_15
    return-void
.end method

.method private static final initView$lambda$12$lambda$11$lambda$10(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goBack()V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$12$lambda$11$lambda$8(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addScreen$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$12$lambda$11$lambda$9(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->checkBackToPageInterceptAndRemoveIt()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goHome()V

    :cond_0
    return-void
.end method

.method private final injectRenderFramework(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 7

    sget-object v0, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->addAppId(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    return-void

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v3, "page"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "uniqueChainID"

    const-string v5, "-1"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v1

    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v3, v1

    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    move-object v4, v1

    :goto_5
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadRenderFramework:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_8
    move-object v4, v1

    :goto_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_9
    move-object v4, v1

    :goto_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_a
    move-object v4, v1

    :goto_8
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_b
    move-object v3, v1

    :goto_9
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v2, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v0

    goto :goto_a

    :cond_c
    move-object v0, v1

    :goto_a
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v0, Lcom/cloud/tmc/kernel/render/LoadParams;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_d
    move-object v2, v1

    :goto_b
    iput-object v2, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_e
    move-object v2, v1

    :goto_c
    iput-object v2, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    if-eqz p2, :cond_f

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    :cond_f
    move-object p2, v1

    :goto_d
    iput-object p2, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    if-eqz p1, :cond_10

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    :cond_10
    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_e

    :cond_11
    move-object p1, v1

    :goto_e
    instance-of p2, p1, Landroid/webkit/WebView;

    if-eqz p2, :cond_12

    move-object v1, p1

    check-cast v1, Landroid/webkit/WebView;

    :cond_12
    if-eqz v1, :cond_13

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    :cond_13
    return-void
.end method

.method private final isLowClient()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->isLowClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic j0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->debugRefresh$lambda$44(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    return-void
.end method

.method public static synthetic k0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showWebViewMask$lambda$41$lambda$40(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    return-void
.end method

.method public static synthetic l0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->initView$lambda$12$lambda$11$lambda$8(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideWebViewMask$lambda$42(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setPage$lambda$17(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method

.method public static synthetic o0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->onViewCreated$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideCustomView(Z)Z

    return-void
.end method

.method private final openPage()V
    .locals 11

    const-string v0, "MiniFragment"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    sget-object v3, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    instance-of v4, v3, Lcom/cloud/tmc/render/system/SystemWebView;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/cloud/tmc/render/system/SystemWebView;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cloud/tmc/render/system/SystemWebView;->setCommonresId(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use commonres miniapp, commonresId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v4, "page"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "uniqueChainID"

    const-string v6, "-1"

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v1

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v1

    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_7
    move-object v5, v1

    :goto_5
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkFirstNormalPageOpened()V

    const-string v2, "openPage"

    const-string v4, "subPkg"

    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v5, v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v5, :cond_8

    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_6

    :cond_8
    move-object v2, v1

    :goto_6
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-class v7, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    move-result v2

    if-ne v2, v6, :cond_b

    const-string v2, "appReady"

    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->sendAppReadyToRender()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v3, v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v3, :cond_9

    move-object v1, v2

    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_9
    if-nez v1, :cond_a

    goto/16 :goto_16

    :cond_a
    invoke-virtual {v1, v5}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setFirstLaunch(Z)V

    goto/16 :goto_16

    :cond_b
    const-string v2, "pageReady"

    invoke-static {v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->sendPageReadyToRender()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_c
    move-object v8, v1

    :goto_7
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_d

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_d
    move-object v8, v1

    :goto_8
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v8, :cond_e

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_e
    move-object v8, v1

    :goto_9
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v10, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-interface {v4, v8, v9, v10, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v4, :cond_f

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_f
    move-object v4, v1

    :goto_a
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-interface {v3, v4, v8, v9, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_11

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_10

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_10
    move-object v3, v1

    :goto_b
    invoke-interface {v2, v3}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v2

    goto :goto_c

    :cond_11
    move-object v2, v1

    :goto_c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_12

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_12
    move-object v8, v1

    :goto_d
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_13

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_13
    move-object v8, v1

    :goto_e
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v4, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;

    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;-><init>(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_14

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v8

    goto :goto_f

    :cond_14
    move-object v8, v1

    :goto_f
    invoke-virtual {v4, v8}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v4, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;

    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v3

    goto :goto_10

    :cond_15
    move-object v3, v1

    :goto_10
    invoke-virtual {v4, v3}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_16

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v8

    goto :goto_11

    :cond_16
    move-object v8, v1

    :goto_11
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_17

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    :cond_17
    move-object v8, v1

    :goto_12
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;

    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_18

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v8

    goto :goto_13

    :cond_18
    move-object v8, v1

    :goto_13
    invoke-virtual {v4, v8}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v4, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;

    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v8, :cond_19

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v8

    goto :goto_14

    :cond_19
    move-object v8, v1

    :goto_14
    invoke-virtual {v4, v8}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v4, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;

    invoke-direct {v4, v3}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_1a

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v3

    goto :goto_15

    :cond_1a
    move-object v3, v1

    :goto_15
    invoke-virtual {v4, v3}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/worker/JSI;->firstGetPackageFileStatus()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :cond_1b
    if-eqz v5, :cond_1c

    invoke-static {p0, v1, v6, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V

    goto :goto_16

    :cond_1c
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_1d

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    :cond_1d
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v1

    if-eqz v1, :cond_1e

    sget-object v2, Lcom/cloud/tmc/worker/WorkerManager;->Companion:Lcom/cloud/tmc/worker/WorkerManager$Companion;

    invoke-virtual {v2}, Lcom/cloud/tmc/worker/WorkerManager$Companion;->getEVENT_RESEND_PAGE_ENTER()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$2;

    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_1e
    :goto_16
    :try_start_1
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v1

    if-eqz v1, :cond_1f

    const-string v2, "slaveLoaded"

    new-instance v3, Lcom/cloud/tmc/miniapp/ui/m0;

    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/ui/m0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    goto :goto_17

    :catchall_1
    move-exception v1

    goto :goto_18

    :cond_1f
    :goto_17
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string v2, "slaveAttached"

    new-instance v3, Lcom/cloud/tmc/miniapp/ui/n0;

    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/ui/n0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_20
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v1

    if-eqz v1, :cond_21

    const-string v2, "onSwitchTab"

    new-instance v3, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$5;

    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$5;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_19

    :goto_18
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_19
    return-void
.end method

.method private static final openPage$lambda$24(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->hideLoadingDialog()V

    const/4 p0, 0x0

    return p0
.end method

.method private static final openPage$lambda$25(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideWebViewMask()V

    const/4 p0, 0x0

    return p0
.end method

.method private final prePage()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage()V

    goto :goto_1

    :cond_2
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;

    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

    const-string v2, "renderOnMessageReady"

    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final sendAppReadyToRender()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "appReady"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method private final sendPageReadyToRender()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "pageReady"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendAppOrPageReadyToRender$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setPage$lambda$17(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setPageOnMain(Lcom/cloud/tmc/integration/structure/Page;)V

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    :goto_1
    return-void
.end method

.method private final setPageOnMain(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 4

    :try_start_0
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const-class v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->start(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/k0;

    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/ui/k0;-><init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-interface {p1, p0, v0, v1}, Lcom/cloud/tmc/integration/structure/Page;->bindContext(Lcom/cloud/tmc/integration/structure/PageContext;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v0, "MiniFragment"

    const-string v1, "setPageOnMain error"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private static final setPageOnMain$lambda$28(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IRender;->registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    :cond_0
    invoke-static {p1, p0, p1}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addADJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v5, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    move-object v1, p1

    move-object v2, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$setPageOnMain$1$2;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$setPageOnMain$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/render/IRender;->registerICustomViewVisiable(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->initView()V

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->init()V

    return-void
.end method

.method private final showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-static {p0, p1, v1, v2}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->tryToProtrait(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;)V

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    const-string v0, "contextView"

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->contextView:Landroid/view/View;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mScrollY:I

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method private final showWebViewMask(I)V
    .locals 4

    const-string v0, "MiniFragment"

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->enableWebViewMask()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWebViewMask enableWebViewMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oo:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v2, Lcom/cloud/tmc/miniapp/ui/p0;

    invoke-direct {v2, p1, v1, p0}, Lcom/cloud/tmc/miniapp/ui/p0;-><init>(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static synthetic showWebViewMask$default(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->showWebViewMask(I)V

    return-void
.end method

.method private static final showWebViewMask$lambda$41(ILandroid/view/View;Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 3

    const-string v0, "$maskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MiniFragment"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p0, "showWebViewMask maskView background \u8bbe\u7f6e\u6210\u529f"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    const-string p0, "showWebViewMask maskView \u663e\u793a\u6210\u529f"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Lcom/cloud/tmc/miniapp/ui/r0;

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/ui/r0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p2, p1, v1, v2, p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z

    const-string p0, "showWebViewMask \u6267\u884c\u5b8c\u6bd5"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p1, ""

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static final showWebViewMask$lambda$41$lambda$40(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MiniFragment"

    const-string v1, "showWebViewMask \u6267\u884c\u8d85\u65f6\u5173\u95ed\u906e\u7f69"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideWebViewMask()V

    return-void
.end method

.method private final updateTabBarMessage()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_a

    const-class v1, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getShowRedDot()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/node/TabBarNode;->showTabBarRedDot(I)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBarRedDot(I)Z

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getShowUnreadIcon()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_1

    const-string v3, "page"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getIndex()I

    move-result v5

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getUnreadIcon()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    move-object v6, v2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/kernel/node/TabBarNode$DefaultImpls;->showTabBarUnreadIcon$default(Lcom/cloud/tmc/kernel/node/TabBarNode;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->getIndex()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->hideTabBarUnreadIcon(I)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getBadgeMessageHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->getShowBadge()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->getIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->setTabBarBadge(ILjava/lang/String;)Z

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarBadgeMessage;->getIndex()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/cloud/tmc/kernel/node/TabBarNode;->removeTabBarBadge(I)Z

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getTabBarStyle()Lcom/cloud/tmc/integration/model/TabBarStyle;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarStyle;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarStyle;->getSelectedColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarStyle;->getBorderStyle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/cloud/tmc/kernel/node/TabBarNode;->setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_a
    :goto_3
    return-void

    :goto_4
    const-string v1, "MiniFragment"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    return-void
.end method

.method private final updateTabBarStyle()V
    .locals 7

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBarManual()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v4, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    invoke-interface {v2, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v4, 0x4

    invoke-static {v2, v0, v1, v4, v3}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar$default(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/AppLoadResult;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v0

    iget-object v2, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    const/4 v4, -0x1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    iget-object v5, v5, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    move-object v6, v3

    :goto_3
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_4
    if-eq v1, v4, :cond_9

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/structure/Page;->setTabPage(Z)V

    :goto_5
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v3

    :cond_6
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    move-object v2, v1

    :cond_8
    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Ljava/lang/String;)Z

    :cond_9
    return-void
.end method

.method private final updateTitleBarStyle()V
    .locals 6

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkUpdateScreenButton()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyleIsHide()Z

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setTitleBarVisible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarTextStyleIsWhite()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleColor(Z)V

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyleIsWhite()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkUpdateHomeButton()V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableNavigationBarLoading()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationStyleIsCustom()Z

    move-result v3

    if-ne v3, v1, :cond_7

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->customNavigationStyle(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleColor(Z)V

    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/cloud/tmc/integration/constants/IntegrationConstants;->INSTANCE:Lcom/cloud/tmc/integration/constants/IntegrationConstants;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/constants/IntegrationConstants;->getDefaultNavigationBarBackgroundColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarBackgroundColor(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_a

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTransparent(Z)V

    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public changeNavigationBarProgress(IIJ)V
    .locals 8

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setNavigationBarProgressUpdating(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setNavigationBarProgressUpdating(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    new-instance v7, Lcom/cloud/tmc/miniapp/ui/t0;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/t0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V

    invoke-virtual {v0, v7, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public final checkUpdateScreenButton()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AbilitiesUtils;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "it.appId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "title_bar_add_home"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/AbilitiesUtils;->getAbilityEnableStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_1

    const-string v2, "isApiAddScreenEnabled"

    invoke-interface {v1, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "showAddScreenButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->showAddScreenButton()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideAddScreenButton()V

    goto :goto_2

    :cond_3
    const-string v2, "hideAddScreenButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideAddScreenButton()V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->showAddScreenButton()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideAddScreenButton()V

    :cond_6
    :goto_2
    return-void
.end method

.method public debugRefresh()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cloud/tmc/kernel/debug/DebugConfig;->DEBUG_REFRESH:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/s0;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/s0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 9

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->destroy()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v0, :cond_0

    const-string v1, "consumeTime"

    invoke-interface {v0, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    const-string v1, "create_miniapp_worker_fail"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->removeFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->removeADJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    const-string v2, "onPageReady"

    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_3
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v6, "page"

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v7, "uniqueChainID"

    const-string v8, "-1"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v2

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v2

    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v2

    :goto_3
    const-string v6, "pageRandomId"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v5, "clear"

    invoke-interface {v0, v1, v3, v5, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    const-class v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object v1, v2

    :goto_4
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    move-object v3, v2

    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->destroy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->removeRender(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    :cond_c
    :goto_6
    return-void
.end method

.method public exitFullScreen()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideCustomView(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getAdTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adm:Z

    return v0
.end method

.method public final getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getErrorView()Lcom/cloud/tmc/integration/structure/ui/ErrorView;
    .locals 3

    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEventCenter()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-object v0
.end method

.method public final getEventCenter_page()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-object v0
.end method

.method public final getEventCreateMiniAppFail()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    return-object v0
.end method

.method public final getEventCreateOnPageReady()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    return-object v0
.end method

.method public final getGlobalObjectScript(Ljava/lang/String;Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function() {window."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; })();"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLoadingView()Lcom/cloud/tmc/integration/structure/ui/LoadingView;
    .locals 3

    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Not yet implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPageContainer()Lcom/cloud/tmc/integration/structure/ui/PageContainer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/TabBarView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hideNavigationBarLoading()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public initView()V
    .locals 6

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->initView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getEntryInfo()Lcom/cloud/tmc/integration/model/EntryInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    const-string v4, ""

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-virtual {v3, v5}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->attachPage(Lcom/cloud/tmc/integration/structure/Page;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarTitleText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, v2

    :cond_3
    :goto_1
    invoke-virtual {v3, v5}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setTitle(Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/u0;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/ui/u0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnAddScreenClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/v0;

    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/v0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnHomeClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/w0;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/ui/w0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBarManual()Z

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_6
    move-object v1, v4

    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Ljava/lang/String;)Z

    :cond_8
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkUpdateTitleBarStyle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v1, "MiniFragment"

    invoke-static {v1, v4, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->navigationBarDefaultStyleIsWhite:Z

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o(Landroid/view/LayoutInflater;)Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const-string p2, "binding!!.root"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->attachToSwipeBack(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 6

    sget-object v0, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v1, v3}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->onDestoryForRenderId(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_4
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onDestroy()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->exitType:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->getDes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v2

    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v2

    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pageRandomId"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_8
    move-object v3, v2

    :goto_7
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v5, "clear"

    invoke-interface {v1, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v2

    :cond_9
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->destroy(Landroid/os/Bundle;)V

    :cond_a
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onDestroyView()V

    invoke-static {p0}, Lcom/cloud/tmc/kernel/debug/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_1

    const-class v1, Lcom/cloud/tmc/kernel/engine/EngineRouter;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/engine/EngineRouter;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->unRegisterRender(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 6

    const-string v0, "eventData"

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Long>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v1, v3

    :goto_2
    invoke-interface {v0, v1, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->plusTime(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    move-object v1, v3

    :goto_3
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ICommunicationTimeProxy;->plusNum(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "miniapp"

    const-string v0, "parse consumeTime from EventCenter fail"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadMoreEvent()V
    .locals 7

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onLoadMoreEvent()V

    const-string v0, "[MiniFragment]\uff1aonLoadMoreEvent"

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "onReachBottom"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->onPauseForRenderId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const/16 p1, 0x64

    if-ne p2, p1, :cond_5

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->perfSendFlag:Z

    if-nez p1, :cond_5

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->perfSendFlag:Z

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    return-void
.end method

.method public synthetic onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/render/b;->b(Lcom/cloud/tmc/kernel/render/IPageEventCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic onReceivedTitle(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/render/b;->c(Lcom/cloud/tmc/kernel/render/IPageEventCallback;Ljava/lang/String;)V

    return-void
.end method

.method public onRefreshEvent()V
    .locals 7

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onRefreshEvent()V

    const-string v0, "[MiniFragment]\uff1aonRefreshEvent"

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "onPullDownRefresh"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendEventOrLifecycleToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refresh fail!!,msg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public synthetic onRequestFocus()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/kernel/render/b;->d(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 10

    const-string v0, "MiniFragment"

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onResume()V

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    move-object v2, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume:->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->needRefreshYCoordinate:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->needRefreshYCoordinate:Z

    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/cloud/tmc/miniapp/ui/MiniFragment$onResume$1$1;

    invoke-direct {v7, p0, v3}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$onResume$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->checkUpdateTitleBarStyle()V

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    instance-of v4, v2, Landroid/webkit/WebView;

    if-eqz v4, :cond_4

    move-object v3, v2

    check-cast v3, Landroid/webkit/WebView;

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/webkit/WebView;->onResume()V

    :cond_5
    sget-object v2, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->onResumeForRenderId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onStop()V

    const-string v0, "MiniFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->onStopForRenderId(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->hideCustomView(Z)Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/structure/Page;->setPageChainContext(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    const-string v2, ""

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    const-string v3, "page?.pagePath ?: \"\""

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_5

    :cond_5
    const-string v3, "page?.pageId ?: \"\""

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, v0

    :goto_6
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, v0

    :goto_7
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_8
    move-object v3, v0

    :goto_8
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_9
    move-object v3, v0

    :goto_9
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;

    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v1, v3}, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;

    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-direct {p1, p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;-><init>(Landroidx/fragment/app/Fragment;Lcom/cloud/tmc/integration/structure/Page;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v1, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    :cond_a
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p1, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p1, :cond_b

    const-string v1, "consumeTime"

    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_b
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    const-string v1, "create_miniapp_worker_fail"

    if-eqz p1, :cond_c

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-interface {p1, v1, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_c
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p1, :cond_d

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    const-string v4, "onPageReady"

    invoke-interface {p1, v4, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_d
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p1, :cond_e

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-interface {p1, v1, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v3, "page"

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_f

    const-string v4, "uniqueChainID"

    const-string v5, "-1"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_f
    move-object v3, v0

    :goto_a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_10

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_10
    move-object v3, v0

    :goto_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_11
    move-object v3, v0

    :goto_c
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_12
    move-object v1, v0

    :goto_d
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CREATE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p1, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_13

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_e

    :cond_13
    move-object p1, v0

    :goto_e
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    move-result p1

    if-nez p1, :cond_15

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p2, :cond_14

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    goto :goto_f

    :cond_14
    move-object p2, v0

    :goto_f
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p1, p2, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :cond_15
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_16

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    :cond_16
    invoke-static {p0, p0}, Lcom/cloud/tmc/kernel/debug/a;->a(Ljava/lang/Object;Lcom/cloud/tmc/kernel/debug/DebugCallback;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_17

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0Oo:Landroid/widget/ImageView;

    if-eqz p1, :cond_17

    new-instance p2, Lcom/cloud/tmc/miniapp/ui/l0;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/ui/l0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    return-void
.end method

.method public final setAdTag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    return-void
.end method

.method public final setAdm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adm:Z

    return-void
.end method

.method public final setCallbackId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public setCapsuleStyle(Z)V
    .locals 3

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getCapsule()Lcom/cloud/tmc/miniapp/widget/CapsuleView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-static {v0, p1, v2, v1}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;ILjava/util/HashMap;I)V

    :cond_1
    return-void
.end method

.method public final setEventCenter(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-void
.end method

.method public final setEventCenter_page(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCenter_page:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-void
.end method

.method public final setEventCreateMiniAppFail(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateMiniAppFail:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    return-void
.end method

.method public final setEventCreateOnPageReady(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->eventCreateOnPageReady:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    return-void
.end method

.method public setNavigationBarIconStyle(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    :cond_0
    return-void
.end method

.method public setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 5

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    iput-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const-string v1, "MiniFragment"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppLifecycleCallback()Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "setMiniappLifecycleCallback"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v4, v3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_1
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/structure/App;->setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/q0;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/ui/q0;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    const-string v3, "https://100000"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    const-string v4, "ad_click"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adm:Z

    if-eqz v3, :cond_5

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "abilityName"

    const-string v4, "callback"

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "renderId"

    invoke-virtual {p1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "target"

    const-string v4, "native"

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "source"

    const-string v4, "render"

    invoke-virtual {p1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    const-string v4, "callbackId"

    invoke-virtual {p1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "adUrl"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataJson"

    invoke-virtual {p2, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    invoke-virtual {p2, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v5

    :goto_1
    invoke-static {p2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p2

    const-string v2, "message"

    invoke-virtual {p2, v2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p2

    const-string v2, "call"

    invoke-virtual {p2, v2}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    move-result-object p1

    invoke-interface {p2, p1, v5}, Lcom/cloud/tmc/kernel/bridge/RenderBridge;->sendToRender(Lcom/cloud/tmc/kernel/bridge/RenderCallContext;Lcom/cloud/tmc/kernel/bridge/SendToRenderCallback;)V

    :cond_4
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adTag:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->adm:Z

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->callbackId:Ljava/lang/String;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/a;->b(Lcom/cloud/tmc/kernel/render/IPageCallback;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "super.shouldOverrideUrlLoading(view, request)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public showNavigationBarLoading()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_2
    return-void
.end method
