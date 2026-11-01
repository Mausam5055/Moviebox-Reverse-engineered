.class Lcom/cloud/tmc/integration/structure/node/AppNode$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/AppNode;->onEngineInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->e(Lcom/cloud/tmc/integration/structure/node/AppNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcApp:App"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v0

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    iget-object v0, v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;->pages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "page"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cloud/tmc/integration/utils/AppUtils;->isLegalPath(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "Page invalid, use default page"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "targetPagePath is null, app cannot start"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    const-string v2, "firstStartedPagePath"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/integration/proxy/PageFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/cloud/tmc/integration/proxy/PageFactory;

    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->e(Lcom/cloud/tmc/integration/structure/node/AppNode;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/integration/proxy/PageFactory;->createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->d(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v2

    const-class v3, Lcom/cloud/tmc/integration/model/WorkerStore;

    if-nez v2, :cond_3

    new-instance v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    const-string v4, ""

    invoke-direct {v2, v4}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/cloud/tmc/integration/model/WorkerStore;

    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v4}, Lcom/cloud/tmc/integration/structure/node/AppNode;->d(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v4

    invoke-interface {v4}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/cloud/tmc/integration/model/WorkerStore;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->setData(Ljava/lang/Class;Ljava/lang/Object;)V

    :goto_2
    const-string v2, "onStart"

    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/TrackPointUtils;->pageRouteTrackStart(Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/AppModel;->getAppinfoCategoryType()I

    move-result v3

    sget-object v4, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/constants/MiniAppType;->getType()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/UrlUtil;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3}, Lcom/cloud/tmc/integration/structure/App;->putPageType(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iget-object v2, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mStartParams:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mSceneParams:Landroid/os/Bundle;

    invoke-static {v2, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkAndRemoveExtraPage(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iget-object v0, v0, Lcom/cloud/tmc/integration/structure/node/AppNode;->mAppContext:Lcom/cloud/tmc/integration/structure/AppContext;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppContext;->start(Lcom/cloud/tmc/integration/structure/Page;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$5;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->onPageStarted(Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method
