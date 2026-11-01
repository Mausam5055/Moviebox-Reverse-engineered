.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment;->prePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getRenderId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v1}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TYPE:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartParams()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "uniqueChainID"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v1

    :goto_4
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->LoadRenderFramework:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v1

    :goto_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v1

    :goto_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, v1

    :goto_7
    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_APP_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_8
    move-object v2, v1

    :goto_8
    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PAGE_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PageLoadRenderFramework:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object p1

    goto :goto_9

    :cond_9
    move-object p1, v1

    :goto_9
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/chain/endState/LoadRenderFrameworkEndState;->setChainContext(Lcom/cloud/tmc/integration/chain/ChainContext;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-class v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    sget-object v2, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_LOAD_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-interface {v0, p1, v2}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getPage$p$s-883329049(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    move-result-object p1

    goto :goto_a

    :cond_b
    move-object p1, v1

    :goto_a
    instance-of v0, p1, Lcom/cloud/tmc/render/system/SystemWebView;

    if-eqz v0, :cond_c

    move-object v1, p1

    check-cast v1, Lcom/cloud/tmc/render/system/SystemWebView;

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/cloud/tmc/render/system/SystemWebView;->getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->registerMessageChannel()V

    :cond_d
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$prePage$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    if-eqz p1, :cond_e

    const-string v0, "renderOnMessageReady"

    invoke-interface {p1, v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_e
    const/4 v3, 0x1

    :cond_f
    return v3
.end method
