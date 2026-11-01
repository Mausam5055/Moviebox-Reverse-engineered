.class public Lcom/bytedance/sdk/openadsdk/utils/RiZ;
.super Ljava/lang/Object;


# direct methods
.method public static Sj()I
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/32 v3, 0x2000000

    div-long/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v1, v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-lt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :catchall_0
    :goto_0
    return v0
.end method
