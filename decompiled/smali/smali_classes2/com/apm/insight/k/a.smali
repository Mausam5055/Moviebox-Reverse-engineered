.class public final Lcom/apm/insight/k/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Runnable;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/apm/insight/k/a$1;

    invoke-direct {v0}, Lcom/apm/insight/k/a$1;-><init>()V

    sput-object v0, Lcom/apm/insight/k/a;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    sput v0, Lcom/apm/insight/k/a;->b:I

    return-void
.end method

.method public static a()V
    .locals 2

    const/16 v0, 0x28

    sput v0, Lcom/apm/insight/k/a;->b:I

    invoke-static {}, Lcom/apm/insight/runtime/m;->a()Lcom/apm/insight/runtime/p;

    move-result-object v0

    sget-object v1, Lcom/apm/insight/k/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b()V
    .locals 1

    invoke-static {}, Lcom/apm/insight/k/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apm/insight/k/j;->c()V

    :cond_0
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apm/insight/k/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apm/insight/k/a;->i()V

    :cond_1
    return-void
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/apm/insight/k/a;->i()V

    return-void
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lcom/apm/insight/k/a;->b:I

    return v0
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/apm/insight/k/a;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static h()[B
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/apm/insight/e;->i()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/apm/insight/entity/b;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apm/insight/k/e;->a(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/apm/insight/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized i()V
    .locals 8

    const-class v0, Lcom/apm/insight/k/a;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/apm/insight/k/a;->b:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    sput v1, Lcom/apm/insight/k/a;->b:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    const-string v1, "try fetchApmConfig"

    invoke-static {v1}, Lcom/apm/insight/a;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apm/insight/l/a;->b(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/apm/insight/k/a;->h()[B

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_2
    const-string v5, "npth"

    invoke-static {}, Lcom/apm/insight/e;->i()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apm/insight/runtime/ConfigManager;->isDebugMode()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "npth"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " NPTH Catch Error"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const-string v4, "after fetchApmConfig net "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apm/insight/a;->a(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    invoke-static {v1, v2}, Lcom/apm/insight/runtime/a;->a(Lorg/json/JSONArray;Z)V

    sput v3, Lcom/apm/insight/k/a;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_3
    sget v1, Lcom/apm/insight/k/a;->b:I

    add-int/lit8 v1, v1, -0xa

    sput v1, Lcom/apm/insight/k/a;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/apm/insight/k/j;->c()V

    invoke-static {}, Lcom/apm/insight/k/j;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    sput v3, Lcom/apm/insight/k/a;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
