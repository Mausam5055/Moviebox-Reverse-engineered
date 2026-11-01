.class public final Lcom/cloud/tmc/miniapp/defaultimpl/WarmupPointImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/point/WarmupPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalized()V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public start(Landroid/content/Context;I)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p1

    :try_start_0
    const-string v3, "100000"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "warmupType"

    invoke-virtual {v4, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lcom/cloud/tmc/integration/model/PrepareContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf0

    const/4 v11, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/cloud/tmc/integration/model/PrepareContext;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;

    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/WarmupPointImp$OooO00o;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/defaultimpl/WarmupPointImp$OooO00o;-><init>()V

    invoke-direct {v1, p2, v2}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0OO;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/OooOo;)V

    invoke-interface {v0, p2, v1}, Lcom/cloud/tmc/miniapp/proxy/IClientStarter;->createWarmupController(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p2
.end method
