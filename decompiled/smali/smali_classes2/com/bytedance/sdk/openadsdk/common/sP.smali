.class public Lcom/bytedance/sdk/openadsdk/common/sP;
.super Ljava/lang/Object;


# static fields
.field private static Sj:Ljava/lang/String;


# direct methods
.method public static EjP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Jcg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static HiB()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->Dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Jcg()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "sdk_app_sha1"

    :try_start_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    return-object v0

    :cond_0
    const-wide/32 v2, 0xf731400

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TKC;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/sP;->Sj:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static Sj()Ljava/lang/String;
    .locals 1

    const-string v0, "open_news"

    return-object v0
.end method

.method public static Sj(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static Sj(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    const-string v4, "00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public static TKC()Ljava/lang/String;
    .locals 1

    const-string v0, "7.1.1.4"

    return-object v0
.end method

.method public static sP()Ljava/lang/String;
    .locals 1

    const-string v0, "1371"

    return-object v0
.end method

.method public static vS()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->Jcg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
