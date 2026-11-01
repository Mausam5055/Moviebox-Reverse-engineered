.class public Lcom/bytedance/sdk/component/utils/Dq;
.super Ljava/lang/Object;


# static fields
.field private static Sj:Landroid/os/HandlerThread;


# direct methods
.method public static Sj(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/Dq;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/Dq/uA;->sCrashHappened:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/component/utils/Dq;->Sj:Landroid/os/HandlerThread;

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/utils/Dq$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/utils/Dq$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    const-string p1, "HandlerThreadUtils"

    const-string v0, "new handlerThread error"

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/bytedance/sdk/component/utils/Dq;->Sj:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static Sj(Landroid/os/HandlerThread;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/component/utils/Dq;->Sj:Landroid/os/HandlerThread;

    return-void
.end method
