.class public abstract Lio/reactivex/rxjava3/internal/schedulers/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/g$a;
    }
.end annotation


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/g$a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/g$a;-><init>()V

    const/4 v1, 0x1

    const-string v2, "rx3.purge-enabled"

    invoke-static {v1, v2, v1, v1, v0}, Lio/reactivex/rxjava3/internal/schedulers/g;->b(ZLjava/lang/String;ZZLlz/h;)Z

    move-result v0

    sput-boolean v0, Lio/reactivex/rxjava3/internal/schedulers/g;->a:Z

    return-void
.end method

.method public static a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sget-boolean p0, Lio/reactivex/rxjava3/internal/schedulers/g;->a:Z

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    return-object v0
.end method

.method static b(ZLjava/lang/String;ZZLlz/h;)Z
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p4, p1}, Llz/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    return p2

    :cond_1
    return p3
.end method
