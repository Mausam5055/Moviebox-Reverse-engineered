.class public abstract Landroidx/lifecycle/u0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lq1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/e;

    invoke-direct {v0}, Lq1/e;-><init>()V

    sput-object v0, Landroidx/lifecycle/u0;->a:Lq1/e;

    return-void
.end method

.method public static final a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/u0;->a:Lq1/e;

    monitor-enter v0

    :try_start_0
    const-string v1, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/t0;->getCloseable(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object v1

    check-cast v1, Lq1/a;

    if-nez v1, :cond_0

    invoke-static {}, Lq1/b;->a()Lq1/a;

    move-result-object v1

    const-string v2, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v2, v1}, Landroidx/lifecycle/t0;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method
