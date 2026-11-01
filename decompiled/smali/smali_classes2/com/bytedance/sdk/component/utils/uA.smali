.class public Lcom/bytedance/sdk/component/utils/uA;
.super Ljava/lang/Object;


# static fields
.field private static volatile Sj:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sj()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->sP()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static sP()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/utils/uA;->Sj:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/utils/uA;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/utils/uA;->Sj:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/component/utils/uA;->Sj:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/utils/uA;->Sj:Landroid/os/Handler;

    return-object v0
.end method
