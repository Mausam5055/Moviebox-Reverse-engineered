.class public Lcom/bytedance/sdk/component/utils/aa;
.super Ljava/lang/Object;


# static fields
.field private static Sj:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public static Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/component/utils/aa;->sP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/utils/aa;->Sj:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    sget-object p0, Lcom/bytedance/sdk/component/utils/aa;->Sj:Landroid/content/Context;

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;)V

    return-void
.end method

.method private static sP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    return-object v0
.end method
