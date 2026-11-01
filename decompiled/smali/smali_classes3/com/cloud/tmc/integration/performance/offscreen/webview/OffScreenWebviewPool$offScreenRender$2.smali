.class final Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->offScreenRender(Ljava/lang/String;Lcom/cloud/tmc/kernel/constants/PageType;Landroid/app/Activity;Lcom/cloud/tmc/integration/model/PrepareContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $context:Lcom/cloud/tmc/integration/model/PrepareContext;

.field final synthetic $pageType:Lcom/cloud/tmc/kernel/constants/PageType;

.field final synthetic $url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/cloud/tmc/kernel/constants/PageType;Lcom/cloud/tmc/integration/model/PrepareContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$pageType:Lcom/cloud/tmc/kernel/constants/PageType;

    iput-object p4, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$context:Lcom/cloud/tmc/integration/model/PrepareContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 11

    const-class v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    iget-object v2, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->getWebview(Landroid/app/Activity;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offScreenRender -> \u83b7\u53d6\u9884\u70edwebview\u5931\u8d25\uff0c\u672c\u6b21\u64cd\u4f5c\u4e0d\u518d\u7ee7\u7eed\u6267\u884c"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$setRetryRenderUrl$p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$pageType:Lcom/cloud/tmc/kernel/constants/PageType;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$setRetryPageType$p(Lcom/cloud/tmc/kernel/constants/PageType;)V

    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getOffScreenRenderIng$p()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getUnUsedOffScreenRenderQueue$p()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getMaxSize$p()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getUnUsedOffScreenRenderQueue$p()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getUnUsedOffScreenRenderQueue$p()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->removeWebview(Lcom/cloud/tmc/kernel/render/IRender;Z)V

    new-instance v4, Lcom/cloud/tmc/kernel/render/LoadParams;

    invoke-direct {v4}, Lcom/cloud/tmc/kernel/render/LoadParams;-><init>()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$url:Ljava/lang/String;

    iput-object v0, v4, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    iput-object v0, v4, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v3, "enableShellPreRequest"

    const/4 v9, 0x1

    invoke-virtual {v0, v3, v9}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    invoke-virtual {v3, v5, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v5, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;

    invoke-direct {v5, v3}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;-><init>(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$context:Lcom/cloud/tmc/integration/model/PrepareContext;

    const/4 v10, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v10

    :goto_0
    invoke-virtual {v5, v6}, Lcom/cloud/tmc/integration/chain/insert/AppInsertState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v6, "app"

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$context:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartParams()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "uniqueChainID"

    const-string v8, "-1"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v10

    :goto_1
    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v6, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$context:Lcom/cloud/tmc/integration/model/PrepareContext;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v10

    :goto_2
    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_INSERT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v8, ""

    invoke-interface {v5, v6, v7, v8, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offScreenRender -> enablePreRequest:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_c

    iget-object v0, v4, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offScreenRender -> getHtml key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$pageType:Lcom/cloud/tmc/kernel/constants/PageType;

    sget-object v5, Lcom/cloud/tmc/kernel/constants/PageType;->H5:Lcom/cloud/tmc/kernel/constants/PageType;

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$activity:Landroid/app/Activity;

    const-class v5, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v6, "miniSyncSharpNews"

    invoke-interface {v5, v3, v6, v0}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v8, v0

    :goto_3
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    move-object v5, v8

    :goto_4
    move v0, v9

    goto :goto_5

    :cond_6
    move v0, v2

    move-object v5, v8

    goto :goto_5

    :cond_7
    sget-object v5, Lcom/cloud/tmc/kernel/constants/PageType;->H5_SHELL:Lcom/cloud/tmc/kernel/constants/PageType;

    if-ne v3, v5, :cond_6

    const-class v3, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    iget-object v5, p0, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool$offScreenRender$2;->$activity:Landroid/app/Activity;

    const-string v6, "md5"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5, v0, v9, v9}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;->getPreHtmlCache(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offScreenRender -> H5_SHELL check preHtml :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v5, v0

    if-lez v3, :cond_8

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_5
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "offScreenRender -> loadDataWithBaseURL"

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/cloud/tmc/render/system/ShellWebView;

    if-eqz v3, :cond_9

    check-cast v0, Lcom/cloud/tmc/render/system/ShellWebView;

    goto :goto_6

    :cond_9
    move-object v0, v10

    :goto_6
    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v9}, Lcom/cloud/tmc/render/system/ShellWebView;->setLoadDataWithBaseURL(Z)V

    :goto_7
    const-string v7, "UTF-8"

    const/4 v8, 0x0

    const-string v6, "text/html"

    move-object v3, v1

    invoke-interface/range {v3 .. v8}, Lcom/cloud/tmc/kernel/render/IRender;->loadDataWithBaseURL(Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "offScreenRender -> loadUrl: getLocalHtml fail "

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    goto :goto_8

    :cond_c
    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "offScreenRender -> loadUrl "

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lcom/cloud/tmc/kernel/render/IRender;->load(Lcom/cloud/tmc/kernel/render/LoadParams;)V

    :goto_8
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/render/system/ShellWebView;

    if-eqz v1, :cond_d

    move-object v10, v0

    check-cast v10, Lcom/cloud/tmc/render/system/ShellWebView;

    :cond_d
    if-nez v10, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v10, v9}, Lcom/cloud/tmc/render/system/ShellWebView;->setOffScreenRender(Z)V

    :goto_9
    invoke-static {}, Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;->access$getOffScreenRenderIng$p()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
