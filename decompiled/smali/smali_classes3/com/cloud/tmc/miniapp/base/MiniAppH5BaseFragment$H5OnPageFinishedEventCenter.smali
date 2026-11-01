.class public final Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H5OnPageFinishedEventCenter"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final app:Lcom/cloud/tmc/integration/structure/App;

.field private final page:Lcom/cloud/tmc/integration/structure/Page;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->page:Lcom/cloud/tmc/integration/structure/Page;

    return-void
.end method


# virtual methods
.method public final getApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    return-object v0
.end method

.method public final getPage()Lcom/cloud/tmc/integration/structure/Page;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->page:Lcom/cloud/tmc/integration/structure/Page;

    return-object v0
.end method

.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 9

    const-string v0, "2"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "juggist[FCP] -> \u6267\u884c\u56de\u8c03"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v2, :cond_d

    const-class v3, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    invoke-interface {v2, v3}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/base/ShowPageStore;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageStore;->findShowPages()Ljava/util/Stack;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "juggist[FCP] -> showPages.size == 0 return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "juggist[FCP] -> originalUrl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "juggist[FCP] -> url        :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "juggist[FCP] -> requestUrl :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "juggist[FCP] -> showPages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v3

    sget-object v4, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_START:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->getType()I

    move-result v4

    if-eq v3, v4, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "juggist[FCP] -> showPage.status != ShowPageStatus.PAGE_START return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v3, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v4, "params"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v3

    :goto_0
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_5

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object p1, v3

    :goto_1
    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    const-class v4, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;

    invoke-static {p1, v4}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "fromJson(params, IPageCh\u2026FinishedData::class.java)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;

    invoke-virtual {p1}, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cloud/tmc/render/IPageChainCallback$OnPageFinishedData;->getFcpCurrentTimeMillis()J

    move-result-wide v5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "juggist[FCP] -> FCPUrl:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "juggist[FCP] -> FCPTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "juggist[FCP] -> url != FCPUrl return"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->getTrackPointLoadData()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-virtual {p1, v4}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->setTrackPointLoadData(Z)V

    move v4, v1

    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getRequestUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->FCP_CURRENT_TIMEMILLIS:Ljava/lang/String;

    invoke-virtual {p1, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_CATEGOR_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_TYPE_LOAD_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "pageRandomId"

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->page:Lcom/cloud/tmc/integration/structure/Page;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPageRandomIdByGAId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_9
    move-object v4, v3

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pageUniqueId"

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/App;->setMiniAppLoadStatus(Z)V

    :goto_3
    sget-object v0, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->PAGE_PROGRESS100:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    invoke-virtual {v2, v0}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v4, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/PrivacyUtils;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->app:Lcom/cloud/tmc/integration/structure/App;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-virtual {v4, v0, v3}, Lcom/cloud/tmc/integration/utils/PrivacyUtils;->updateNewUserStatus(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->getVirtual_h5PageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getPageChainContext(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$H5OnPageFinishedEventCenter;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;->access$getTAG_NEW$p(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "juggist[FCP] -> \u9759\u6001\u8d44\u6e90\u6e32\u67d3\u6210\u529f"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_d
    :goto_4
    return v1
.end method
