.class public Lcom/cloud/tmc/integration/structure/node/AppNode;
.super Lcom/cloud/tmc/kernel/node/NodeInstance;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/App;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/tmc/integration/structure/node/AppNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TmcApp:App"


# instance fields
.field private APIAddhomeShowStatus:Z

.field private MFAHShowStatus:Z

.field private appCallback:Lcom/cloud/tmc/integration/callback/IAppCallback;

.field private appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field protected appId:Ljava/lang/String;

.field private asyncLaunchStatus:Z

.field private backPressedProcessor:Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

.field private backToPagePath:Ljava/lang/String;

.field private checkMiniAppLifecycleCallback:Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

.field private currentInterectCallbackId:Ljava/lang/String;

.field private currentMFAHStatus:Ljava/lang/Boolean;

.field private guideBackAddhomeShowStatus:Z

.field private guideBottomAddhomeShowStatus:Z

.field private guideTopAddhomeShowStatus:Z

.field private iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

.field private isHideMiniAppLoaingStatus:Z

.field private loadHtmlDataCallback:Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;

.field private mAlreadyStarted:Z

.field protected mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

.field private mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

.field protected mAppManager:Lcom/cloud/tmc/integration/structure/AppManager;

.field private mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

.field protected mAppType:Ljava/lang/String;

.field protected mAppVersion:Ljava/lang/String;

.field private mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

.field private mHasPaused:Z

.field protected mImmutableStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

.field private final mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsExited:Z

.field private mMainJSUrl:Ljava/lang/String;

.field private mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

.field private final mPageReadyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/structure/App$PageReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagesType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOnStart:Z

.field private mPermissionDialogMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRouteType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSceneParams:Landroid/os/Bundle;

.field private mSendResumeInRestart:Z

.field protected mStartParams:Landroid/os/Bundle;

.field protected mStartToken:J

.field private mStartUrl:Ljava/lang/String;

.field private mWaitLoadFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

.field private miniappLoadSuccess:Z

.field private restarting:Z

.field private showAddhomeCallback:Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;

.field private startTime:J

