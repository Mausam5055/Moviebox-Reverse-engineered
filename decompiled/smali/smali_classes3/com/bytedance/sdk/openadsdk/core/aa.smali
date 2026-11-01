.class public Lcom/bytedance/sdk/openadsdk/core/aa;
.super Ljava/lang/Object;


# static fields
.field private static EjP:Z

.field private static Sj:Ljava/lang/String;

.field private static TKC:Ljava/lang/String;

.field private static sP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static EjP(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static HiB(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-wide v0, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->sP:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/TKC;

    move-result-object p0

    const-string v0, "uuid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->TKC:Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    return-void
.end method

.method public static Sj(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->vS(Landroid/content/Context;)V

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public static Sj()V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa$1;

    const-string v1, "update_did"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    :cond_0
    return-void
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj()V

    :cond_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->sP(Ljava/lang/String;)V

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym;->Sj(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic TKC()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public static TKC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->TKC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/aa;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->HiB(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method public static sP()Ljava/lang/String;
    .locals 6

    const-string v0, "zh"

    const-string v1, ""

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    invoke-static {}, Ln0/b;->a()Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2, v4}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "zh-Hant"

    return-object v0

    :cond_4
    return-object v3

    :catchall_0
    return-object v1
.end method

.method public static sP(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa;->sP:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/aa;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->HiB(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->sP:Ljava/lang/String;

    return-object p0
.end method

.method private static vS(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/aa;->EjP(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/TKC;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "abcd"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC;->sP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "cypher"

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Sj;->TKC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
