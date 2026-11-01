.class public abstract Lvu/a;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Lvu/a;->a:J

    return-wide v0
.end method

.method static synthetic b(J)J
    .locals 0

    sput-wide p0, Lvu/a;->a:J

    return-wide p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Tinker.NetworkRetryMgr"

    const-string v1, "register: context is null, skip"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-class v1, Lvu/a;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lvu/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_1

    const-string p0, "Tinker.NetworkRetryMgr"

    const-string v2, "NetworkRetryManager already registered, skip"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_2
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-nez v2, :cond_3

    const-string p0, "Tinker.NetworkRetryMgr"

    const-string v2, "register: ConnectivityManager is null, skip"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :cond_3
    new-instance v3, Lvu/a$a;

    invoke-direct {v3, p0}, Lvu/a$a;-><init>(Landroid/content/Context;)V

    sput-object v3, Lvu/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lvu/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, p0, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p0, "Tinker.NetworkRetryMgr"

    const-string v2, "NetworkRetryManager registered successfully"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lvu/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v2, "Tinker.NetworkRetryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register network callback failed, degrade gracefully: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static d()V
    .locals 3

    const-class v0, Lvu/a;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    sput-wide v1, Lvu/a;->a:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
