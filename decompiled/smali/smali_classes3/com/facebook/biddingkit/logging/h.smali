.class public Lcom/facebook/biddingkit/logging/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/biddingkit/logging/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/biddingkit/logging/i;

    invoke-direct {p1, p3}, Lcom/facebook/biddingkit/logging/i;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/biddingkit/logging/EventLogDispatcher;->j(Lcom/facebook/biddingkit/logging/i;)V

    invoke-static {p0}, Lcom/facebook/biddingkit/logging/f;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/facebook/biddingkit/logging/c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Logging"

    const-string p2, "Failed to initialize"

    invoke-static {p1, p2, p0}, Lcom/facebook/biddingkit/logging/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized b()Z
    .locals 2

    const-class v0, Lcom/facebook/biddingkit/logging/h;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/facebook/biddingkit/logging/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
