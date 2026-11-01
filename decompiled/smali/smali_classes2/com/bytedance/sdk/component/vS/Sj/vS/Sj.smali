.class public Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;
.super Ljava/lang/Object;


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;


# direct methods
.method public static Sj()Lcom/bytedance/sdk/component/vS/Sj/vS/sP;
    .locals 5

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/vS/Sj/vS/vS;

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/component/vS/Sj/vS/vS;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;)V

    sput-object v1, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

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
    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/vS/Sj;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/sP;

    return-object v0
.end method
