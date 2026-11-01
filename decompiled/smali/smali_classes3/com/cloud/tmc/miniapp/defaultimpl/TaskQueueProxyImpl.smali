.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TaskQueueProxyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/ITaskQueueProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAppTask(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uniqueId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO;

    new-instance v1, Lcom/cloud/tmc/miniapp/task/OooO00o;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/l;

    invoke-direct {v2, p2}, Lcom/cloud/tmc/miniapp/defaultimpl/l;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-direct {v1, p1, v2}, Lcom/cloud/tmc/miniapp/task/OooO00o;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string p1, "task"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/OooO;->OooO00o()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "NormalTaskQueueUtils"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
