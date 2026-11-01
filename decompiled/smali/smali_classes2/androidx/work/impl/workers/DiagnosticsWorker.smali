.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/work/impl/workers/DiagnosticsWorker;",
        "Landroidx/work/Worker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "parameters",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "Landroidx/work/s$a;",
        "p",
        "()Landroidx/work/s$a;",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public p()Landroidx/work/s$a;
    .locals 9

    invoke-virtual {p0}, Landroidx/work/s;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/f1;->o(Landroid/content/Context;)Landroidx/work/impl/f1;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    const-string v2, "getWorkDatabase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j0()Landroidx/work/impl/model/z;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->m0()Landroidx/work/impl/model/v1;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->i0()Landroidx/work/impl/model/q;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/f1;->m()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/b;->a()Landroidx/work/a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-interface {v2, v5, v6}, Landroidx/work/impl/model/k0;->e(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2}, Landroidx/work/impl/model/k0;->v()Ljava/util/List;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-interface {v2, v6}, Landroidx/work/impl/model/k0;->m(I)Ljava/util/List;

    move-result-object v2

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v6

    invoke-static {}, Landroidx/work/impl/workers/a;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Recently completed work:\n\n"

    invoke-virtual {v6, v7, v8}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v6

    invoke-static {}, Landroidx/work/impl/workers/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v1, v0}, Landroidx/work/impl/workers/a;->b(Landroidx/work/impl/model/z;Landroidx/work/impl/model/v1;Landroidx/work/impl/model/q;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    invoke-static {}, Landroidx/work/impl/workers/a;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Running work:\n\n"

    invoke-virtual {v0, v6, v7}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    invoke-static {}, Landroidx/work/impl/workers/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v1, v5}, Landroidx/work/impl/workers/a;->b(Landroidx/work/impl/model/z;Landroidx/work/impl/model/v1;Landroidx/work/impl/model/q;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    invoke-static {}, Landroidx/work/impl/workers/a;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Enqueued work:\n\n"

    invoke-virtual {v0, v5, v6}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    invoke-static {}, Landroidx/work/impl/workers/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v1, v2}, Landroidx/work/impl/workers/a;->b(Landroidx/work/impl/model/z;Landroidx/work/impl/model/v1;Landroidx/work/impl/model/q;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Landroidx/work/s$a;->c()Landroidx/work/s$a;

    move-result-object v0

    const-string v1, "success(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
