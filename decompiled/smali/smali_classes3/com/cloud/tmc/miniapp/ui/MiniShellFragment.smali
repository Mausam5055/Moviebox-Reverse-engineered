.class public final Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;
.super Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/IPageCallback;
.implements Lcom/cloud/tmc/kernel/debug/DebugCallback;
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;
.implements Lcom/cloud/tmc/miniapp/action/StatusAction;
.implements Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;
.implements Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniShellFragment"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

.field private contextView:Landroid/view/View;

.field private enablePreRequest:Z

.field private eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private final mHandler$delegate:Lkotlin/Lazy;

.field private mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

.field private mScrollY:I

.field private mStatusLayout:Lcom/cloud/tmc/miniapp/widget/StatusLayout;

.field private needRefreshYCoordinate:Z

.field private perEnterFlag:Z

.field private perfSendFlag:Z

.field private typeLoadData:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->Companion:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$mHandler$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$mHandler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getApp$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    return-object p0
.end method

.method public static final synthetic access$getAppLoadResult(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContextView$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMScrollY$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)I
    .locals 0

    iget p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mScrollY:I

    return p0
.end method

.method public static final synthetic access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    return-object p0
.end method

.method public static final synthetic access$getPerEnterFlag$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perEnterFlag:Z

    return p0
.end method

