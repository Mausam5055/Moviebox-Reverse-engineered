.class public final Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/ipc/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmupEntrance(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;->OooO00o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO0O0(Z)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "warmupWebView"

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;

    invoke-interface {p0}, Lcom/cloud/tmc/integration/performance/innerwebview/IInnerH5WebviewPool;->createWebview()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmUpWorker()V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->warmupRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooO00o(Z)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch$OooOO0;->OooO00o:Z

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/g;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/utils/g;-><init>(Z)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
