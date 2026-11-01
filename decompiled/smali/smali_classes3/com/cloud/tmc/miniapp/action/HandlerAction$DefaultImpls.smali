.class public final Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/HandlerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getHandler(Lcom/cloud/tmc/miniapp/action/HandlerAction;)Landroid/os/Handler;
    .locals 0

    sget-object p0, Lcom/cloud/tmc/miniapp/action/HandlerAction;->Companion:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->getHANDLER()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/action/HandlerAction;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction;->Companion:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->getHANDLER()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    .locals 5

    const-string v0, "runnable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction;->Companion:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->getHANDLER()Landroid/os/Handler;

    move-result-object v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-gez p1, :cond_1

    move-wide p2, v3

    :cond_1
    add-long/2addr v1, p2

    invoke-virtual {v0, p4, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z
    .locals 5

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_0

    move-wide p2, v2

    :cond_0
    add-long/2addr v0, p2

    invoke-interface {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/action/HandlerAction;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction;->Companion:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->getHANDLER()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)V
    .locals 0

    const-string p0, "runnable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/tmc/miniapp/action/HandlerAction;->Companion:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->getHANDLER()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeCallbacksAndMessages(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction;->Companion:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->getHANDLER()Landroid/os/Handler;

    move-result-object v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
