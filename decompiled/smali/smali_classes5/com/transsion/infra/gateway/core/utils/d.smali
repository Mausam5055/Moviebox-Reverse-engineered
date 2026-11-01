.class public Lcom/transsion/infra/gateway/core/utils/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/transsion/infra/gateway/core/utils/d;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/transsion/infra/gateway/core/utils/d;
    .locals 2

    const-class v0, Lcom/transsion/infra/gateway/core/utils/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/infra/gateway/core/utils/d;->c:Lcom/transsion/infra/gateway/core/utils/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/infra/gateway/core/utils/d;

    invoke-direct {v1, p0}, Lcom/transsion/infra/gateway/core/utils/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/infra/gateway/core/utils/d;->c:Lcom/transsion/infra/gateway/core/utils/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/d;->c:Lcom/transsion/infra/gateway/core/utils/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    const-string v3, "gateway_core"

    const/4 v4, 0x0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v4

    :cond_1
    :try_start_0
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;

    return-object p1

    :cond_2
    :try_start_1
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v4
.end method


# virtual methods
.method public b(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lcom/transsion/infra/gateway/core/utils/d;->b:Landroid/content/Context;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v3, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/infra/gateway/core/utils/d;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-interface {v0, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public d(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/infra/gateway/core/utils/d;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/infra/gateway/core/utils/d;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/utils/d;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
