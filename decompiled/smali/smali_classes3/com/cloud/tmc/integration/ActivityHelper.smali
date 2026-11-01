.class public Lcom/cloud/tmc/integration/ActivityHelper;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TmcApp:ActivityHelper"


# instance fields
.field private appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field private appId:Ljava/lang/String;

.field private final mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mAlreadyDoDestroyed:Z

.field private mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

.field private mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

.field private mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

.field private mStartToken:J

.field private onSetHostActivityStatusBackgroundCallback:Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;

.field public sceneId:Ljava/lang/String;

.field tempSceneParams:Landroid/os/Bundle;

.field tempStartParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempStartParams:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAlreadyDoDestroyed:Z

    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/ActivityHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ActivityHelper;->lambda$setHostActivityStatusBackground$0(I)V

    return-void
.end method

.method private checkBackToUrlParam(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 5

    const-string v0, "extraMiniBackToUrl"

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/cloud/tmc/integration/processor/BackToPageIntercept;

    invoke-direct {v4}, Lcom/cloud/tmc/integration/processor/BackToPageIntercept;-><init>()V

    invoke-virtual {v4, v3}, Lcom/cloud/tmc/integration/processor/BackToPageIntercept;->setBackToPagePath(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getBackPressedProcessor()Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;->addInterceptors(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;)V

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "checkBackToUrlParam"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private checkHotStartToOpenSpecifyPage(Landroid/content/Intent;Lcom/cloud/tmc/integration/activity/StartClientBundle;)Z
    .locals 13

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    const/4 v1, 0x0

    const-string v2, "TmcApp:ActivityHelper"

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    sget-object v3, Lcom/cloud/tmc/integration/activity/StartAction;->SHOW_LOADING:Lcom/cloud/tmc/integration/activity/StartAction;

    if-ne v0, v3, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "miniAppId"

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    sget-object v5, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    iget-object v6, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->miniShellAppHotStart()Z

    move-result p1

    return p1

    :cond_0
    const-string v5, "page"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, ""

    const-class v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v10, "hot_open_type"

    if-eqz v6, :cond_2

    const-string p2, "normal_1"

    invoke-virtual {v0, v10, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v3, v4, v5, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "page not is empty"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p2

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v7

    :goto_0
    const-string v0, "hotStart"

    invoke-static {p1, v0, v7, p2}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {v3, v4}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkAndRemoveExtraPage(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-static {v4, v5}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u8def\u5f84\u5408\u6cd5\u6027\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_3

    const-string v12, "\u5408\u6cd5"

    goto :goto_1

    :cond_3
    const-string v12, "\u975e\u6cd5"

    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\uff0cpage="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isExited()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "normal_2"

    invoke-virtual {v0, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v3, v4, v5, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v7

    :goto_2
    const-string v0, "hotStartSelf"

    invoke-static {p2, v0, v7, p1}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result p2

    sget-object v2, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v2

    if-ne p2, v2, :cond_6

    invoke-static {v5}, Lcom/cloud/tmc/integration/utils/UrlUtil;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    const/4 v2, 0x2

    invoke-virtual {p2, v5, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->putPageType(Ljava/lang/String;I)V

    :cond_6
    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->checkBackToUrlParam(Lcom/cloud/tmc/integration/structure/App;)V

    const-string p2, "extraMiniClearAllPages"

    invoke-virtual {v3, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v6, "navigationType"

    if-eqz v2, :cond_7

    const-string v2, "normal_3"

    invoke-direct {p0, p1, v2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/cloud/tmc/integration/ActivityHelper;->setHostActivityStatusBackground(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p1, "hotReLaunch"

    invoke-virtual {v4, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    const-string p2, "reLaunch"

    invoke-virtual {p1, v5, p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p1, v5, v3, v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->relaunchToUrl(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v0, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {p1, p2, v2, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    :cond_7
    invoke-direct {p0, v5}, Lcom/cloud/tmc/integration/ActivityHelper;->setHostActivityStatusBackground(Ljava/lang/String;)V

    const-string p2, "normal_4"

    invoke-virtual {v0, v10, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v7, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v7}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v2, v7, v9, v8, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    const-string v2, "navigateTo"

    invoke-virtual {v0, v5, v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->putRouteType(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hotNavigateTo"

    invoke-virtual {v4, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p1, v5, v3, v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->pushPage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return v1

    :cond_8
    const-string v0, "\u76ee\u6807\u5c0f\u7a0b\u5e8f\u5df2\u9000\u51fa\uff0c\u65e0\u6cd5\u6ee1\u8db3\u62c9\u8d77\u8981\u6c42\u3002"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d App \u4e0d\u662f\u76ee\u6807\u5c0f\u7a0b\u5e8f\uff0c\u5f53\u524dAppId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u76ee\u6807AppId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-nez v0, :cond_b

    iget-object v0, p2, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    sget-object v3, Lcom/cloud/tmc/integration/activity/StartAction;->SHOW_LOADING:Lcom/cloud/tmc/integration/activity/StartAction;

    if-ne v0, v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app == null, action:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", \u6253\u5f00\u5931\u8d25\u7684\u573a\u666f\u4e0b\u53c8\u89e6\u53d1\u70ed\u542f\u52a8"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "0"

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpen(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_b
    return v1
.end method

.method public static createFastStartClient(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;I)Lcom/cloud/tmc/integration/activity/StartClientBundle;
    .locals 3

    sget-object v0, Lcom/cloud/tmc/integration/activity/StartAction;->SHOW_LOADING:Lcom/cloud/tmc/integration/activity/StartAction;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->action:Lcom/cloud/tmc/integration/activity/StartAction;

    new-instance v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/activity/StartClientBundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startToken:J

    iget-object p0, p0, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->action:Lcom/cloud/tmc/integration/activity/StartAction;

    if-eqz p0, :cond_0

    iput-object p0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/cloud/tmc/integration/activity/StartAction;->DIRECT_START:Lcom/cloud/tmc/integration/activity/StartAction;

    iput-object p0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    :goto_0
    return-object v0
.end method

.method private handleStartParams()V
    .locals 4

    const-string v0, "NebulaActivity.onCreate handleStartParams start"

    const-string v1, "TmcApp:ActivityHelper"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "requestWindowFeature error: "

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    const-string v2, "snapshot"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not allowed to task snapshot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    const-string v2, "fullscreen"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    const-string v2, "landscape"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_2
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    const-string v2, "isRestart"

    invoke-static {v0, v2, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    const-string v0, "onCreate handleStartParams done."

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hotOpen(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    const-string v0, "fis_type"

    const-string v1, "100000"

    const-string v2, "scene_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hotOpen->hotOpenType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TmcApp:ActivityHelper"

    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, "launchModeHot"

    const-string v4, "launchMode"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "miniapp_id"

    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "scene"

    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v4, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v3, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    const-string v4, "0"

    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v3, v3, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hot_open_type"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LAUNCH_MINIAPP_HOT_OPEN:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v2, ""

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpen(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private hotOpenShell(Ljava/lang/String;)V
    .locals 6

    const-string v0, "fis_type"

    const-string v1, "100000"

    const-string v2, "scene_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hotOpenShell->hotOpenType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TmcApp:ActivityHelper"

    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "miniapp_id"

    iget-object v5, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "scene"

    iget-object v5, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v5, v5, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v4, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    const-string v5, "0"

    invoke-virtual {v4, v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v4, v4, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hot_open_type"

    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_LAUNCH_MINIAPP_HOT_OPEN:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpen(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$setHostActivityStatusBackground$0(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->onSetHostActivityStatusBackgroundCallback:Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;->setHostActivityStatusBackground(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "TmcApp:ActivityHelper"

    const-string v1, "setHostActivityStatusBackground failed"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private miniShellAppHotStart()Z
    .locals 14

    const-string v0, ""

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string v2, "hot_open_type"

    const-string v3, "shell_0"

    const-string v4, "TmcApp:ActivityHelper"

    iget-object v5, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v7, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v7}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "h5Path"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5305\u58f3\u5c0f\u7a0b\u5e8f\u70ed\u542f\u52a8\uff0ch5Path="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v9}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isExited()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v8}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpenShell(Ljava/lang/String;)V

    new-instance v10, Lcom/cloud/tmc/kernel/render/LoadParams;

    invoke-direct {v10}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    const-string v11, "hotShellStart"

    iget-object v12, v10, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->resetPageRandomIdByGAID()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v11, v12, v13}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v11}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/cloud/tmc/kernel/render/LoadParams;->appId:Ljava/lang/String;

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    iget-object v11, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/cloud/tmc/integration/utils/MiniShellUtils;->getOriginUrl(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v7}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getLoadHtmlDataCallback()Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7, v9, v10}, Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;->loadHtmlData(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;)Z

    move-result v8

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_0
    if-nez v8, :cond_2

    invoke-interface {v7, v9, v10}, Lcom/cloud/tmc/integration/callback/ILoadHtmlDataCallback;->loadUrl(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/render/LoadParams;)V

    :cond_2
    invoke-virtual {v5, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v7, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v7}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v3, v7, v8, v0, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    const-string v3, "\u76ee\u6807\u5c0f\u7a0b\u5e8f\u5df2\u9000\u51fa\u6216\u8005h5Path\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u6ee1\u8db3\u62c9\u8d77\u8981\u6c42\u3002"

    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v7, "miniShellAppHotStart failed!"

    invoke-static {v4, v7, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    const-string v3, "shell_1"

    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/ActivityHelper;->hotOpenShell(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_HOT_RELOAD:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v1, v2, v3, v0, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    const-string v3, "hotShellStartSelf"

    invoke-static {v0, v3, v2, v1}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->openPageActionTrack(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method private setHostActivityStatusBackground(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "TmcApp:ActivityHelper"

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "setHostActivityStatusBackground page empty"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHostActivityStatusBackground page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getmAppLoadResult()Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "setHostActivityStatusBackground: appLoadResult is null"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v1, p1}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getWindowOptimalConfiguration(Lcom/cloud/tmc/integration/structure/AppLoadResult;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "setHostActivityStatusBackground: window is null"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;->getContentBgColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "setHostActivityStatusBackground: contentBackgroundColor is empty"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHostActivityStatusBackground: contentBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->onSetHostActivityStatusBackgroundCallback:Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/cloud/tmc/integration/a;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/integration/a;-><init>(Lcom/cloud/tmc/integration/ActivityHelper;I)V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    const-string v1, "setHostActivityStatusBackground parse color failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public createAppContext(Lcom/cloud/tmc/integration/structure/App;Landroidx/fragment/app/FragmentActivity;)Lcom/cloud/tmc/integration/structure/AppContext;
    .locals 3

    new-instance p1, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    sget v1, Lcom/cloud/tmc/integration/R$id;->trv_fragment_container:I

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget v2, Lcom/cloud/tmc/integration/R$id;->trv_tab_container:I

    invoke-virtual {p2, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;-><init>(Lcom/cloud/tmc/integration/structure/App;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;)V

    return-object p1
.end method

.method public declared-synchronized doCommonDestroy()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAlreadyDoDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAlreadyDoDestroyed:Z

    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    move-result v0

    const-string v1, "TmcApp:ActivityHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCommonDestroy force mApp.destroy with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->exit()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->doCommonDestroy()V

    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->doCommonDestroy()V

    return-void
.end method

.method public getApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startAction:Lcom/cloud/tmc/integration/activity/StartAction;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/ActivityHelper$1;->$SwitchMap$com$cloud$tmc$integration$activity$StartAction:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const-string v2, "TmcApp:ActivityHelper"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/AppManager;

    iget-wide v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartToken:J

    invoke-interface {v1, v3, v4}, Lcom/cloud/tmc/integration/structure/AppManager;->findAppByToken(J)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/node/AppNode;

    iput-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate find quickStarted app! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " appId from Param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "appId"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v2, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->appId:Ljava/lang/String;

    iget-object v3, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    iget-object v1, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    invoke-interface {v0, v2, v3, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/node/AppNode;

    iput-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    const-class v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/VirtualAppManager;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/VirtualAppManager;->updateAppInfo(Lcom/cloud/tmc/integration/structure/App;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v0, v1}, Lcom/cloud/tmc/integration/ActivityHelper;->createAppContext(Lcom/cloud/tmc/integration/structure/App;Landroidx/fragment/app/FragmentActivity;)Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->bindContext(Lcom/cloud/tmc/integration/structure/AppContext;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ActivityHelper;->checkBackToUrlParam(Lcom/cloud/tmc/integration/structure/App;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->start()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "prepareExceptionCode"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "prepareExceptionMessage"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " errorMessage: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->doCommonDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const-class v0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TmcApp:ActivityHelper"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackPressed:   "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    if-eqz p1, :cond_1

    instance-of p1, p1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    check-cast p1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->exitFullScreen()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->backPressed()Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_5

    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->checkOpenMutipleTask(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_4

    :try_start_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {p1, p2, v0}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->removeMiniAppTask(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    :try_start_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_2
    return v4

    :cond_5
    return v3
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "extraMiniClearAllPages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent with intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TmcApp:ActivityHelper"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "IS_LITE_MOVE_TASK"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/ActivityHelper;->setupParams(Landroid/content/Intent;)Lcom/cloud/tmc/integration/activity/StartClientBundle;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v3, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const-string v4, "scene_id"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/tmc/integration/ActivityHelper;->sceneId:Ljava/lang/String;

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/cloud/tmc/integration/ActivityHelper;->checkHotStartToOpenSpecifyPage(Landroid/content/Intent;Lcom/cloud/tmc/integration/activity/StartClientBundle;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u5c0f\u7a0b\u5e8f\u5728\u540e\u53f0\u4e14\u62c9\u8d77\u6307\u5b9a\u9875\u9762\u6210\u529f\uff01"

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_0
    iget-object p1, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->onCreate()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TmcApp:ActivityHelper"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->pause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "TmcApp:ActivityHelper"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->resume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "TmcApp:ActivityHelper"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->stop()V

    :cond_0
    return-void
.end method

.method public reportFailureClickReloadButton()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-nez v0, :cond_0

    const-string v0, "Tmc"

    const-string v1, "mApp is null,reportFailureClickReloadButton"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportFailureClickReloadButton()V

    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->appId:Ljava/lang/String;

    return-void
.end method

.method public setOnSetHostActivityStatusBackgroundCallback(Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->onSetHostActivityStatusBackgroundCallback:Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;

    return-void
.end method

.method public setupParams(Landroid/content/Intent;)Lcom/cloud/tmc/integration/activity/StartClientBundle;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "TmcApp:ActivityHelper"

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/cloud/tmc/integration/ActivityHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "startBundle"

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/ActivityHelper;->handleStartParams()V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-wide v1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startToken:J

    iput-wide v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartToken:J

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getStartParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object p1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mApp:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_1
    sget-object p1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "enableFixMiniHotOpen"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Tmc"

    const-string v1, "\u4fee\u590d\u540e\u53f0\u56de\u6536\u540e\u7684"

    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempStartParams:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v1, v1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object p1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempStartParams:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    goto :goto_3

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    iget-object v1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->startParams:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempStartParams:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/cloud/tmc/integration/activity/StartClientBundle;->sceneParams:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->tempSceneParams:Landroid/os/Bundle;

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "onCreate intent null!!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/ActivityHelper;->mStartClientBundle:Lcom/cloud/tmc/integration/activity/StartClientBundle;

    return-object p1
.end method
