.class public Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;
.super Ljava/lang/Object;


# direct methods
.method public static EjP()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->HiB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static HiB()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static Sj(ILandroid/content/Context;)J
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP(ILandroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static Sj()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static TKC()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->EjP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static sP(ILandroid/content/Context;)J
    .locals 12

    if-nez p1, :cond_0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    div-long/2addr v6, v2

    sub-long/2addr v6, v4

    const-wide/16 v2, 0x0

    cmp-long p1, v6, v2

    const/16 v2, 0xa

    const-wide/16 v3, 0x1

    const-wide/16 v8, 0x2

    const-wide/16 v10, 0xa

    if-gtz p1, :cond_3

    cmp-long p1, v0, v8

    if-gtz p1, :cond_1

    return-wide v3

    :cond_1
    cmp-long p1, v0, v10

    if-gtz p1, :cond_2

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_2
    div-long/2addr v0, v8

    mul-long/2addr v0, v10

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    add-long/2addr v0, v6

    sub-long/2addr v0, v10

    div-long/2addr v0, v8

    cmp-long p1, v0, v8

    if-gtz p1, :cond_4

    return-wide v3

    :cond_4
    cmp-long p1, v0, v10

    if-gtz p1, :cond_5

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_5
    mul-long/2addr v0, v10

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static sP()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static vS()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->vS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
