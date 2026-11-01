.class public abstract Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.super Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

# interfaces
.implements Lcom/cloud/tmc/render/MonitorWebviewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;,
        Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;,
        Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;,
        Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$WhenMappings;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TAG_NEW:Ljava/lang/String;

.field private final TAG_REDIRECT:Ljava/lang/String;

.field private final backForwardStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field private h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field private final h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private isFirstLoadHomePage:Z

.field private loadingUrl:Ljava/lang/String;

.field private final pageStartStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final redirectUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackPointLoadData:Z

.field private final urlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private virtual_h5PageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;-><init>()V

    const-string v0, "h5PointTrack"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "h5PointTrackNew"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "0"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->virtual_h5PageId:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->urlMap:Ljava/util/Map;

    const-string v0, "h5Redirect"

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectUrls:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getPageChainContext(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    return-object p0
.end method

.method private final addNewPageTrack(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v1, "addNewPageTrack"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateContainerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderStartNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderEndNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStartNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEndNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidStartNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackMidEndNew(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStartNew(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->injectJSFromConfig$lambda$35$lambda$34(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkDomLoadMonitorSwitch(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "enableShellDomMonitor"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "enableH5DomMonitor"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private final findPrePage()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectUrls:Ljava/util/List;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->findPrePage()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v1

    :catchall_0
    return-object v0
.end method

.method private final getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic goBackNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBackNew(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: goBackNew"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final injectJSFromConfig$lambda$35$lambda$34(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "$injectJSStrategy"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$scriptWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " inject success script:\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InjectJS"

    invoke-static {p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic pointTrackDrawViewEndForApp$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndForApp(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pointTrackDrawViewEndForApp"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic pointTrackDrawViewEndNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndNew(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pointTrackDrawViewEndNew"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic pointTrackDrawViewFailNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewFailNew(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: pointTrackDrawViewFailNew"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    const-string v2, "originalUrl"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "url"

    move-object/from16 v5, p2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestUrl"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "virtual_h5PageId"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pageChainContext"

    move-object/from16 v9, p5

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Add New Home Page -> requestUrl:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v7, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-direct {v7}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;-><init>()V

    invoke-interface {v2, v1, v7}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v15

    new-instance v13, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    sget-object v7, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v8, v1

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "null"

    goto :goto_0

    :goto_2
    const-string v1, "page?.pageRandomIdByGAId ?: \"null\""

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0xf00

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v7

    move v7, v10

    move-object/from16 v9, p5

    move v10, v11

    move-object v11, v12

    move-object v12, v14

    move-object/from16 v20, v13

    move-wide/from16 v13, v18

    move-object/from16 v21, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v1 .. v16}, Lcom/cloud/tmc/miniapp/base/ShowPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method public final canGoBack(Landroid/webkit/WebView;)Z
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canGoBack => originalUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , url:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    const-string v1, "canGoBack => \u91cd\u5b9a\u5411\u56de\u9000"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectCanGoBack(Landroid/webkit/WebView;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    const-string v2, "canGoBack => \u6b63\u5e38\u56de\u9000"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBackNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v1

    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    const-string v0, "canGoBack => \u76f4\u63a5\u9000\u51fa"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final createSubscriber()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_0

    const-class v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    new-instance v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;

    invoke-direct {v2, p0, v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;-><init>(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;)V

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v0, :cond_0

    const-string v1, "h5OnPageFinished"

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final destroySubscriber()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz v1, :cond_0

    const-string v2, "h5OnPageFinished"

    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "about:blank"

    invoke-static {v1, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "about:blank"

    invoke-static {v1, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getH5EventCenter()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-object v0
.end method

.method public final getH5OnPageFinishedEventCenter()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    return-object v0
.end method

.method public final getH5PageId()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->urlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReportOriginalUrl -> realUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", originalUrl:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "oldChain"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTrackPointLoadData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->trackPointLoadData:Z

    return v0
.end method

.method public final getUrlMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->urlMap:Ljava/util/Map;

    return-object v0
.end method

.method public final goBack()V
    .locals 6

    const-string v0, ", showPage: "

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getPageRandomIdByGAID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClear(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goBack => exitPage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getCanGoBack()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goBack \u9875\u9762\u672a\u5165\u6808\uff0c\u7ee7\u7eed\u9000\u51fa => exitPage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBack()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "goBack fail: backForwardStack.size <= 1"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goback fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final goBackNew(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V
    .locals 5

    const-string v0, "exitType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_6

    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v0, "goBackNew currentPage -> showPages.size == 0 return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goBackNew currentPage -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClearNew(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageData;)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v0, "goBackNew prePage= -> showPages.size == 0 return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goBackNew prePage -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v0

    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result p1

    sget-object v0, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v0

    if-ne p1, v0, :cond_7

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v0, "goBackNew -> prePage.status == ShowPageStatus.SHOULDOVERRIDEURKLOADING || prePage.status == ShowPageStatus.PAGE_START \u4e3b\u52a8\u6e05\u9664\u9875\u9762\u6808\u5185\u7684\u9875\u9762"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK_CLEAR_PRE_PAGE:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBackNew(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_6
    :goto_0
    return-void

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goback fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final initDomLoadMonitor(I)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->checkDomLoadMonitorSwitch(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:document.addEventListener(\'DOMContentLoaded\', function() {window.dltMonitor.reportDomLoadTime("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ");});"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "domLoadMonitorInit error"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final injectJSFromConfig(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "injectJSStrategy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/render/proxy/InjectJSProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/render/proxy/InjectJSProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {v0, v1}, Lcom/cloud/tmc/render/proxy/InjectJSProxy;->getInjectStrategy(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/render/bean/InjectStrategy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/render/bean/InjectStrategy;->getScript()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "\n"

    invoke-static {v1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";(function (window, document) {\n    function inject() {\n        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    }\n    if (document && document.head) {\n        console.log(\'\u7acb\u5373Inject\');\n        inject();\n    }\n    else{\n        const observerOptions = {\n            childList: true,\n            subtree: true,\n        };\n        const observer = new MutationObserver(observerFunc);\n        observer.observe(document.getRootNode(), observerOptions);\n        let isInjected = false;\n        function observerFunc() {\n            if ((!isInjected) && document && document.head) {\n                console.log(\'\u76d1\u542ccallback\u540eInject\');\n                inject();\n                isInjected = true;\n                observer.disconnect();\n            }\n        }\n    }\n\n})(window, document);\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    new-instance v1, Lcom/cloud/tmc/miniapp/base/m;

    invoke-direct {v1, p2, v0}, Lcom/cloud/tmc/miniapp/base/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    return-void
.end method

.method public final loadingUrlError()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadingUrlError => loadingUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setLoadError(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_0

    const-class v2, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setLoadFail(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public final loadingUrlFinish()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100()Z

    move-result v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadingUrlFinish => loadingUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isProgressChangedTo100:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPageFinished: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadingUrlFinish fail: url\u4e0d\u5339\u914d, loadingUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , pageStatus.url:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadingUrlFinish fail: \u52a0\u8f7d\u9875\u9762\u5931\u8d25, loadingUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "loadingUrlFinish => reportDate"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setProgressChangedTo100(Z)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEnd()V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getPageRandomIdByGAID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageEnd(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getPageRandomIdByGAID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackAppEnd(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->updateNewUserStatus(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "loadingUrlFinish fail: backForwardStack.size = 0"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadingUrlFinish fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final loadingUrlStart(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "pageRandomIdByGAID"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadingUrlStart => loadingUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    new-instance v15, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->isFirstLoadHomePage:Z

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->virtual_h5PageId:Ljava/lang/String;

    const/16 v16, 0x780

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    move-object v3, v15

    move-object/from16 v19, v15

    move/from16 v15, v18

    invoke-direct/range {v3 .. v17}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setPageRandomIdByGAID(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final pointTrackAppEnd(Ljava/lang/String;)V
    .locals 6

    const-string v0, "pageRandomIdByGAID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "app"

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
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pageRandomId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->app:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackAppStart()V
    .locals 0

    return-void
.end method

.method public final pointTrackClear()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getPageRandomIdByGAID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "pointTrackClear fail: backForwardStack.size <= 1"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pointTrackClear fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    :goto_1
    const-string v0, ""

    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClear(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final pointTrackClear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "pagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRandomIdByGAID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v4, "clear"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v7, "page"

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v2, "uniqueChainID"

    const-string v8, "-1"

    invoke-virtual {v7, v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pageRandomId"

    invoke-virtual {v5, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackClearNew()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_0

    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClearNew(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final pointTrackClearNew(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageData;)V
    .locals 3

    const-string v0, "pagePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showPageData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackClearNew] -> requestUrl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackClearNew] -> virtual_h5PageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->exitType:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string p2, "2"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pageRandomId"

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_CLEAR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v2, "clear"

    invoke-interface {p1, v1, p2, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    invoke-virtual {p3}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->destroy(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public final pointTrackCreateContainerEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/CreateContainerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateContainerStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateContainer:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateRenderEnd()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->RENDER_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateRender:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateRenderEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/CreateRenderEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateRenderStart()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->RENDER_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateRender:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateRenderStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateWorkerEnd()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateWorkerEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/CreateWorkerEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateWorkerStart()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateWorker:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackCreateWorkerStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateWorker:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/CreateWorkerStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewEnd()V
    .locals 6

    :try_start_0
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
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewEndForApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string p2, "2"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_TYPE_LOAD_DATA:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewEndNew(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_TYPE_LOAD_DATA:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "pageRandomId"

    iget-object p3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pageUniqueId"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-interface {p1, v1, p3, v2, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/cloud/tmc/integration/structure/App;->setMiniAppLoadStatus(Z)V

    :goto_1
    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewFailNew(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_TYPE_LOAD_DATA:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/errorState/PageErrorState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v1, "pageOpenFail"

    invoke-interface {p1, p2, p3, v1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewStart()V
    .locals 6

    :try_start_0
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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->DrawView:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackDrawViewStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageDrawView:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/DrawViewStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackLoadRenderFrameworkEnd()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadRenderFramework:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackLoadRenderFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackLoadRenderFrameworkStart()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadRenderFramework:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackLoadRenderFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/LoadRenderFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackLoadWorkerFrameworkEnd()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadWorkerFramework:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackLoadWorkerFrameworkEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/LoadWorkerFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackLoadWorkerFrameworkStart()V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

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

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadWorkerFramework:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackLoadWorkerFrameworkStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual_h5PageId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    invoke-interface {p1, v2, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadWorkerFramework:Ljava/lang/String;

    invoke-interface {p1, v3, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;

    invoke-direct {p1, v1}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/LoadWorkerFrameworkStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackMidEndNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pageRandomId"

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pageUniqueId"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackMidStartNew(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;

    invoke-direct {p1, v0}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/chain/startState/ChainMidStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackOnPageFinished(Ljava/lang/String;)V
    .locals 9

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_H5_PAGE_ONFINISHED:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v4, ""

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v7, :cond_1

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v2, "uniqueChainID"

    const-string v8, "-1"

    invoke-virtual {v7, v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackPageEnd(Ljava/lang/String;)V
    .locals 6

    const-string v0, "pageRandomIdByGAID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "uniqueChainID"

    const-string v4, "-1"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->REPORT_PAGE_PATH:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pageRandomId"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackEnd(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-interface {p1, v3, v4, v5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-static {v2, v1, p1}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackPageFinishedNew(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "juggist[pointTrackPageFinishedNew] -> originalUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackPageFinishedNew] -> url        :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "juggist[pointTrackPageFinishedNew] -> requestUrl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p1, :cond_7

    const-class v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string p2, "juggist[pointTrackPageFinishedNew] -> showPages.size == 0 return"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackPageFinishedNew] -> showPages:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string p2, "juggist[pointTrackPageFinishedNew] -> showPage.requestUrl != url return"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v0

    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_PROGRESS100:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string p2, "juggist[pointTrackPageFinishedNew] -> showPage.status != ShowPageStatus.PAGE_PROGRESS100 return"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v1, "\u6240\u6709\u8d44\u6e90\u6e32\u67d3\u7ed3\u675f"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_FINISHED:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackOnPageFinished(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_7
    :goto_1
    return-void
.end method

.method public final pointTrackPageStart()V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "uniqueChainID"

    const-string v4, "-1"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->page:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    const-string v4, "shouldOverrideUrl"

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v0, v1, v3, v4, v2}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final pointTrackProgressChanged100New(Landroid/webkit/WebView;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "juggist[pointTrackProgressChanged100New] -> webView.originalUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackProgressChanged100New] -> webView.url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p1, :cond_a

    const-class v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v0, "juggist[pointTrackProgressChanged100New] -> showPages.size == 0 return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "juggist[pointTrackProgressChanged100New] -> originalUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "juggist[pointTrackProgressChanged100New] -> url        :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "juggist[pointTrackProgressChanged100New] -> requestUrl :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackProgressChanged100New] -> showPages:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v0

    sget-object v2, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v2

    if-eq v0, v2, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v0, "juggist[pointTrackProgressChanged100New] -> showPage.status != ShowPageStatus.PAGE_START return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getLoadFail()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9759\u6001\u8d44\u6e90\u6e32\u67d3\u7ed3\u675f,\u6e32\u67d3\u6210\u529f\u7ed3\u679c:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_PROGRESS100:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->trackPointLoadData:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->trackPointLoadData:Z

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getLoadFail()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewFailNew(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v2, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {v2, v0, v1}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->updateNewUserStatus(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewEndNew(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_a
    :goto_3
    return-void
.end method

.method public final pointTrackProgressChangedNew(Landroid/webkit/WebView;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackProgressChangedNew] -> webView.originalUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackProgressChangedNew] -> webView.url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackProgressChangedNew] -> webView.progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p2, :cond_4

    const-class v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {p2, v0}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string p2, "juggist[pointTrackProgressChangedNew] -> showPages.size == 0 return"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackProgressChangedNew] -> originalUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackProgressChangedNew] -> url        :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackProgressChangedNew] -> requestUrl :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackProgressChangedNew] -> showPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v1, "juggist[pointTrackProgressChangedNew] -> \u4fee\u6539showPage\u7684originalUrl\u548curl"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setOriginalUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method

.method public final pointTrackShouldOverrideUrlLoadingNew(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/base/l;->a(Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> originalUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> url        :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> requestUrl :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isRedirect:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, p1

    :goto_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    :cond_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v3, p1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackShouldOverrideUrlLoadingNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final pointTrackShouldOverrideUrlLoadingNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    const-string v1, "originalUrl"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requestUrl"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v4, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_1

    new-instance v6, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-direct {v6}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;-><init>()V

    invoke-interface {v1, v4, v6}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_2

    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    goto :goto_1

    :cond_2
    move-object v1, v5

    :cond_3
    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v13

    if-nez v13, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v2, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> showPages.size == 0 return"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "showPages.peek()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> showPages:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v2, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> currentPage.requestUrl == requestUrl return"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v1

    sget-object v6, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v6}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v4

    if-ne v1, v4, :cond_7

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v4, "juggist[pointTrackShouldOverrideUrlLoadingNew] -> currentPage.status == ShowPageStatus.SHOULDOVERRIDEURKLOADING pointTrackClearNew"

    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-eqz v1, :cond_7

    sget-object v4, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->NEW_PAGE_ENTER:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {v0, v4}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setExitType(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackClearNew(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageData;)V

    :cond_7
    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v1, v5

    :goto_2
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Add New Page -> requestUrl:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, ""

    new-instance v9, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-direct {v9}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;-><init>()V

    iget-object v1, v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    move-result-object v5

    :cond_9
    invoke-virtual {v9, v5}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v12, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0xf00

    const/16 v20, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v16

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-wide/from16 v13, v17

    move/from16 v15, v19

    move-object/from16 v16, v20

    invoke-direct/range {v1 .. v16}, Lcom/cloud/tmc/miniapp/base/ShowPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, v23

    invoke-direct {v0, v2, v3, v1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->addNewPageTrack(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :catchall_0
    :cond_a
    :goto_3
    return-void
.end method

.method public final pointTrackStartNew(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "juggist[pointTrackPageStepStart] -> originalUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackPageStepStart] -> url        :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "juggist[pointTrackPageStepStart] -> requestUrl :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_9

    const-class v1, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string p2, "juggist[pointTrackPageStepStart] -> showPages.size == 0 return"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "juggist[pointTrackPageStepStart] -> showPages:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string p2, "juggist[pointTrackPageStepStart] -> showPage.requestUrl != url return"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v2

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v2

    if-ne v1, v2, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_NEW:Ljava/lang/String;

    const-string v2, "juggist[pointTrackPageStepStart] -> change showPage.status = ShowPageStatus.PAGE_START"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-nez v1, :cond_7

    move-object v1, v2

    :cond_7
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setOriginalUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    move-object v2, p1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setRequestUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :catchall_0
    :cond_9
    :goto_2
    return-void
.end method

.method public final redirect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ", webResourceRequestUrl: "

    const-string v1, "webviewUrl"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "webResourceRequestUrl"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redirect => webviewUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webviewURLCombine:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webResourceRequestURLCombine:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirect  \u5f00\u59cb\u52a0\u8f7d => webviewUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5PageId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->createPageRandomIdByGAID()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "null"

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    const-string p2, "shouldOverrideUrl"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-static {p1, p2, v1, v0}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrlStart(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackPageStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateRenderEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadRenderFrameworkEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackCreateWorkerEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkStart()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackLoadWorkerFrameworkEnd()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pointTrackDrawViewStart()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirect  \u8fdb\u5165backForward\u6808 => webviewUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    invoke-virtual {p1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setCanGoBack(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method

.method public final redirectCanGoBack(Landroid/webkit/WebView;)Z
    .locals 14

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "redirectCanGoBack => originalUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , url:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitPage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v4

    const-string v5, "webView.copyBackForwardList()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WebBackForwardList.size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v5

    sub-int/2addr v5, v3

    const/4 v6, -0x1

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, v5, :cond_3

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WebBackForwardList("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") => originalUrl:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v8, v6, :cond_1

    move v8, v5

    :cond_1
    move v7, v5

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->findPrePage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prePage:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v7, -0x1

    const/4 v5, 0x0

    move v9, v3

    move-object v8, v5

    :goto_1
    if-ge v6, v2, :cond_6

    invoke-virtual {v4, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v9, v2

    move-object v8, v10

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    if-eqz v8, :cond_7

    sub-int/2addr v9, v7

    invoke-virtual {p1, v9}, Landroid/webkit/WebView;->goBackOrForward(I)V

    invoke-static {p0, v5, v3, v5}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBackNew$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->goBack()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goBackOrForward("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redirectCanGoBack fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    const-string v1, "redirectCanGoBack -> \u76f4\u63a5\u9000\u51fa"

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final redirectPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    const-string v1, "redirectPageStarted ==================>"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webView.original:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webView.url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->pageStartStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    const-string p2, "redirectPageStarted <=================="

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final redirectShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    const-string v1, "redirectShouldOverrideUrlLoading ==================>"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/base/l;->a(Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->redirectUrls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getCurrentOriginalUrl(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webview.original:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview.url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request.url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG_REDIRECT:Ljava/lang/String;

    const-string p2, "redirectShouldOverrideUrlLoading <=================="

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setH5EventCenter(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5EventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    return-void
.end method

.method public final setH5OnPageFinishedEventCenter(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->h5OnPageFinishedEventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    return-void
.end method

.method public final setLoadingUrl(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    const-string v0, "loadingUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualH5PageId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->virtual_h5PageId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoadingUrl => loadingUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , isFirstLoadHomePage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", virtual_h5PageId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->isFirstLoadHomePage:Z

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->virtual_h5PageId:Ljava/lang/String;

    return-void
.end method

.method public final setTrackPointLoadData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->trackPointLoadData:Z

    return-void
.end method

.method public final updateDomContentLoaded()V
    .locals 10

    const-string v0, ""

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v3, "updateDomContentLoaded"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100()Z

    move-result v5

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDomContentLoaded => loadingUrl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isProgressChangedTo100:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPageFinished: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDomContentLoaded fail: url\u4e0d\u5339\u914d, loadingUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , pageStatus.url:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDomContentLoaded fail: \u52a0\u8f7d\u9875\u9762\u5931\u8d25, loadingUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setDomContentLoaded(Z)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v5, "app"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "-1"

    const-string v7, "uniqueChainID"

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v8

    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v8

    :goto_1
    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v4, v5, v9, v0, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v5, "page"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v8

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_DOMCONTENTLOADED_STATUS:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v8

    :cond_5
    invoke-interface {v1, v8, v9, v0, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateDomContentLoaded report"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "updateDomContentLoaded fail: backForwardStack.size = 0"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDomContentLoaded fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final updateProgressStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V
    .locals 9

    const-string v0, ""

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v2, "step"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_12

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->backForwardStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100()Z

    move-result v5

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProgressStep => loadingUrl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isProgressChangedTo100:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPageFinished: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressStep fail: url\u4e0d\u5339\u914d, loadingUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , pageStatus.url:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->loadingUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressStep fail: \u52a0\u8f7d\u9875\u9762\u5931\u8d25, loadingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setProgressStartTime(J)V

    :cond_2
    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->setProgressCurrentStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_c

    const/4 v3, 0x3

    if-eq p1, v3, :cond_a

    const/4 v3, 0x4

    if-eq p1, v3, :cond_7

    const/4 v3, 0x5

    if-eq p1, v3, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_c
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v3, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v4, "app"

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "-1"

    const-string v6, "uniqueChainID"

    const/4 v7, 0x0

    if-eqz v4, :cond_e

    :try_start_1
    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_e
    move-object v4, v7

    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_f

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_f
    move-object v4, v7

    :goto_2
    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v3, v4, v8, v0, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v4, "page"

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_10

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_10
    move-object v4, v7

    :goto_3
    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getReportOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v7

    :cond_11
    invoke-interface {v1, v7, v8, v0, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    move-result-object v0

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressStep: progressCurrentStep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progressCollectList="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    const-string v0, "updateProgressStep fail: backForwardStack.size = 0"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressStep fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method public final updateProgressStepNew(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V
    .locals 7

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v2, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateProgressStep => status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getLoadFail()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressStep fail: \u52a0\u8f7d\u9875\u9762\u5931\u8d25, loadingUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setProgressStartTime(J)V

    :cond_3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setProgressCurrentStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    const/4 v2, 0x3

    if-eq p1, v2, :cond_b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_d
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    sget-object v2, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v2, p1}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    move-result-object v1

    :cond_f
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;

    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getPageChainContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/chain/insert/PageInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressStep: progressCurrentStep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progressCollectList="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressStep fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