.field private targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/structure/node/AppNode$7;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode$7;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mWaitLoadFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mHasPaused:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPendingOnStart:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniappLoadSuccess:Z

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPagesType:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    new-instance v2, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backPressedProcessor:Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPermissionDialogMap:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentInterectCallbackId:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentMFAHStatus:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->startTime:J

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->asyncLaunchStatus:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backToPagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->isHideMiniAppLoaingStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->restarting:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->MFAHShowStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->APIAddhomeShowStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBottomAddhomeShowStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideTopAddhomeShowStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBackAddhomeShowStatus:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppVersion:Ljava/lang/String;

    const-class v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/structure/AppManager;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>(Lcom/cloud/tmc/kernel/node/Node;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mWaitLoadFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mHasPaused:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPendingOnStart:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniappLoadSuccess:Z

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPagesType:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    new-instance v2, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/processor/BackPressedProcessor;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backPressedProcessor:Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPermissionDialogMap:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentInterectCallbackId:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentMFAHStatus:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->startTime:J

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->asyncLaunchStatus:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backToPagePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->isHideMiniAppLoaingStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->restarting:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->MFAHShowStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->APIAddhomeShowStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBottomAddhomeShowStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideTopAddhomeShowStatus:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBackAddhomeShowStatus:Z

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppManager:Lcom/cloud/tmc/integration/structure/AppManager;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/structure/node/AppNode;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->lambda$pushPage$1(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->lambda$redirectTo$0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    return-object p0
.end method

.method private doPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->hide()V

    :cond_0
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/AppUtils;->isExitPage(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/AppUtils;->isExitPage(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    const-class v4, Lcom/cloud/tmc/integration/proxy/PageFactory;

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/cloud/tmc/integration/proxy/PageFactory;

    const-string v7, "https://100000.miniapp.transsion.com/index.html"

    move-object v6, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-interface/range {v5 .. v10}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    move-result-object p1

    const-string p2, "navigationType"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    const-class p3, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez p2, :cond_4

    new-instance p2, Lcom/cloud/tmc/integration/model/WorkerStore;

    const-string v4, ""

    invoke-direct {p2, v4}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v4, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v4}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :goto_2
    if-eqz v1, :cond_5

    new-instance p2, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-direct {p2, v3, v2}, Lcom/cloud/tmc/integration/structure/Page$AnimStore;-><init>(ZZ)V

    const-class p3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance p2, Lcom/cloud/tmc/integration/model/StatusStore;

    invoke-direct {p2, v3}, Lcom/cloud/tmc/integration/model/StatusStore;-><init>(Z)V

    const-class p3, Lcom/cloud/tmc/integration/model/StatusStore;

    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    const-string p3, "prePageId"

    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/structure/AppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    :cond_7
    return-void
.end method

.method private doRedirectTo(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getRouteType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->hide()V

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    iput-boolean v0, v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    const-string v4, "exitPage"

    invoke-interface {v1, v4, v3}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    new-instance v4, Lcom/cloud/tmc/integration/structure/Page$TaskContext;

    const-string v5, "navigateBack"

    invoke-direct {v4, v0, p2, v5, p1}, Lcom/cloud/tmc/integration/structure/Page$TaskContext;-><init>(ILcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v4}, Lcom/cloud/tmc/integration/structure/Page;->exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    new-instance p1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-direct {p1, v3, v0}, Lcom/cloud/tmc/integration/structure/Page$AnimStore;-><init>(ZZ)V

    invoke-virtual {p2, v2, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance p1, Lcom/cloud/tmc/integration/model/StatusStore;

    invoke-direct {p1, v3}, Lcom/cloud/tmc/integration/model/StatusStore;-><init>(Z)V

    const-class v0, Lcom/cloud/tmc/integration/model/StatusStore;

    invoke-virtual {p2, v0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "active page is tab page, path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TmcApp:App"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string v0, "prePageId"

    invoke-virtual {p2, v0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/structure/AppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    :cond_3
    return-void
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/integration/structure/node/AppNode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onEngineInitFailed()V

    return-void
.end method

.method static bridge synthetic g(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onEngineInitSuccess()V

    return-void
.end method

.method static bridge synthetic h(Lcom/cloud/tmc/integration/structure/node/AppNode;Lcom/cloud/tmc/integration/structure/AppLoadResult;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onLoadResult(Lcom/cloud/tmc/integration/structure/AppLoadResult;J)V

    return-void
.end method

.method static bridge synthetic i(Lcom/cloud/tmc/integration/structure/node/AppNode;Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->sendNetworkChangeEvent(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V

    return-void
.end method

.method private synthetic lambda$pushPage$1(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$redirectTo$0(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doRedirectTo(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    return-void
.end method

.method private onEngineInitFailed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEngineInitFailed! type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    const-class v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/ToastProxy;

    const-string v1, "Engine init failed!"

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/ToastProxy;->toast(Ljava/lang/String;)V

    return-void
.end method

.method private onEngineInitSuccess()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/structure/node/AppNode$5;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mWaitLoadFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEngineInitSuccess startPageAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TmcApp:App"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    sget-object v1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->URGENT_DISPLAY:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private onLoadResult(Lcom/cloud/tmc/integration/structure/AppLoadResult;J)V
    .locals 2

    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->trySetupEngineProxy(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->mainJsUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mMainJSUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->mainHtmlUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppVersion:Ljava/lang/String;

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-nez p1, :cond_1

    const-string p1, "TmcApp:App"

    const-string p2, "onStart but appContext == null! move to pending!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPendingOnStart:Z

    return-void

    :cond_1
    new-instance p1, Lcom/cloud/tmc/integration/model/StartTime;

    invoke-direct {p1, p2, p3}, Lcom/cloud/tmc/integration/model/StartTime;-><init>(J)V

    const-class p2, Lcom/cloud/tmc/integration/model/StartTime;

    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onStart()V

    return-void
.end method

.method private sendNetworkChangeEvent(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->transferNetworkType(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isConnected"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "networkType"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    return-void
.end method

.method private sendPageBackToWorker(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageType(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "url"

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "renderId"

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string p2, "exitedRenderId"

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-nez p3, :cond_4

    move v0, p2

    goto :goto_2

    :cond_4
    iget v0, p3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->needToExitNum:I

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "needToExitNum"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "navigateBack"

    if-nez p3, :cond_5

    move-object v4, v0

    goto :goto_3

    :cond_5
    iget-object v4, p3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->source:Ljava/lang/String;

    :goto_3
    const-string v5, "scene"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->routeType:Ljava/lang/String;

    :goto_4
    const-string p3, "routeType"

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "delta"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v1, v3, :cond_7

    goto :goto_5

    :cond_7
    move v3, p2

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "isMixedPage"

    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "pageBack"

    invoke-static {p1, p3, p2, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendEventOrLifecycleToWorker(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method private declared-synchronized trySetupEngineProxy(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TmcApp:App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetupEngineProxy already setup with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_0

    :cond_0
    :try_start_1
    const-string v0, "TmcApp:App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetupEngineProxy with appType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;->getEngineType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "appEngineType"

    invoke-virtual {p0, v0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-nez v0, :cond_1

    const-string p1, "TmcApp:App"

    const-string v0, "trySetupEngineProxy cannot init without appContext!"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-class v2, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;

    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    invoke-interface {v2, p1, p0, v3}, Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;->createEngine(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    new-instance p1, Lcom/cloud/tmc/kernel/model/InitParams;

    invoke-direct {p1}, Lcom/cloud/tmc/kernel/model/InitParams;-><init>()V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartToken()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/cloud/tmc/kernel/model/InitParams;->startToken:J

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    new-instance v3, Lcom/cloud/tmc/integration/structure/node/AppNode$1;

    invoke-direct {v3, p0}, Lcom/cloud/tmc/integration/structure/node/AppNode$1;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    invoke-interface {v2, p1, v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/engine/IEngine;->isReady()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "TmcApp:App"

    const-string v2, "showLoading because engine not ready"

    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    new-instance v4, Lcom/cloud/tmc/integration/structure/node/AppNode$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode$2;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;J)V

    invoke-interface {p1, v2, v3, v4}, Lcom/cloud/tmc/kernel/engine/IEngine;->setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/kernel/engine/EngineSetupCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public addPageReadyListener(Lcom/cloud/tmc/integration/structure/App$PageReadyListener;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    const-string v1, "TmcApp:App"

    const-string v2, "addPageReadyListener"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Lcom/cloud/tmc/integration/structure/App$PageReadyListener;->onPageReady(Lcom/cloud/tmc/integration/structure/Page;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final backPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->backPressed()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->destroy()V

    const/4 v0, 0x1

    return v0
.end method

.method public backToHeaderPage()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findHeaderFragment()Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const-class v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-interface {v4, v5, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    iput-boolean v3, v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/Page;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public bindContext(Lcom/cloud/tmc/integration/structure/AppContext;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/AppContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "bindContext....."

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isExited()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bindContext but already exit in AppMsgReceiver!"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->trySetupEngineProxy(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPendingOnStart:Z

    if-eqz p1, :cond_1

    const-string p1, "bindContext with pendingOnStart, now trigger onStart!"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onStart()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "TmcApp:App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Just Print"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onDestroy()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized exit()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "TmcApp:App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitApp with stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Just Print"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onExit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public exitAllPages(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitAllPages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-class v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    iput-boolean v1, v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    invoke-interface {v2, p1}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public exitAllThenPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitAllThenPushPage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Just Print"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/integration/proxy/PageFactory;

    const-string v3, "https://100000.miniapp.transsion.com/index.html"

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    move-result-object p2

    const-string v0, "navigationType"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    const-class v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez p3, :cond_1

    new-instance p3, Lcom/cloud/tmc/integration/model/WorkerStore;

    const-string v1, ""

    invoke-direct {p3, v1}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, p3}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {p3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getRouteType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-class v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-interface {v2, v3, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    iput-boolean v1, v3, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    new-instance v3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;

    const-string v4, "reLaunch"

    invoke-direct {v3, v0, p2, v4, p1}, Lcom/cloud/tmc/integration/structure/Page$TaskContext;-><init>(ILcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p3, v3}, Lcom/cloud/tmc/integration/structure/Page;->exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/structure/AppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    :cond_4
    return-void
.end method

.method public exitToHomePage()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitToHomePage: with stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Just Print"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->hasHomePage()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitToHomePage: \u68c0\u67e5\u662f\u5426\u6709\u9996\u9875(true \u6709\uff0cfalse\uff0c\u6ca1\u6709): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isHomePage()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :goto_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkGoHomeToHomePage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "exitToHomePage: \u5f53\u524d\u9875\u9762\u4e3a\u9996\u9875\uff0c\u505c\u6b62\u5f39\u51fa\u3002"

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isHomePage()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitToHomePage: \u5f53\u524d\u662f tab \u9875\uff0c\u5207\u6362\u5230\u9996\u9875\uff0c\u3002"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getHomePagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getmSceneParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->switchTab(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-class v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-interface {v3, v4, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    iput-boolean v2, v4, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getHomePagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "reLaunch"

    invoke-virtual {p0, v0, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "navigationType"

    const-string v4, "exitToHomePage"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public getActivePage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isHide()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivePageIndex()I
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isHide()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getAddHomeShowStatus(I)Z
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->MFAHShowStatus:Z

    return p1

    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->APIAddhomeShowStatus:Z

    return p1

    :cond_1
    const/16 v0, 0x51

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideTopAddhomeShowStatus:Z

    return p1

    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBottomAddhomeShowStatus:Z

    return p1

    :cond_3
    const/16 v0, 0x53

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBackAddhomeShowStatus:Z

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public getAlivePageCount()I
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    return-object v0
.end method

.method public getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLifecycleCallback()Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->checkMiniAppLifecycleCallback:Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    return-object v0
.end method

.method public getAppManager()Lcom/cloud/tmc/integration/structure/AppManager;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppManager:Lcom/cloud/tmc/integration/structure/AppManager;

    return-object v0
.end method

.method public getAppModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAsyncStartLoadingCallback()Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

    return-object v0
.end method

.method public getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backPressedProcessor:Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    return-object v0
.end method

.method public getBackToPagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backToPagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    return-object v0
.end method

.method public getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-object v0
.end method

.method public getFirstPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroup()Lcom/cloud/tmc/kernel/security/Group;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/tmc/kernel/security/DefaultGroup;->EXTERNAL:Lcom/cloud/tmc/kernel/security/DefaultGroup;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/security/DefaultGroup;->valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/security/DefaultGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHideMiniAppLoadingStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->isHideMiniAppLoaingStatus:Z

    return v0
.end method

.method public getHomePagePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIFileResourceManager()Lcom/cloud/tmc/kernel/resource/IFileResourceManager;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    return-object v0
.end method

.method public getImageResourceManagerProxy()Lcom/cloud/tmc/kernel/resource/IImageResourceManager;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    return-object v0
.end method

.method public getInterectCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentInterectCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadHtmlDataCallback()Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->loadHtmlDataCallback:Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;

    return-object v0
.end method

.method public getMFAHStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentMFAHStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMiniAppAutoPopover()Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-object v0
.end method

.method public getMiniAppLoadStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniappLoadSuccess:Z

    return v0
.end method

.method public getOriginalStartParams()Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mImmutableStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    return-object v0
.end method

.method public getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildAt(I)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/Page;

    return-object p1
.end method

.method public getPageByNodeId(J)Lcom/cloud/tmc/integration/structure/Page;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChild(J)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/Page;

    return-object p1
.end method

.method public getPageType(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPagesType:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPermissionInterectMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPermissionDialogMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getPrePage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "prePageId"

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getRouteType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getRouteType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRouteType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const-string p1, "unknown"

    return-object p1
.end method

.method public getSceneParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getScopeType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/cloud/tmc/integration/structure/App;

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->startTime:J

    return-wide v0
.end method

.method public getStartToken()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    return-wide v0
.end method

.method public getStartUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    return-object v0
.end method

.method public getmSceneParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getmStartParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public hasHomePage()Z
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isHomePage()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public hideMiniAppAddHomeBar()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/TitleBarNode;->hideAddScreenButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public init(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getImageResourceManagerProxy()Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;->init(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getIFileResourceManager()Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;->init(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    const-string p1, "startToken"

    const-wide/16 v0, 0x0

    invoke-static {p3, p1, v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getLong(Landroid/os/Bundle;Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    new-instance p1, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    invoke-direct {p1, p2}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mImmutableStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    const-string p1, "appType"

    const-string p2, "WEB_TINY"

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    const-string p2, "entryInfo"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/EntryInfo;

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    const-string p3, "appInfo"

    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    const-string p3, "appLoadResult"

    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    if-eqz p1, :cond_0

    const-class p2, Lcom/cloud/tmc/integration/model/EntryInfo;

    invoke-virtual {p0, p2, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init with appType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TmcApp:App"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAsyncLaunchStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->asyncLaunchStatus:Z

    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isExited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mIsExited:Z

    return v0
.end method

.method public isFirstPage()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAlivePageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTinyApp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyAddHomeShow(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->showAddhomeCallback:Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;->notifyShowAddHome(I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/point/OnDestroyAppPoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/point/OnDestroyAppPoint;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/integration/point/OnDestroyAppPoint;->onDestroy(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->removeListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->destroy()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->destroy()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->onFinalized()V

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->clearEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AppNode"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected declared-synchronized onExit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "miniAppReload"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->exitAllPages(Z)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPageStarted(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TmcApp:App"

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/integration/structure/App$PageReadyListener;

    invoke-interface {v4, p1}, Lcom/cloud/tmc/integration/structure/App$PageReadyListener;->onPageReady(Lcom/cloud/tmc/integration/structure/Page;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "TmcApp:App"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageStarted flush pageReadyListener size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPageReadyListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/cloud/tmc/integration/structure/node/AppNode$6;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/structure/node/AppNode$6;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mNetworkListener:Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/NetworkUtil;->addListener(Landroid/content/Context;Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onPause()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/point/OnPauseAppPoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/point/OnPauseAppPoint;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/integration/point/OnPauseAppPoint;->onPause(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    return-void
.end method

.method protected onResume()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/point/OnResumeAppPoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/point/OnResumeAppPoint;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/integration/point/OnResumeAppPoint;->onResume(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/ExtendModel;->getExclusiveLogoUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDesc()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getClassificationNames()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/LatestUseUtils;->addAppUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TmcApp:App"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->preProcessStartParams()V

    new-instance v1, Lcom/cloud/tmc/kernel/model/InitParams;

    invoke-direct {v1}, Lcom/cloud/tmc/kernel/model/InitParams;-><init>()V

    iget-wide v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    iput-wide v3, v1, Lcom/cloud/tmc/kernel/model/InitParams;->startToken:J

    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mMainJSUrl:Ljava/lang/String;

    iput-object v3, v1, Lcom/cloud/tmc/kernel/model/InitParams;->mainResourceUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    iput-object v3, v1, Lcom/cloud/tmc/kernel/model/InitParams;->startParams:Landroid/os/Bundle;

    const-string v4, "enablePolyfillWorker"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "App"

    const-string v4, "End create app"

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->printPerformanceLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    new-instance v2, Lcom/cloud/tmc/integration/structure/node/AppNode$4;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/structure/node/AppNode$4;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/engine/IEngine;->init(Lcom/cloud/tmc/kernel/model/InitParams;Lcom/cloud/tmc/kernel/engine/EngineInitCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "engine is null or isDestroyed!"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/point/OnStopAppPoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/point/OnStopAppPoint;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/cloud/tmc/integration/point/OnStopAppPoint;->onStop(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "onAppHide"

    invoke-static {p0, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mHasPaused:Z

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDevMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/AppUtils;->enableWebViewDebugger()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onPause()V

    return-void
.end method

.method public performBack()V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isFirstPage()Z

    move-result v0

    const-string v1, "TmcApp:App"

    if-eqz v0, :cond_0

    const-string v0, "performBack with firstPage, direct exit!"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->exit()V

    goto :goto_0

    :cond_0
    const-string v0, "performBack just exit active page"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized popPage(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "TmcApp:App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popPage with param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/structure/App$PopParams;

    new-instance v1, Lcom/cloud/tmc/integration/structure/App$PopParams;

    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/structure/App$PopParams;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public popTo(IZLcom/google/gson/JsonObject;)V
    .locals 3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/structure/App$PopParams;

    invoke-direct {v0, p3}, Lcom/cloud/tmc/integration/structure/App$PopParams;-><init>(Lcom/google/gson/JsonObject;)V

    const-class p3, Lcom/cloud/tmc/integration/structure/App$PopParams;

    invoke-virtual {p0, p3, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result p3

    add-int v0, p3, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to minIndex "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TmcApp:App"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isUseForEmbed()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {p3, p2}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected preProcessStartParams()V
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backBehavior"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pop"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized pushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "TmcApp:App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushPage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Just Print"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appCallback:Lcom/cloud/tmc/integration/callback/IAppCallback;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v8, Lcom/cloud/tmc/integration/structure/node/b;

    invoke-direct {v8, p0, p2, p3}, Lcom/cloud/tmc/integration/structure/node/b;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;Landroid/os/Bundle;Landroid/os/Bundle;)V

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/integration/callback/IAppCallback;->validPushPage(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pushWebViewPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushWebViewPage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Just Print"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/integration/proxy/PageFactory;

    const-string v4, "todo"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    const-class p3, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez p2, :cond_0

    new-instance p2, Lcom/cloud/tmc/integration/model/WorkerStore;

    const-string v0, ""

    invoke-direct {p2, v0}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/cloud/tmc/integration/structure/AppContext;->pushWebViewPage(Lcom/cloud/tmc/integration/structure/Page;)V

    :cond_1
    return-void
.end method

.method public putPageType(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mPagesType:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putRouteType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mRouteType:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public redirectTo(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redirectTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Just Print"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navigationType"

    const-string v2, "redirectTo"

    invoke-virtual {p3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/integration/proxy/PageFactory;

    const-string v4, "https://100000.miniapp.transsion.com/index.html"

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    move-result-object v0

    new-instance v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-virtual {v0, v3, v2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->isTabPage()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4e0d\u652f\u6301 redirectTo "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is tab page"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appCallback:Lcom/cloud/tmc/integration/callback/IAppCallback;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v8, Lcom/cloud/tmc/integration/structure/node/a;

    invoke-direct {v8, p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/a;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/integration/callback/IAppCallback;->validPushPage(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doRedirectTo(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->doRedirectTo(Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relaunchToUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Just Print"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->exitAllThenPushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public removePage(Lcom/cloud/tmc/integration/structure/Page;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exitPage but already destroyed! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChild(J)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitPage but not a child! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->removeChild(Lcom/cloud/tmc/kernel/node/Node;)Z

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/structure/AppContext;->exitPage(Lcom/cloud/tmc/integration/structure/Page;Z)V

    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->destroy()V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    instance-of v3, v2, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    check-cast v2, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0, v0, p1, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->sendPageBackToWorker(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    iget-object v1, p3, Lcom/cloud/tmc/integration/structure/Page$TaskContext;->targetPageOnProcess:Lcom/cloud/tmc/integration/structure/Page;

    invoke-direct {p0, v1, p1, p3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->sendPageBackToWorker(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppManager:Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {p1, p0}, Lcom/cloud/tmc/integration/structure/AppManager;->exitApp(Lcom/cloud/tmc/integration/structure/App;)V

    :cond_6
    return-void
.end method

.method public final restart(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iget-boolean p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->restarting:Z

    if-eqz p2, :cond_0

    const-string p1, "TmcApp:App"

    const-string p2, "cannot restart during restarting"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->restarting:Z

    new-instance v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/AppRestartResult;-><init>()V

    const-string v1, "url"

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;->startUrl:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;->closeAllWindow:Z

    iput-boolean p2, v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;->canRestart:Z

    iput-object p1, v0, Lcom/cloud/tmc/integration/structure/AppRestartResult;->startParam:Landroid/os/Bundle;

    return-void
.end method

.method public resume()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume with mSendResumeInRestart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getDevMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/BuildConfigProxy;->isDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
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
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mHasPaused:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    if-nez v0, :cond_3

    const-string v0, "onAppShow"

    invoke-static {p0, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->sendToApp(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSendResumeInRestart:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onResume()V

    return-void
.end method

.method public setAddhomeShowCallback(Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->showAddhomeCallback:Lcom/cloud/tmc/integration/callback/IShowAddHomeCallback;

    return-void
.end method

.method public setAppCallback(Lcom/cloud/tmc/integration/callback/IAppCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appCallback:Lcom/cloud/tmc/integration/callback/IAppCallback;

    return-void
.end method

.method public setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    return-void
.end method

.method public setAppStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->startTime:J

    return-void
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    return-void
.end method

.method public setAsyncLaunchStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->asyncLaunchStatus:Z

    return-void
.end method

.method public setAsyncStartLoadingCallback(Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->iAsyncStartLoadingCallback:Lcom/cloud/tmc/integration/callback/IAsyncStartLoadingCallback;

    return-void
.end method

.method public setBackToPagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->backToPagePath:Ljava/lang/String;

    return-void
.end method

.method public setEngineProxy(Lcom/cloud/tmc/kernel/engine/IEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    return-void
.end method

.method public setLoadHtmlDataCallback(Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->loadHtmlDataCallback:Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;

    return-void
.end method

.method public setMiniAppAutoPopover(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniAppAutoPopover:Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    return-void
.end method

.method public setMiniAppLoadStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->miniappLoadSuccess:Z

    return-void
.end method

.method public setMiniappLifecycleCallback(Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->checkMiniAppLifecycleCallback:Lcom/cloud/tmc/integration/callback/ICheckMiniAppLifecycleCallback;

    return-void
.end method

.method public setmAppLoadResult(Lcom/cloud/tmc/integration/structure/AppLoadResult;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    return-void
.end method

.method public setmSceneParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    return-void
.end method

.method public setmStartParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    return-void
.end method

.method public final declared-synchronized start()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "TmcApp:App"

    const-string v1, "try start but mAlreadyStarted true!"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAlreadyStarted:Z

    const-string v0, "TmcApp:App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    new-instance v2, Lcom/cloud/tmc/integration/structure/node/AppNode$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode$3;-><init>(Lcom/cloud/tmc/integration/structure/node/AppNode;J)V

    invoke-static {v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onStop()V

    return-void
.end method

.method public switchTab(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchTab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with stack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Just Print"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "switcherTabFromScene"

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fromTabReselected"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u590d switchTab path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/TabReSelectedStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabReSelectedStore;->getPageCache()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    const-string v2, "url"

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    :goto_0
    const-class v8, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v5, v8, v7}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    iput-boolean v7, v8, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    goto :goto_2

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->isHide()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->hide()V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    instance-of v2, v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    const/4 v9, 0x0

    if-eqz v2, :cond_b

    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->moveTabPageToCache(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    check-cast v0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findTabFragmentByPath(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object v0

    goto :goto_4

    :cond_b
    move-object v0, v9

    :goto_4
    const-string v10, ""

    if-eqz v0, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchTab: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found in fragment manager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->show()V

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz v1, :cond_d

    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/AppContext;->switchTab(Lcom/cloud/tmc/integration/structure/Page;)V

    :cond_d
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    const-string v2, "SwitchTab"

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "tabCreated"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_e

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v10

    :cond_e
    const-string v3, "preRenderId"

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    const-string v2, "onSwitchTab"

    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_f
    return-void

    :cond_10
    const-class v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/PageFactory;

    const-string v2, "https://100000.miniapp.transsion.com/index.html"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    move-result-object v0

    const-string v1, "switchTab"

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-direct {v1}, Lcom/cloud/tmc/integration/structure/Page$AnimStore;-><init>()V

    iput-boolean v7, v1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableEnter:Z

    invoke-virtual {v0, v8, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mEngineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    const-class v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez v1, :cond_11

    new-instance v1, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-direct {v1, v10}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_5

    :cond_11
    new-instance v3, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :goto_5
    if-eqz v6, :cond_12

    invoke-interface {v6}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v9

    :cond_12
    const-string v1, "prePageId"

    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Lcom/cloud/tmc/integration/structure/AppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    :cond_13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "@appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAddHomeShowStatus(I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->MFAHShowStatus:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->APIAddhomeShowStatus:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x51

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideTopAddhomeShowStatus:Z

    goto :goto_0

    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBottomAddhomeShowStatus:Z

    goto :goto_0

    :cond_3
    const/16 v0, 0x53

    if-ne p1, v0, :cond_4

    iput-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->guideBackAddhomeShowStatus:Z

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->notifyAddHomeShow(I)V

    return-void
.end method

.method public updateAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-void
.end method

.method public updateHideMiniappLoadingStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->isHideMiniAppLoaingStatus:Z

    return-void
.end method

.method public updateInterectCallbackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentInterectCallbackId:Ljava/lang/String;

    return-void
.end method

.method public updateMFAHStatus(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->currentMFAHStatus:Ljava/lang/Boolean;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->appId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppVersion:Ljava/lang/String;

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartUrl:Ljava/lang/String;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