.method public static final synthetic access$hideCustomView(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->hideCustomView(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isHomepage(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->isHomepage(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->openPage()V

    return-void
.end method

.method public static final synthetic access$setPerEnterFlag$p(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perEnterFlag:Z

    return-void
.end method

.method public static final synthetic access$showCustomView(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method private static final changeNavigationBarProgress$lambda$18(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->changeNavigationBarProgress(IIJ)V

    return-void
.end method

.method private final checkUpdateTitleBarStyle()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isShow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->updateTitleBarStyle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MiniShellFragment"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
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

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarBackgroundColor()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->navigationBarIconStyleIsWhite()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    :cond_4
    return-void
.end method

.method public static synthetic d0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setPage$lambda$14(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method

.method private static final debugRefresh$lambda$28(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
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

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

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

.method public static synthetic e0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onViewCreated$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setPageOnMain$lambda$20(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    return-void
.end method

.method public static synthetic g0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->changeNavigationBarProgress$lambda$18(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V

    return-void
.end method

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic h0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onReceivedError$lambda$33(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    return-void
.end method

.method private final hideCustomView(Z)Z
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->needRefreshYCoordinate:Z

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$hideCustomView$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$hideCustomView$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getHasVirtualNavBar()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showVirtualNavBar()V

    :cond_5
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->landScapeToProtrait(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    return v0
.end method

.method public static synthetic i0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->initView$lambda$7$lambda$5$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    return-void
.end method

.method private final init()V
    .locals 7

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
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "get(BuildConfigProxy::class.java).isDebug"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->enableWebViewDebugger()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    invoke-static {v1, v3}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v1

    const-string v3, "contextView"

    if-eqz v1, :cond_a

    :try_start_1
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBgColor()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v6, :cond_6

    iget-object v6, v6, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    if-eqz v6, :cond_6

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5, v4}, Lcom/cloud/tmc/kernel/render/IRender;->setBgColor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    const-string v5, "MiniShellFragment"

    const-string v6, "set content background color error"

    invoke-static {v5, v6, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullDownRefresh()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnablePullUpRefresh()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_8
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    if-nez v4, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    invoke-virtual {p0, v4, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->attachToRefresh(Landroid/view/View;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    if-nez v4, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v2

    :cond_b
    invoke-static {v4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v3, v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v3, :cond_d

    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_5

    :cond_d
    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_e

    sget-object v3, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getStartLoadingH5AnimDelayTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideStatusLoadingDelay(J)V

    :cond_e
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v1

    if-ne v1, v0, :cond_10

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_f
    move-object v1, v2

    :goto_6
    const-string v3, "webview"

    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    goto :goto_7

    :cond_11
    move-object v0, v2

    :goto_7
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    :cond_12
    invoke-direct {p0, v0, v2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->injectRenderFramework(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/structure/App;)V

    return-void
.end method

.method private static final initView$lambda$7$lambda$5$lambda$2(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->addScreen$default(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$7$lambda$5$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->goHome()V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$7$lambda$5$lambda$4(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/webkit/WebView;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->canGoBack(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    :cond_2
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, p1

    :goto_2
    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    :cond_4
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleVisible(Z)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarTitleVisible(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method private final injectRenderFramework(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 13

    new-instance v6, Lcom/cloud/tmc/kernel/render/LoadParams;

    invoke-direct {v6}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    iput-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v7

    :goto_1
    iput-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v7

    :goto_2
    iput-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStart()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v7

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v7

    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v7

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v7

    :goto_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    move-object v0, v7

    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_8
    move-object v1, v7

    :goto_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_9
    move-object v0, v7

    :goto_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_a
    move-object v1, v7

    :goto_a
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_b
    move-object v0, v7

    :goto_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_c
    move-object v1, v7

    :goto_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_d
    move-object v0, v7

    :goto_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object v1, v7

    :goto_e
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_f
    move-object v0, v7

    :goto_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_10
    move-object v1, v7

    :goto_10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_11
    move-object v0, v7

    :goto_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_12
    move-object v1, v7

    :goto_12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_13
    move-object v0, v7

    :goto_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_14
    move-object v1, v7

    :goto_14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    :cond_15
    const-string v0, "null"

    :cond_16
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v8, 0x2

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_15

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v8, :cond_18

    sget v2, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    goto :goto_16

    :cond_18
    :goto_15
    sget v2, Lcom/cloud/tmc/miniapp/R$color;->mini_color_bg_01:I

    :goto_16
    invoke-static {v0, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_19
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_17

    :cond_1a
    move-object v0, v7

    :goto_17
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_18

    :cond_1b
    move-object v0, v7

    :goto_18
    const-string v1, "preLoadurl"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->injectJSFromConfig(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v9, "MiniShellFragment"

    if-eqz p1, :cond_1c

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_19

    :catchall_0
    move-exception v0

    goto/16 :goto_27

    :cond_1c
    move-object v0, v7

    :goto_19
    instance-of v1, v0, Lcom/cloud/tmc/render/system/ShellWebView;

    if-eqz v1, :cond_1d

    check-cast v0, Lcom/cloud/tmc/render/system/ShellWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1a

    :cond_1d
    move-object v0, v7

    :goto_1a
    const-string v10, "preHtml"

    const-string v1, "loadParams.url"

    const-string v2, "nevermore"

    const-class v11, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    :try_start_1
    invoke-virtual {v0}, Lcom/cloud/tmc/render/system/ShellWebView;->isOffScreenRender()Z

    move-result v0

    if-ne v0, v3, :cond_26

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b

    :cond_1e
    move-object v0, v7

    :goto_1b
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v4

    goto :goto_1c

    :cond_1f
    move-object v4, v7

    :goto_1c
    instance-of v5, v4, Lcom/cloud/tmc/render/system/ShellWebView;

    if-eqz v5, :cond_20

    check-cast v4, Lcom/cloud/tmc/render/system/ShellWebView;

    goto :goto_1d

    :cond_20
    move-object v4, v7

    :goto_1d
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lcom/cloud/tmc/render/system/ShellWebView;->isLoadDataWithBaseURL()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1e

    :cond_21
    move-object v4, v7

    :goto_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "load Shell offscreen -> warmup: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", loadDataWithBaseURL: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/cloud/tmc/render/system/ShellWebView;

    if-eqz v2, :cond_22

    check-cast v0, Lcom/cloud/tmc/render/system/ShellWebView;

    goto :goto_1f

    :cond_22
    move-object v0, v7

    :goto_1f
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/cloud/tmc/render/system/ShellWebView;->isLoadDataWithBaseURL()Z

    move-result v0

    if-ne v0, v3, :cond_24

    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setTrackPointLoadData(Z)V

    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    if-eqz p2, :cond_23

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_23
    move-object v1, v7

    :goto_20
    invoke-interface {v0, v1, v10}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    if-eqz p2, :cond_25

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_25
    move-object v1, v7

    :goto_21
    const-string v2, "offScreenRender"

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_26
    if-eqz p1, :cond_27

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_22

    :cond_27
    move-object v0, v7

    :goto_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load Shell url -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v2, "enableShellPreRequest"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->enablePreRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "use http -> url is "

    if-eqz v0, :cond_2d

    :try_start_2
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "md5 -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_29

    const-class v5, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    const-string v12, "md5"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4, v0, v3, v3}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;->getPreHtmlCache(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_24

    :cond_28
    :goto_23
    move-object v4, v0

    goto :goto_25

    :cond_29
    :goto_24
    const-string v0, ""

    goto :goto_23

    :goto_25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    iput-boolean v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setTrackPointLoadData(Z)V

    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    if-eqz p1, :cond_2a

    const-string v3, "text/html"

    const-string v5, "UTF-8"

    const/4 v12, 0x0

    move-object v0, p1

    move-object v1, v6

    move-object v2, v4

    move-object v4, v5

    move-object v5, v12

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/render/IRender;->loadDataWithBaseURL(Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use loadDataWithBaseURL -> url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    if-eqz p2, :cond_2b

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_2b
    move-object v1, v7

    :goto_26
    invoke-interface {v0, v1, v10}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_2c
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    invoke-interface {p1, v6}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    goto :goto_28

    :cond_2d
    iget-object v0, v6, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    invoke-interface {p1, v6}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_28

    :goto_27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    if-eqz p1, :cond_2e

    invoke-interface {p1, v6}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    :cond_2e
    invoke-static {v9, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_28
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_31

    new-instance p2, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    const-string v0, "pageEnter"

    invoke-direct {p2, v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_30
    move-object v0, v7

    :goto_29
    invoke-virtual {p2, v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setRenderId(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string v0, "renderOnMessageReady"

    invoke-interface {p1, v0, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_31
    invoke-virtual {p0, v8}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->initDomLoadMonitor(I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_32

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_32
    move-object p1, v7

    :goto_2a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_33

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v7

    :cond_33
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndForApp$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic j0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->initView$lambda$7$lambda$5$lambda$4(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->debugRefresh$lambda$28(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    return-void
.end method

.method public static synthetic l0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->initView$lambda$7$lambda$5$lambda$3(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final onReceivedError$lambda$33(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onReceivedError$1$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->loading_error_tv:I

    const-string v4, ""

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v6, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;->getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setCapsuleStyle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->hideCustomView(Z)Z

    return-void
.end method

.method private final openPage()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "uniqueChainID"

    const-string v5, "-1"

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_3

    :cond_3
    move-object v0, v3

    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->sendAppReadyToRender()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v2, :cond_4

    move-object v3, v0

    check-cast v3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_4
    if-nez v3, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setFirstLaunch(Z)V

    goto/16 :goto_6

    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->sendPageReadyToRender()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v3

    :goto_4
    invoke-interface {v0, v4}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->getWorkerById(Ljava/lang/String;)Lcom/cloud/tmc/kernel/worker/JSI;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/worker/JSI;->firstGetPackageFileStatus()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_9
    if-eqz v1, :cond_a

    invoke-static {p0, v3, v2, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V

    goto :goto_6

    :cond_a
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    :cond_b
    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v1, Lcom/cloud/tmc/worker/WorkerManager;->Companion:Lcom/cloud/tmc/worker/WorkerManager$Companion;

    invoke-virtual {v1}, Lcom/cloud/tmc/worker/WorkerManager$Companion;->getEVENT_RESEND_PAGE_ENTER()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$openPage$1;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$openPage$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_c
    :goto_6
    return-void
.end method

.method private final prePage()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->openPage()V

    goto :goto_0

    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$prePage$1;

    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$prePage$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V

    const-string v2, "renderOnMessageReady"

    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final recordPointAfterLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v1, p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndForApp$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private final recordPointBeforeLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v0, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v0, v2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v4, ""

    const-string v5, ""

    iget-object v0, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v6, v1

    goto :goto_0

    :cond_1
    move-object v6, v0

    :goto_0
    new-instance v8, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-direct {v8}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;-><init>()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {v8, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v3, p0

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->addPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v3, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    move-result v0

    if-nez v0, :cond_7

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v2

    :goto_3
    instance-of v3, p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v3, :cond_5

    check-cast p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_4

    :cond_5
    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_6
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v0, v2, p1, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStart()V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    move-object p1, v1

    :cond_8
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    move-object p1, v1

    :cond_9
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    move-object p1, v1

    :cond_a
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    move-object p1, v1

    :cond_b
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    move-object p1, v1

    :cond_c
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    move-object p1, v1

    :cond_d
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    move-object p1, v1

    :cond_e
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    move-object p1, v1

    :cond_f
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    move-object p1, v1

    :cond_10
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_11

    move-object p1, v1

    :cond_11
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    move-object p1, v1

    :cond_12
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    move-object p1, v1

    :cond_13
    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidEndNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/UrlUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_5

    :cond_14
    move-object v1, p1

    :goto_5
    invoke-virtual {p0, v1, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStartNew(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    :cond_15
    const-string p1, "null"

    :cond_16
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlStart(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
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

.method private static final setPage$lambda$14(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 9

    const-string v0, "MiniShellFragment"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$page"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    const-string v1, "pageChainContext"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    const-string v5, ""

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->addPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageStart()V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setPageOnMain(Lcom/cloud/tmc/integration/structure/Page;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppLifecycleCallback()Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_4

    const-string p1, "setMiniappLifecycleCallback"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_2
    invoke-interface {p1, v2}, Lcom/cloud/tmc/integration/structure/App;->setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    :cond_4
    :goto_3
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

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

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

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/p1;

    invoke-direct {v1, p1, p0}, Lcom/cloud/tmc/miniapp/ui/p1;-><init>(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    invoke-interface {p1, p0, v0, v1}, Lcom/cloud/tmc/integration/structure/Page;->bindContext(Lcom/cloud/tmc/integration/structure/PageContext;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v0, "MiniShellFragment"

    const-string v1, "setPageOnMain error"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private static final setPageOnMain$lambda$20(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/AuthorityProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/AuthorityProxy;

    invoke-interface {v0, p0}, Lcom/cloud/tmc/integration/proxy/AuthorityProxy;->checkFullScreenAuthority(Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result v0

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->setSupportFullScreen(Z)V

    :cond_0
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IRender;->registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/cloud/tmc/kernel/render/IWebView;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/render/IWebView;->setMiniAppType(I)V

    :goto_3
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v1

    :goto_4
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_7

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_5

    :cond_7
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v1

    :goto_6
    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :goto_7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    :cond_a
    move-object v5, v1

    iget-object v7, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    move-object v3, p1

    move-object v4, p0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->addFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    :cond_b
    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p0

    if-eqz p0, :cond_c

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$setPageOnMain$1$2;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$setPageOnMain$1$2;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    invoke-interface {p0, v0}, Lcom/cloud/tmc/kernel/render/IRender;->registerICustomViewVisiable(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V

    :cond_c
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->initView()V

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->init()V

    return-void
.end method

.method private final showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0OO:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    const/4 v0, 0x0

    const-string v1, "contextView"

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->contextView:Landroid/view/View;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mScrollY:I

    :cond_5
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_6
    return-void
.end method

.method private final updateTitleBarStyle()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideHomeButton()V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->checkUpdateScreenButton()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->setNavigationBarIconStyle(Z)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getEnableNavigationBarLoading()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    new-instance v7, Lcom/cloud/tmc/miniapp/ui/o1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/o1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;IIJ)V

    invoke-virtual {v0, v7, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public final checkUpdateScreenButton()V
    .locals 0

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

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/i1;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/i1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v0, :cond_0

    const-string v1, "consumeTime"

    invoke-interface {v0, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {p0, v0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->removeFullScreenJSIListener(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    const-class v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/cloud/tmc/integration/performanceanalyse/screen/IScreenInspectProxy;->destroy(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->fromWarmup()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const-class v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;->removeRender(Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(IInnerH5WebviewPool::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool$DefaultImpls;->removeWebview$default(Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;Lcom/cloud/tmc/kernel/render/IRender;ZILjava/lang/Object;)V

    sget-object v0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->INSTANCE:Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->destroy(Lcom/cloud/tmc/kernel/render/IRender;)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    :cond_7
    :goto_5
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_8
    move-object v0, v2

    :goto_6
    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/structure/App;->setLoadHtmlDataCallback(Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :goto_7
    const-string v1, "MiniShellFragment"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method public exitFullScreen()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getContentView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEnablePreRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->enablePreRequest:Z

    return v0
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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mStatusLayout:Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    return-object v0
.end method

.method public getTabBar()Lcom/cloud/tmc/integration/structure/ui/TabBar;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hideNavigationBarLoading()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public initView()V
    .locals 11

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

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->attachPage(Lcom/cloud/tmc/integration/structure/Page;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getNavigationBarTitleText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v5

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/cloud/tmc/integration/model/EntryInfo;->title:Ljava/lang/String;

    :cond_3
    :goto_2
    invoke-virtual {v4, v2}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setTitle(Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/l1;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/ui/l1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v4, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnAddScreenClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/ui/m1;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/miniapp/ui/m1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    invoke-virtual {v4, v1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnHomeClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/n1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/n1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    invoke-virtual {v4, v0}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v3, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/widget/TabBarView;

    const-string v0, "v"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-static {v5, v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTabBar(Lcom/cloud/tmc/integration/structure/AppLoadResult;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v6

    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/cloud/tmc/integration/structure/ui/TabBar$DefaultImpls;->setTabs$default(Lcom/cloud/tmc/integration/structure/ui/TabBar;Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->checkUpdateTitleBarStyle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    const-string v1, "MiniShellFragment"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public isLoadStatusLoadingOrError()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    move-result v0

    return v0
.end method

.method public loadHtmlData(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;)Z
    .locals 11

    const-string v0, "MiniShellFragment"

    const-string v1, "loadParams"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v3, "enableShellPreRequest"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->enablePreRequest:Z

    if-eqz v2, :cond_8

    iget-object v2, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "md5 -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    const-class v5, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    const-string v6, "md5"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v3, v2, v4, v4}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;->getPreHtmlCache(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v7, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_1
    const-string v2, ""

    goto :goto_0

    :goto_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object v3, v2

    :goto_3
    instance-of v5, v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v5, :cond_3

    check-cast v3, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_4

    :cond_3
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageId()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_4
    move-object v3, v2

    :goto_5
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getH5PageId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->recordPointBeforeLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setTrackPointLoadData(Z)V

    iget-object v5, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    const-string v6, "loadParams.url"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v5 .. v10}, Lcom/cloud/tmc/kernel/render/IRender;->loadDataWithBaseURL(Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v5, p2, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use loadDataWithBaseURL -> url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    iget-object v6, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_6
    const-string v6, "preHtml"

    invoke-interface {v5, v2, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v3}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->recordPointAfterLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :cond_7
    return v1

    :goto_6
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return v1
.end method

.method public loadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;)V
    .locals 3

    const-string v0, "loadParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getPage()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getH5PageId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->recordPointBeforeLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->recordPointAfterLoadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-string p3, "loadAnimation(activity, nextAnim)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;

    invoke-direct {p3, p2, p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onCreateAnimation$1;-><init>(ZLcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o(Landroid/view/LayoutInflater;)Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const-string p2, "binding!!.root"

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->attachToSwipeBack(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :goto_0
    sget p2, Lcom/cloud/tmc/miniapp/R$id;->sl_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mStatusLayout:Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onDestroy()V

    const-class v0, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    invoke-interface {v0, p0}, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;->unRegisterMonitorListener(Lcom/cloud/tmc/render/MonitorWebviewListener;)V

    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClear()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClearNew()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->destroySubscriber()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onDestroyView()V

    invoke-static {p0}, Lcom/cloud/tmc/kernel/debug/a;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/PageContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    .locals 4

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->checkUpdateTitleBarStyle()V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string v2, "pageFinished"

    invoke-virtual {p0, v0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->injectJSFromConfig(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.pageId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_5
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->injectScreenFullJS(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-class v1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    sget-object v2, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageFinishedNew(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->getViewThemeMode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setCapsuleStyle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    const-string p2, "MiniShellFragment"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "MiniShellFragment"

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/webkit/WebView;

    :cond_1
    const-string v1, "pageStart"

    invoke-virtual {p0, v2, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->injectJSFromConfig(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->baseUrl:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "load htmlData ,close loading page"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    sget-object v3, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-interface {v2, v1, v3}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->typeLoadData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackStartNew(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->initDomLoadMonitor(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->getVisible(Landroid/view/View;)Z

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perfSendFlag:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perfSendFlag:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_4
    const/16 v0, 0x64

    if-eqz p2, :cond_8

    if-eq p2, v0, :cond_7

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    :cond_7
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perfSendFlag:Z

    if-nez v1, :cond_9

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->perfSendFlag:Z

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toGone(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_9
    :goto_2
    if-ne p2, v0, :cond_b

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    const-class v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_MINIAPP_LOAD:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-interface {v0, p2, v1}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    :cond_a
    sget-object p2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlFinish()V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackProgressChanged100New(Landroid/webkit/WebView;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackProgressChangedNew(Landroid/webkit/WebView;I)V

    const/16 p1, 0x46

    if-lt p2, p1, :cond_c

    sget-object p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    goto :goto_3

    :cond_c
    const/16 p1, 0x32

    if-lt p2, p1, :cond_d

    sget-object p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    goto :goto_3

    :cond_d
    const/16 p1, 0x1e

    if-lt p2, p1, :cond_e

    sget-object p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    goto :goto_3

    :cond_e
    sget-object p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->INIT:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    :goto_3
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    if-eqz p2, :cond_4

    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlError()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p3, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getDelayShowError()Z

    move-result p1

    if-ne p1, p2, :cond_1

    const-wide/16 p1, 0x1f4

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x1

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    instance-of v1, p3, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_2

    move-object v0, p3

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->setDelayShowError(Z)V

    :goto_2
    new-instance p3, Lcom/cloud/tmc/miniapp/ui/j1;

    invoke-direct {p3, p0}, Lcom/cloud/tmc/miniapp/ui/j1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    invoke-static {p3, p1, p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
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
    .locals 8

    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onResume()V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->needRefreshYCoordinate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->needRefreshYCoordinate:Z

    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onResume$1;

    invoke-direct {v5, p0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$onResume$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->checkUpdateTitleBarStyle()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

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

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-class p1, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;

    invoke-interface {p1, p0}, Lcom/cloud/tmc/render/IMonitorWebviewManagerProxy;->registerMonitorListener(Lcom/cloud/tmc/render/MonitorWebviewListener;)V

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
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p1, :cond_2

    const-string p2, "consumeTime"

    invoke-interface {p1, p2, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->createSubscriber()V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CREATE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v3, ""

    invoke-interface {p2, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v1, p2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_4

    check-cast p2, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    goto :goto_3

    :cond_4
    move-object p2, v0

    :goto_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->isFirstLaunch()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    move-object p2, v0

    :goto_4
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_PV:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p1, p2, v1, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->mPendingSetPage:Lcom/cloud/tmc/integration/structure/Page;

    :cond_7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->showNavigationBarLoading()V

    invoke-static {p0, p0}, Lcom/cloud/tmc/kernel/debug/a;->a(Ljava/lang/Object;Lcom/cloud/tmc/kernel/debug/DebugCallback;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0Oo:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    new-instance p2, Lcom/cloud/tmc/miniapp/ui/k1;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/ui/k1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_9
    :goto_5
    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-interface {v0, p0}, Lcom/cloud/tmc/integration/structure/App;->setLoadHtmlDataCallback(Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :goto_6
    const-string p2, "MiniShellFragment"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public reportDomLoadTime(ILjava/lang/String;)V
    .locals 1

    const-string v0, "uniqueId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->updateDomContentLoaded()V

    :cond_0
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

.method public final setEnablePreRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->enablePreRequest:Z

    return-void
.end method

.method public final setEventCenter(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-void
.end method

.method public setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    return-void
.end method

.method public setNavigationBarIconStyle(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/ImmersiveTitleBarView;->setThemeMode(I)V

    :cond_0
    return-void
.end method

.method public setPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 4

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO00o:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_6

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getUrlMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    instance-of v0, p1, Lcom/cloud/tmc/integration/structure/node/PageNode;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/integration/structure/node/PageNode;

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/structure/node/PageNode;->setPageURI(Ljava/lang/String;)V

    :cond_6
    :goto_4
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/Node;->bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    iput-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/structure/App;->putPageType(Ljava/lang/String;I)V

    :cond_9
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/h1;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/ui/h1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldInterceptOnKeyDown()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->canGoBack(Landroid/webkit/WebView;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 10

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackShouldOverrideUrlLoadingNew(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "http"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v4, v6, v5, v7}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const-class v4, Lcom/cloud/tmc/kernel/service/ConfigService;

    if-nez v2, :cond_3

    :try_start_0
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string p2, "shellSchemeFilter"

    const-string v0, "[\"whatsapp\",\"sms\",\"tel\"]"

    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Ljava/util/List;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_0

    move-object v7, p1

    check-cast v7, Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "intent"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "parseUri(it.toString(), Intent.URI_INTENT_SCHEME)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x30000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    sget-object v2, Lcom/cloud/tmc/integration/utils/MiniShellUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniShellUtils;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v7}, Lcom/cloud/tmc/integration/utils/MiniShellUtils;->checkJumpUrlWhitelist(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u652f\u6301\u5185\u90e8\u6253\u5f00\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MiniShellFragment"

    invoke-static {v5, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_7

    :try_start_1
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v3, "shellPathFilter"

    const-string v4, "[]"

    invoke-interface {v2, v3, v4}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shellPathFilterConfig"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$shouldOverrideUrlLoading$1$shellPathFilter$1;

    invoke-direct {v3}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$shouldOverrideUrlLoading$1$shellPathFilter$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "object :\n               \u2026ayList<String>>() {}.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v8, ""

    if-nez v7, :cond_4

    move-object v7, v8

    :cond_4
    :try_start_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v7

    :try_start_3
    invoke-static {v5, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v3, Lcom/cloud/tmc/integration/utils/EnvironmentUtil;->Companion:Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;

    const-string v4, "context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/cloud/tmc/integration/utils/EnvironmentUtil$Companion;->openByBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    :cond_6
    iput-boolean v6, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :goto_6
    invoke-static {v5, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_9
    if-eqz p2, :cond_b

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirect(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_b
    :goto_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public showComplete()Z
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    move-result v0

    return v0
.end method

.method public showCustomErrorLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showLoading()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    return-void
.end method

.method public showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showMainLayoutAlpha(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V

    return-void
.end method

.method public showNavigationBarLoading()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->binding:Lcom/cloud/tmc/miniapp/databinding/OooO00o;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/databinding/OooO00o;->OooO0o0:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showPhotoEmpty(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    return-void
.end method

.method public showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showUpgradeHintView(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/VersionUpdateAction$DefaultImpls;->showUpgradeHintView(Lcom/cloud/tmc/miniapp/action/VersionUpdateAction;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public statusLayoutOnResume()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    return-void
.end method

.method public updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    return-void
.end method
