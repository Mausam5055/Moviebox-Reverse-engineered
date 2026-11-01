.class public Lcom/cloud/hisavana/sdk/e4;
.super Lcom/cloud/sdk/commonutil/util/c;


# static fields
.field private static a:Lcom/cloud/hisavana/sdk/e4;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ADSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/cloud/hisavana/sdk/e4;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/sdk/commonutil/util/c;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/cloud/hisavana/sdk/e4;
    .locals 3

    const-class v0, Lcom/cloud/hisavana/sdk/e4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4;

    if-nez v1, :cond_1

    const-class v1, Lcom/cloud/hisavana/sdk/e4;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4;

    if-nez v2, :cond_0

    new-instance v2, Lcom/cloud/hisavana/sdk/e4;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/e4;-><init>()V

    sput-object v2, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v1, Lcom/cloud/hisavana/sdk/e4;->a:Lcom/cloud/hisavana/sdk/e4;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/cloud/hisavana/sdk/e4;->b:Z

    return v0
.end method


# virtual methods
.method public getGlobalTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ADSDK_S"

    return-object v0
.end method
