.class public Lcom/transsion/api/gateway/config/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile INSTANCE:Lcom/transsion/api/gateway/config/b;


# instance fields
.field public a:Lcom/transsion/api/gateway/config/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/api/gateway/config/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a()Lcom/transsion/api/gateway/config/b;
    .locals 2

    sget-object v0, Lcom/transsion/api/gateway/config/b;->INSTANCE:Lcom/transsion/api/gateway/config/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/api/gateway/config/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/api/gateway/config/b;->INSTANCE:Lcom/transsion/api/gateway/config/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/api/gateway/config/b;

    invoke-direct {v1}, Lcom/transsion/api/gateway/config/b;-><init>()V

    sput-object v1, Lcom/transsion/api/gateway/config/b;->INSTANCE:Lcom/transsion/api/gateway/config/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/api/gateway/config/b;->INSTANCE:Lcom/transsion/api/gateway/config/b;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;

    move-result-object v0

    const-string v1, "last_config_sync_time"

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getLong(Ljava/lang/String;)J

    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;

    move-result-object v0

    const-string v1, "gateway_config_v1"

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    const-string v2, " load from cache"

    invoke-virtual {v1, v2}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    :try_start_0
    const-class v1, Lcom/transsion/api/gateway/bean/RemoteConfig;

    invoke-static {v0, v1}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/api/gateway/bean/RemoteConfig;

    new-instance v1, Lcom/transsion/api/gateway/config/a;

    new-instance v2, Lcom/transsion/api/gateway/config/a$a;

    invoke-direct {v2}, Lcom/transsion/api/gateway/config/a$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/transsion/api/gateway/config/a;-><init>(Lcom/transsion/api/gateway/config/a$a;)V

    new-instance v2, Lcom/transsion/api/gateway/config/a$a;

    invoke-direct {v2, v1}, Lcom/transsion/api/gateway/config/a$a;-><init>(Lcom/transsion/api/gateway/config/a;)V

    invoke-virtual {v2, v0}, Lcom/transsion/api/gateway/config/a$a;->a(Lcom/transsion/api/gateway/bean/RemoteConfig;)Lcom/transsion/api/gateway/config/a$a;

    move-result-object v0

    new-instance v1, Lcom/transsion/api/gateway/config/a;

    invoke-direct {v1, v0}, Lcom/transsion/api/gateway/config/a;-><init>(Lcom/transsion/api/gateway/config/a$a;)V

    iget v0, v1, Lcom/transsion/api/gateway/config/a;->d:I

    if-lez v0, :cond_1

    iput-object v1, p0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " load from cache success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    invoke-virtual {v2}, Lcom/transsion/api/gateway/config/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    const-string v1, " set config"

    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/transsion/api/gateway/config/a;

    new-instance v1, Lcom/transsion/api/gateway/config/a$a;

    invoke-direct {v1}, Lcom/transsion/api/gateway/config/a$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/api/gateway/config/a;-><init>(Lcom/transsion/api/gateway/config/a$a;)V

    new-instance v1, Lcom/transsion/api/gateway/config/a$a;

    invoke-direct {v1, v0}, Lcom/transsion/api/gateway/config/a$a;-><init>(Lcom/transsion/api/gateway/config/a;)V

    new-instance v0, Lcom/transsion/api/gateway/config/a;

    invoke-direct {v0, v1}, Lcom/transsion/api/gateway/config/a;-><init>(Lcom/transsion/api/gateway/config/a$a;)V

    iput-object v0, p0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    return-void
.end method
