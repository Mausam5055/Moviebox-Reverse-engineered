.class public abstract Landroidx/work/impl/utils/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/work/impl/WorkDatabase;Landroidx/work/b;Landroidx/work/impl/e0;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "workDatabase"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "configuration"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "continuation"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    return-void

    :cond_0
    new-array v2, v1, [Landroidx/work/impl/e0;

    aput-object p2, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move v2, v0

    :cond_1
    :goto_0
    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/e0;

    invoke-virtual {v3}, Landroidx/work/impl/e0;->g()Ljava/util/List;

    move-result-object v4

    const-string v5, "getWork(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/work/i0;

    invoke-virtual {v6}, Landroidx/work/i0;->d()Landroidx/work/impl/model/j0;

    move-result-object v6

    iget-object v6, v6, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {v6}, Landroidx/work/d;->g()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/2addr v5, v1

    if-gez v5, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->t()V

    goto :goto_1

    :cond_4
    :goto_2
    add-int/2addr v2, v5

    invoke-virtual {v3}, Landroidx/work/impl/e0;->f()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object p0

    invoke-interface {p0}, Landroidx/work/impl/model/k0;->A()I

    move-result p0

    invoke-virtual {p1}, Landroidx/work/b;->b()I

    move-result p1

    add-int p2, p0, v2

    if-gt p2, p1, :cond_7

    return-void

    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";\nalready enqueued count: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";\ncurrent enqueue operation count: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final b(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/j0;
    .locals 36

    move-object/from16 v0, p0

    const-string v1, "workSpec"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    iget-object v2, v0, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    const-class v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroidx/work/d;->h()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroidx/work/d;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Landroidx/work/f$a;

    invoke-direct {v1}, Landroidx/work/f$a;-><init>()V

    iget-object v4, v0, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    invoke-virtual {v1, v4}, Landroidx/work/f$a;->c(Landroidx/work/f;)Landroidx/work/f$a;

    move-result-object v1

    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v1, v4, v2}, Landroidx/work/f$a;->f(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/f$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/f$a;->a()Landroidx/work/f;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v34, 0x1ffffeb

    const/16 v35, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v35}, Landroidx/work/impl/model/j0;->e(Landroidx/work/impl/model/j0;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Landroidx/work/impl/model/j0;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static final c(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/j0;
    .locals 36

    move-object/from16 v0, p0

    const-string v1, "workSpec"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    const-string v2, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroidx/work/f;->h(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    iget-object v4, v0, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    const-string v5, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v4, v5, v3}, Landroidx/work/f;->h(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v4

    iget-object v5, v0, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    const-string v6, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v5, v6, v3}, Landroidx/work/f;->h(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-nez v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v1, v0, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    new-instance v3, Landroidx/work/f$a;

    invoke-direct {v3}, Landroidx/work/f$a;-><init>()V

    iget-object v4, v0, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    invoke-virtual {v3, v4}, Landroidx/work/f$a;->c(Landroidx/work/f;)Landroidx/work/f$a;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroidx/work/f$a;->f(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/f$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/f$a;->a()Landroidx/work/f;

    move-result-object v5

    const v34, 0x1ffffeb

    const/16 v35, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v35}, Landroidx/work/impl/model/j0;->e(Landroidx/work/impl/model/j0;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Landroidx/work/impl/model/j0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final d(Ljava/util/List;Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/j0;
    .locals 1

    const-string v0, "schedulers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "workSpec"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/work/impl/utils/g;->c(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/j0;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    invoke-static {p0}, Landroidx/work/impl/utils/g;->b(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/j0;

    move-result-object p0

    :cond_0
    return-object p0
.end method
