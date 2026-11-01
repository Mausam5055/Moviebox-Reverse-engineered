.class public Lcom/cloud/tmc/integration/structure/node/PageNode;
.super Lcom/cloud/tmc/kernel/node/NodeInstance;

# interfaces
.implements Lcom/cloud/tmc/integration/structure/Page;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/tmc/integration/structure/node/PageNode;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TmcApp:Page"

.field private static final sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private embedPage:Lcom/cloud/tmc/integration/structure/node/PageNode;

.field private isHomePage:Z

.field private isTabPage:Z

.field private mAlreadyPerformBack:Z

.field private mExitListener:Lcom/cloud/tmc/integration/structure/Page$ExitListener;

.field private mIsDestroyed:Z

.field private mIsExited:Z

.field private mIsHide:Z

.field protected mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

.field private final mPageId:Ljava/lang/String;

.field private mPageLoaded:Z

.field private mPagePath:Ljava/lang/String;

.field private mPageRandomIdByGAId:Ljava/lang/String;

.field private mPageURI:Ljava/lang/String;

.field private mRender:Lcom/cloud/tmc/kernel/render/IRender;

.field private mRenderReady:Z

.field private final mRenderReadyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/structure/Page$RenderReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneParams:Landroid/os/Bundle;

.field private mStartParams:Landroid/os/Bundle;

.field private pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

