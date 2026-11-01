.class public final Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/CoroutineWorker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\t\u0010\nJ(\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\u0013\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/work/impl/workers/ConstraintTrackingWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "workerParameters",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "Landroidx/work/s$a;",
        "u",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroidx/work/s;",
        "delegate",
        "Landroidx/work/impl/constraints/WorkConstraintsTracker;",
        "workConstraintsTracker",
        "Landroidx/work/impl/model/j0;",
        "workSpec",
        "t",
        "(Landroidx/work/s;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "n",
        "g",
        "Landroidx/work/WorkerParameters;",
        "ConstraintUnsatisfiedException",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final g:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Landroidx/work/WorkerParameters;

    return-void
.end method

.method public static final synthetic r(Landroidx/work/impl/workers/ConstraintTrackingWorker;Landroidx/work/s;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->t(Landroidx/work/s;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic s(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final t(Landroidx/work/s;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;

    iget v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;

    invoke-direct {v0, p0, p4}, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p4, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;

    const/4 v2, 0x0

    invoke-direct {p4, p1, p2, p3, v2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$2;-><init>(Landroidx/work/s;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$runWorker$1;->label:I

    invoke-static {p4, v0}, Lkotlinx/coroutines/o0;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "coroutineScope(...)"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p4
.end method

.method private final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    instance-of v1, p1, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;

    iget v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;->label:I

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v7

    iget v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;->label:I

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v8, :cond_1

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/work/s;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/work/s;->e()Landroidx/work/f;

    move-result-object v1

    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v1, v2}, Landroidx/work/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No worker to delegate to."

    const-string v3, "failure(...)"

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p0}, Landroidx/work/s;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroidx/work/impl/f1;->o(Landroid/content/Context;)Landroidx/work/impl/f1;

    move-result-object v4

    const-string v5, "getInstance(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/work/s;->d()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "toString(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Landroidx/work/impl/model/k0;->j(Ljava/lang/String;)Landroidx/work/impl/model/j0;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {}, Landroidx/work/s$a;->a()Landroidx/work/s$a;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v6, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-virtual {v4}, Landroidx/work/impl/f1;->s()Li4/n;

    move-result-object v9

    const-string v10, "getTrackers(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v9}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Li4/n;)V

    invoke-virtual {v6, v5}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->b(Landroidx/work/impl/model/j0;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraints not met for delegate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Requesting retry."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/s$a;->b()Landroidx/work/s$a;

    move-result-object v0

    const-string v1, "retry(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_5
    invoke-static {}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Constraints met for delegate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Landroidx/work/s;->g()Landroidx/work/m0;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/work/s;->a()Landroid/content/Context;

    move-result-object v10

    const-string v11, "getApplicationContext(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Landroidx/work/WorkerParameters;

    invoke-virtual {v9, v10, v1, v11}, Landroidx/work/m0;->b(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/s;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Landroidx/work/WorkerParameters;

    invoke-virtual {v1}, Landroidx/work/WorkerParameters;->e()Lj4/c;

    move-result-object v1

    invoke-interface {v1}, Lj4/c;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string v2, "getMainThreadExecutor(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2
    invoke-static {v1}, Lkotlinx/coroutines/m1;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;

    move-result-object v10

    new-instance v11, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5;

    const/4 v12, 0x0

    move-object v1, v11

    move-object v2, p0

    move-object v3, v9

    move-object v4, v6

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Landroidx/work/s;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/j0;Lkotlin/coroutines/Continuation;)V

    iput-object v9, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;->L$0:Ljava/lang/Object;

    iput v8, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1;->label:I

    invoke-static {v10, v11, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v1, v7, :cond_6

    return-object v7

    :cond_6
    move-object v2, v9

    :goto_2
    :try_start_3
    check-cast v1, Landroidx/work/s$a;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v9

    :goto_3
    invoke-virtual {p0}, Landroidx/work/s;->h()Z

    move-result v1

    if-nez v1, :cond_7

    instance-of v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;

    if-eqz v1, :cond_a

    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v1, v3, :cond_8

    const/16 v1, -0x200

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroidx/work/s;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/work/s;->f()I

    move-result v1

    goto :goto_4

    :cond_9
    instance-of v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;

    invoke-virtual {v1}, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;->getStopReason()I

    move-result v1

    :goto_4
    invoke-virtual {v2, v1}, Landroidx/work/s;->m(I)V

    :cond_a
    instance-of v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/work/s$a;->b()Landroidx/work/s$a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_5
    return-object v1

    :cond_b
    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/work/impl/f1;->m()Landroidx/work/b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/b;->r()Landroidx/core/util/a;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v4, Landroidx/work/l0;

    iget-object v5, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->g:Landroidx/work/WorkerParameters;

    invoke-direct {v4, v1, v5, v0}, Landroidx/work/l0;-><init>(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Landroidx/work/impl/utils/g0;->a(Landroidx/core/util/a;Landroidx/work/l0;Ljava/lang/String;)V

    :cond_d
    invoke-static {}, Landroidx/work/s$a;->a()Landroidx/work/s$a;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_e
    :goto_6
    invoke-static {}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/work/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/s$a;->a()Landroidx/work/s$a;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public n(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/work/s;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getBackgroundExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/m1;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/workers/ConstraintTrackingWorker$doWork$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/workers/ConstraintTrackingWorker$doWork$2;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
