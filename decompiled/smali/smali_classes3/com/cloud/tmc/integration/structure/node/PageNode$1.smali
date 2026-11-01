.class Lcom/cloud/tmc/integration/structure/node/PageNode$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/render/IRenderFactory$IRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/PageNode;->bindContext(Lcom/cloud/tmc/integration/structure/PageContext;Ljava/lang/Boolean;Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$listener:Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/PageNode;Landroid/os/Bundle;Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->val$listener:Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSuccess(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/kernel/render/IRender;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->e(Lcom/cloud/tmc/integration/structure/node/PageNode;Lcom/cloud/tmc/kernel/render/IRender;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_CHAIN_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CreateRender:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/activity/LoadStepAction;->STEP_FINISH_CREAT_RENDER:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/integration/proxy/IUpdateLoadingStepProxy;->notifyUpdateLoadingStep(Ljava/lang/String;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    const-class p1, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouterManager;->get(J)Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/PageNode;->d(Lcom/cloud/tmc/integration/structure/node/PageNode;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    invoke-static {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->d(Lcom/cloud/tmc/integration/structure/node/PageNode;)Lcom/cloud/tmc/kernel/render/IRender;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/engine/EngineRouter;->registerRender(Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$1;->val$listener:Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page$CreateRenderListener;->success()V

    :cond_1
    return-void
.end method