.field private screenOrientation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/integration/structure/node/PageNode;->sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/cloud/tmc/integration/structure/node/PageNode$3;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/node/PageNode$3;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/structure/node/PageNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsDestroyed:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsExited:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsHide:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageLoaded:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mAlreadyPerformBack:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isTabPage:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isHomePage:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cloud/tmc/integration/structure/node/PageNode;->sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRenderReadyListeners:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageURI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPagePath:Ljava/lang/String;

    const-class v0, Lcom/cloud/tmc/integration/structure/Page;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mSceneParams:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7

    sget-object v6, Lcom/cloud/tmc/integration/structure/EmbedType;->NO:Lcom/cloud/tmc/integration/structure/EmbedType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/structure/node/PageNode;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/integration/structure/EmbedType;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/integration/structure/EmbedType;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>(Lcom/cloud/tmc/kernel/node/Node;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsDestroyed:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsExited:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsHide:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageLoaded:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mAlreadyPerformBack:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isTabPage:Z

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isHomePage:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p6, Lcom/cloud/tmc/integration/structure/node/PageNode;->sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p6

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ""

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageId:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRenderReadyListeners:Ljava/util/List;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/cloud/tmc/integration/structure/node/PageNode;->init(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Z)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p6, :cond_0

    sget-object p6, Lcom/cloud/tmc/integration/structure/EmbedType;->FULL:Lcom/cloud/tmc/integration/structure/EmbedType;

    :goto_0
    move-object v6, p6

    goto :goto_1

    :cond_0
    sget-object p6, Lcom/cloud/tmc/integration/structure/EmbedType;->NO:Lcom/cloud/tmc/integration/structure/EmbedType;

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/structure/node/PageNode;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/cloud/tmc/integration/structure/EmbedType;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/structure/node/PageNode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->lambda$backPressed$1(Z)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/DataNode;
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->lambda$bindContext$0(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/DataNode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/cloud/tmc/integration/structure/node/PageNode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->lambda$backPressed$2(Z)V

    return-void
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/integration/structure/node/PageNode;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    return-object p0
.end method

.method private doExit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageNode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " doExit!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TmcApp:Page"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doExit onComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->isUseForEmbed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->destroy()V

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->onFinalized()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/cloud/tmc/integration/structure/App;->removePage(Lcom/cloud/tmc/integration/structure/Page;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mExitListener:Lcom/cloud/tmc/integration/structure/Page$ExitListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page$ExitListener;->onExit()V

    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/integration/structure/node/PageNode;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    return-void
.end method

.method static bridge synthetic f(Lcom/cloud/tmc/integration/structure/node/PageNode;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/structure/node/PageNode;->doExit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    return-void
.end method

.method private getWorkerId()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/WorkerStore;->workerId:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private initCheckHomePage()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getHomePagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isHomePage:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TmcApp:Page"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initCheckTabPage()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    iget-object v1, v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isTabPage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TmcApp:Page"

    const-string v2, "initCheckTabPage"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initGeneralRandomId()V
    .locals 4

    invoke-static {}, Lcom/cloud/tmc/integration/utils/GenerateIdUtils;->generateRandomIdByGAId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageRandomIdByGAId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "initGeneralRandomId: %s pagePath: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:Page"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$backPressed$1(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const-string v1, "TmcApp:Page"

    if-nez v0, :cond_0

    const-string p1, "goBack afterProcess but app is null!"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goBack afterProcess intercept: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->isRootFragment()Z

    move-result v2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/kernel/node/Node;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->isTabPage()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->isTaskRoot()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    move-result-object v2

    new-instance v9, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/cloud/tmc/integration/structure/node/AppNode;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)V

    invoke-interface {v2, v9}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->startBackPressedInterceptorChain(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1000550440273772544"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    const-string p1, "goBack and removeTask"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->moveToBackground()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "goBack keep alive intercept"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mAlreadyPerformBack:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->performBack()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$backPressed$2(Z)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/structure/node/c;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/integration/structure/node/c;-><init>(Lcom/cloud/tmc/integration/structure/node/PageNode;Z)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$bindContext$0(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/DataNode;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisitStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TmcApp:Page"

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addFixedView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getPageContainer()Lcom/cloud/tmc/integration/structure/ui/PageContainer;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFixedView success. parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/KeyBoardAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/KeyBoardAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/node/KeyBoardNode;->addOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V

    :cond_0
    return-void
.end method

.method public addRenderReadyListener(Lcom/cloud/tmc/integration/structure/Page$RenderReadyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRenderReadyListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRenderReady:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page$RenderReadyListener;->onRenderReady()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRenderReadyListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public backPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/tmc/integration/structure/node/d;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/integration/structure/node/d;-><init>(Lcom/cloud/tmc/integration/structure/node/PageNode;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IRender;->goBack(Lcom/cloud/tmc/kernel/render/GoBackCallback;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bindContext(Lcom/cloud/tmc/integration/structure/PageContext;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;)V
    .locals 10

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    new-instance v4, Lcom/cloud/tmc/kernel/model/CreateParams;

    invoke-direct {v4}, Lcom/cloud/tmc/kernel/model/CreateParams;-><init>()V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v4, Lcom/cloud/tmc/kernel/model/CreateParams;->startParams:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->isUseForEmbed()Z

    move-result v0

    iput-boolean v0, v4, Lcom/cloud/tmc/kernel/model/CreateParams;->useForEmbed:Z

    new-instance v0, Lcom/cloud/tmc/integration/structure/node/e;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/node/e;-><init>()V

    iput-object v0, v4, Lcom/cloud/tmc/kernel/model/CreateParams;->urlVisitListener:Lcom/cloud/tmc/kernel/model/listener/URLVisitListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uniqueChainID"

    const-string v5, "-1"

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->RENDER_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateRender:Ljava/lang/String;

    invoke-interface {v2, v3, v6, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    invoke-interface {v2, v3, v6, v8, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v5

    :goto_2
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageCreateRender:Ljava/lang/String;

    invoke-interface {v1, v5, v2, v3, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;

    invoke-direct {v1, v7}, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/integration/chain/startState/CreateRenderStartState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    const-class v1, Lcom/cloud/tmc/render/IRenderFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/render/IRenderFactory;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/PageContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v3

    iget-object v5, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    new-instance v9, Lcom/cloud/tmc/integration/structure/node/PageNode$1;

    invoke-direct {v9, p0, v0, p3}, Lcom/cloud/tmc/integration/structure/node/PageNode$1;-><init>(Lcom/cloud/tmc/integration/structure/node/PageNode;Landroid/os/Bundle;Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, p0

    move-object v6, p1

    invoke-interface/range {v0 .. v9}, Lcom/cloud/tmc/render/IRenderFactory;->getRender(Landroid/app/Activity;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;ZLcom/cloud/tmc/render/IRenderFactory$IRenderListener;)V

    return-void
.end method

.method public changeNavigationBarProgress(IIJ)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;->getNavigationBarProgressUpdateStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;->changeNavigationBarProgress(IIJ)V

    :cond_1
    return-void
.end method

.method public createPageRandomIdByGAID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/integration/utils/GenerateIdUtils;->generateRandomIdByGAId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsDestroyed:Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->unRegisterRender(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->destroy()V

    :cond_3
    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->clearEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->onDestroy()V

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->onFinalized()V

    return-void
.end method

.method public final enter()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized exit(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsExited:Z

    if-eqz v0, :cond_0

    const-string p1, "TmcApp:Page"

    const-string p2, "already exited!"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v0, "TmcApp:Page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " by stack "

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

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsExited:Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/cloud/tmc/integration/structure/node/PageNode$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/integration/structure/node/PageNode$2;-><init>(Lcom/cloud/tmc/integration/structure/node/PageNode;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/render/IRender;->runExit(Lcom/cloud/tmc/kernel/render/ExitCallback;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/structure/node/PageNode;->doExit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getAddScreenVisibleStatus()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->getAddScreenVisibility()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "hide->error"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    return-object v0
.end method

.method public getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appLoadResult"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    return-object v0
.end method

.method public getEmbedPage()Lcom/cloud/tmc/integration/structure/node/PageNode;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->embedPage:Lcom/cloud/tmc/integration/structure/node/PageNode;

    return-object v0
.end method

.method public getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/node/NodeInstance;->sExtensionManager:Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    return-object v0
.end method

.method public getGroup()Lcom/cloud/tmc/kernel/security/Group;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/security/Accessor;->getGroup()Lcom/cloud/tmc/kernel/security/Group;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    return-object v0
.end method

.method public getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPageRandomIdByGAId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageRandomIdByGAId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->initGeneralRandomId()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageRandomIdByGAId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    return-object v0
.end method

.method public getSceneParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mSceneParams:Landroid/os/Bundle;

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

    const-class v0, Lcom/cloud/tmc/integration/structure/Page;

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mStartParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBarManual()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-class v2, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarManualConfigStore;->getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-object v0
.end method

.method public getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object v0

    return-object v0
.end method

.method public final hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsHide:Z

    const-string v1, "TmcApp:Page"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already hide! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsHide:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sendToView page event pagePause"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->onHide()V

    return-void
.end method

.method public hideAddScreenButton()V
    .locals 0

    return-void
.end method

.method public hideHomeButton()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->setHomeVisibility(Z)V

    :cond_0
    return-void
.end method

.method public hideNavigationBarLoading()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;->hideNavigationBarLoading()V

    :cond_0
    return-void
.end method

.method public hideTabBar(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->hideTabBar(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hideTabBarRedDot(I)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->hideTabBarRedDot(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hideTabBarUnreadIcon(I)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->hideTabBarUnreadIcon(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init Page with url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pagePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:Page"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageURI:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mStartParams:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mSceneParams:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->initCheckTabPage()V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->initCheckHomePage()V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->initGeneralRandomId()V

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsDestroyed:Z

    return v0
.end method

.method public isExited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsExited:Z

    return v0
.end method

.method public isHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsHide:Z

    return v0
.end method

.method public isHomePage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isHomePage:Z

    return v0
.end method

.method public isPageLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageLoaded:Z

    return v0
.end method

.method public isRenderReady()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRenderReadyListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRenderReady:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRootFragment()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v1

    instance-of v2, v1, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->isRootFragment(Lcom/cloud/tmc/integration/structure/Page;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "TmcApp:Page"

    const-string v3, "Failed to isRootFragment"

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public isShow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->isHide()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTabPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isTabPage:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->isTransparent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUseForEmbed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)Z
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v0, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getMiniappSubtype()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkUesCommonresApp(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getTemplateMiniappId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    check-cast v1, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v1, p1, v0}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    const-class v0, Lcom/cloud/tmc/integration/point/OnDestroyPagePoint;

    invoke-static {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->extensionManager(Lcom/cloud/tmc/kernel/extension/ExtensionManager;)Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->create()Lcom/cloud/tmc/kernel/extension/Extension;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/point/OnDestroyPagePoint;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getExtensionManager()Lcom/cloud/tmc/kernel/extension/ExtensionManager;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2}, Lcom/cloud/tmc/integration/point/OnDestroyPagePoint;->onDestroy(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V

    return-void
.end method

.method protected onEnter()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:Page"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/kernel/render/LoadParams;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageURI:Ljava/lang/String;

    iput-object v1, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    return-void
.end method

.method protected onHide()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->onResume()V

    return-void
.end method

.method protected onShow()V
    .locals 0

    return-void
.end method

.method public final pause()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->onPause()V

    return-void
.end method

.method protected declared-synchronized performBack()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mAlreadyPerformBack:Z

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->performBack()V
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

.method public refreshApp()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->refreshApp()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->reload()V

    :cond_0
    return-void
.end method

.method public removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/KeyBoardAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/KeyBoardAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/node/KeyBoardNode;->removeOnKeyboardListener(Lcom/cloud/tmc/kernel/listener/OnKeyboardListener;)V

    :cond_0
    return-void
.end method

.method public removeTabBarBadge(I)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->removeTabBarBadge(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public resetPageRandomIdByGAID()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->initGeneralRandomId()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageRandomIdByGAId:Ljava/lang/String;

    return-object v0
.end method

.method public final resume()V
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/integration/structure/App$PopParams;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/App$PopParams;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "data"

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/App$PopParams;->data:Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->onResume()V

    return-void
.end method

.method public setCapsuleStyle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;->setCapsuleStyle(Z)V

    :cond_0
    return-void
.end method

.method public setEmbedPage(Lcom/cloud/tmc/integration/structure/node/PageNode;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->embedPage:Lcom/cloud/tmc/integration/structure/node/PageNode;

    return-void
.end method

.method public setExitListener(Lcom/cloud/tmc/integration/structure/Page$ExitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mExitListener:Lcom/cloud/tmc/integration/structure/Page$ExitListener;

    return-void
.end method

.method public setHomeAction(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->setHomeAction(IZ)V

    :cond_0
    return-void
.end method

.method public setNavigationBarBackgroundColor(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "[PageNode]: set navigation bar color error"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setNavigationBarIconStyle(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->setCapsuleStyle(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;->setNavigationBarIconStyle(Z)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTitleColor(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->setStatusBar(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->setTitleColor(Z)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTitleVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->setTitleVisible(Z)V

    :cond_0
    return-void
.end method

.method public setNavigationBarTransparent(Z)V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->setTransparent(Z)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/PageContext;->getPageContainer()Lcom/cloud/tmc/integration/structure/ui/PageContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/PageContext;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    instance-of v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_2

    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    new-instance v3, Landroidx/constraintlayout/widget/b;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/b;-><init>()V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/b;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x3

    if-eqz p1, :cond_0

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v3, p1, v4, v1, v4}, Landroidx/constraintlayout/widget/b;->t(IIII)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v3, p1, v4, v1, v2}, Landroidx/constraintlayout/widget/b;->t(IIII)V

    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/b;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_2
    return-void
.end method

.method public setPageChainContext(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    return-void
.end method

.method public setPageLoaded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageLoaded:Z

    return-void
.end method

.method public setPageURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageURI:Ljava/lang/String;

    return-void
.end method

.method public setRender(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    return-void
.end method

.method public setStatusBar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarNightMode(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarLightMode(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public setTabBarBadge(ILjava/lang/String;)Z
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->setTabBarBadge(ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTabBarItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v0, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBarManual()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;-><init>()V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v3

    const-string v4, "TmcApp:Page"

    if-eqz v3, :cond_9

    iget-object v5, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_8

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    if-nez v3, :cond_3

    const-string p1, "Tab bar\'s list is null"

    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    if-eqz v0, :cond_4

    move-object v2, v3

    goto :goto_1

    :cond_4
    iget-object v0, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    iput-object v0, v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    iget-object v0, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    iput-object v0, v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    iget-object v0, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    iput-object v0, v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    iget-object v0, v3, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    iput-object v0, v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_5

    iput-object p2, v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    :cond_5
    if-eqz p3, :cond_6

    iput-object p3, v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    :cond_6
    if-eqz p4, :cond_7

    iput-object p4, v2, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    :cond_7
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    check-cast p2, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {p2, p1, v2}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->setTabBarItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;)Z

    move-result p1

    return p1

    :cond_8
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Index out of tab list range: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , page: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "It\'s not tab bar page:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v1
.end method

.method public setTabBarItems(Lcom/google/gson/JsonArray;)Z
    .locals 11
    .param p1    # Lcom/google/gson/JsonArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TmcApp:Page"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->tabBarManual()Z

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getTabBarConfig()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v5, v4, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v5, v4, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-eq v6, v5, :cond_2

    const-string p1, "set tab size mismatch with tab list count"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    new-instance v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    invoke-direct {v6}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;-><init>()V

    invoke-virtual {p1, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    iget-object v8, v4, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;->list:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;

    if-nez v8, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tab bar\'s list is null, i: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    if-eqz v3, :cond_4

    move-object v6, v8

    goto :goto_2

    :cond_4
    iget-object v9, v8, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    iput-object v9, v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->pagePath:Ljava/lang/String;

    iget-object v9, v8, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    iput-object v9, v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    iget-object v9, v8, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    iput-object v9, v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    iget-object v8, v8, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    iput-object v8, v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    :goto_2
    const-string v8, "text"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    const-string v9, "iconPath"

    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    const-string v10, "selectedIconPath"

    invoke-virtual {v7, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->text:Ljava/lang/String;

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->iconPath:Ljava/lang/String;

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;->selectedIconPath:Ljava/lang/String;

    :cond_7
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "tempTabs is empty"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_9
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v3, p1, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v3, :cond_a

    check-cast p1, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {p1, v1}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->setTabBarItems(Ljava/util/ArrayList;)Z

    move-result p1

    return p1

    :cond_a
    const-string p1, "mPageContext is not TabBarAction, returning false"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_b
    :goto_3
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s not tab bar page:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :goto_4
    const-string v1, "setTabBarItems json parse is error"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTabPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->isTabPage:Z

    return-void
.end method

.method public setTitleBarVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->setTitleBarVisible(Z)V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsHide:Z

    const-string v1, "TmcApp:Page"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already show! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mIsHide:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->isUseForEmbed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sendToView page event pageResume"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->onShow()V

    return-void
.end method

.method public showAddScreenButton()V
    .locals 0

    return-void
.end method

.method public showHomeButton()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/PageContext;->getTitleBar()Lcom/cloud/tmc/integration/structure/ui/TitleBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/ui/TitleBar;->setHomeVisibility(Z)V

    :cond_0
    return-void
.end method

.method public showNavigationBarLoading()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/action/TitleBarAction;->showNavigationBarLoading()V

    :cond_0
    return-void
.end method

.method public showTabBar(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->showTabBar(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showTabBarRedDot(I)Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->showTabBarRedDot(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showTabBarUnreadIcon(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageContext:Lcom/cloud/tmc/integration/structure/PageContext;

    instance-of v1, v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/integration/ui/action/TabBarAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/ui/action/TabBarAction;->showTabBarUnreadIcon(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "@uri="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPageURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?path="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getPagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPageURI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mPagePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mStartParams:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode;->mSceneParams:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
