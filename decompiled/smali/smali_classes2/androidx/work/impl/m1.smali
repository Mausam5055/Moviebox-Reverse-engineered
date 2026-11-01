.class public abstract Landroidx/work/impl/m1;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/i0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/m1;->f(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/i0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/j0;Landroidx/work/impl/model/j0;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/work/impl/m1;->j(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/j0;Landroidx/work/impl/model/j0;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method public static synthetic c(Landroidx/work/impl/model/j0;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/work/impl/m1;->i(Landroidx/work/impl/model/j0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/work/i0;Landroidx/work/impl/f1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/m1;->g(Landroidx/work/i0;Landroidx/work/impl/f1;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/i0;)Landroidx/work/w;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/work/impl/f1;->m()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/b;->n()Landroidx/work/f0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueUniquePeriodic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/f1;->u()Lj4/c;

    move-result-object v2

    invoke-interface {v2}, Lj4/c;->c()Lj4/a;

    move-result-object v2

    const-string v3, "getSerialTaskExecutor(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/work/impl/i1;

    invoke-direct {v3, p0, p1, p2}, Landroidx/work/impl/i1;-><init>(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/i0;)V

    invoke-static {v0, v1, v2, v3}, Landroidx/work/a0;->c(Landroidx/work/f0;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/w;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/i0;)Lkotlin/Unit;
    .locals 42

    move-object/from16 v0, p1

    new-instance v1, Landroidx/work/impl/j1;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct {v1, v3, v2, v0}, Landroidx/work/impl/j1;-><init>(Landroidx/work/i0;Landroidx/work/impl/f1;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v4

    invoke-interface {v4, v0}, Landroidx/work/impl/model/k0;->p(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/impl/model/j0$b;

    if-nez v5, :cond_0

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_0
    iget-object v6, v5, Landroidx/work/impl/model/j0$b;->a:Ljava/lang/String;

    invoke-interface {v4, v6}, Landroidx/work/impl/model/k0;->j(Ljava/lang/String;)Landroidx/work/impl/model/j0;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroidx/work/impl/model/j0;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v5, Landroidx/work/impl/model/j0$b;->b:Landroidx/work/WorkInfo$State;

    sget-object v6, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v0, v6, :cond_1

    iget-object v0, v5, Landroidx/work/impl/model/j0$b;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Landroidx/work/impl/model/k0;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/work/i0;->d()Landroidx/work/impl/model/j0;

    move-result-object v6

    iget-object v7, v5, Landroidx/work/impl/model/j0$b;->a:Ljava/lang/String;

    const v40, 0x1fffffe

    const/16 v41, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-static/range {v6 .. v41}, Landroidx/work/impl/model/j0;->e(Landroidx/work/impl/model/j0;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Landroidx/work/impl/model/j0;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f1;->q()Landroidx/work/impl/s;

    move-result-object v0

    const-string v1, "getProcessor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f1;->t()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    const-string v5, "getWorkDatabase(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f1;->m()Landroidx/work/b;

    move-result-object v5

    const-string v6, "<get-configuration>(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/f1;->r()Ljava/util/List;

    move-result-object v6

    const-string v2, "getSchedulers(...)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroidx/work/i0;->c()Ljava/util/Set;

    move-result-object v7

    move-object v2, v5

    move-object v3, v6

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Landroidx/work/impl/m1;->h(Landroidx/work/impl/s;Landroidx/work/impl/WorkDatabase;Landroidx/work/b;Ljava/util/List;Landroidx/work/impl/model/j0;Ljava/util/Set;)Landroidx/work/WorkManager$UpdateResult;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkSpec with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroidx/work/impl/model/j0$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", that matches a name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", wasn\'t found"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t apply UPDATE policy to the chains of work."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final g(Landroidx/work/i0;Landroidx/work/impl/f1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroidx/work/impl/e0;

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-direct {v0, p1, p2, v1, p0}, Landroidx/work/impl/e0;-><init>(Landroidx/work/impl/f1;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/work/impl/utils/f;->b(Landroidx/work/impl/e0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Landroidx/work/impl/s;Landroidx/work/impl/WorkDatabase;Landroidx/work/b;Ljava/util/List;Landroidx/work/impl/model/j0;Ljava/util/Set;)Landroidx/work/WorkManager$UpdateResult;
    .locals 9

    iget-object v5, p4, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v0

    invoke-interface {v0, v5}, Landroidx/work/impl/model/k0;->j(Ljava/lang/String;)Landroidx/work/impl/model/j0;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v0, v2, Landroidx/work/impl/model/j0;->b:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/work/WorkManager$UpdateResult;->NOT_APPLIED:Landroidx/work/WorkManager$UpdateResult;

    return-object p0

    :cond_0
    invoke-virtual {v2}, Landroidx/work/impl/model/j0;->o()Z

    move-result v0

    invoke-virtual {p4}, Landroidx/work/impl/model/j0;->o()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_4

    invoke-virtual {p0, v5}, Landroidx/work/impl/s;->k(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/u;

    invoke-interface {v1, v5}, Landroidx/work/impl/u;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v8, Landroidx/work/impl/l1;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p4

    move-object v4, p3

    move-object v6, p5

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroidx/work/impl/l1;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/j0;Landroidx/work/impl/model/j0;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    invoke-virtual {p1, v8}, Landroidx/room/RoomDatabase;->a0(Ljava/lang/Runnable;)V

    if-nez p0, :cond_2

    invoke-static {p2, p1, p3}, Landroidx/work/impl/x;->h(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_2
    if-eqz p0, :cond_3

    sget-object p0, Landroidx/work/WorkManager$UpdateResult;->APPLIED_FOR_NEXT_RUN:Landroidx/work/WorkManager$UpdateResult;

    goto :goto_1

    :cond_3
    sget-object p0, Landroidx/work/WorkManager$UpdateResult;->APPLIED_IMMEDIATELY:Landroidx/work/WorkManager$UpdateResult;

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Landroidx/work/impl/k1;

    invoke-direct {p0}, Landroidx/work/impl/k1;-><init>()V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t update "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Worker to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Worker. Update operation must preserve worker\'s type."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Worker with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final i(Landroidx/work/impl/model/j0;)Ljava/lang/String;
    .locals 1

    const-string v0, "spec"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/work/impl/model/j0;->o()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Periodic"

    goto :goto_0

    :cond_0
    const-string p0, "OneTime"

    :goto_0
    return-object p0
.end method

.method private static final j(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/j0;Landroidx/work/impl/model/j0;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 39

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->m0()Landroidx/work/impl/model/v1;

    move-result-object v13

    iget-object v4, v0, Landroidx/work/impl/model/j0;->b:Landroidx/work/WorkInfo$State;

    iget v3, v0, Landroidx/work/impl/model/j0;->k:I

    move/from16 v16, v3

    iget-wide v5, v0, Landroidx/work/impl/model/j0;->n:J

    move-wide/from16 v20, v5

    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/j0;->g()I

    move-result v3

    const/4 v14, 0x1

    add-int/lit8 v29, v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/j0;->j()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/j0;->h()J

    move-result-wide v30

    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/j0;->i()I

    move-result v32

    const v36, 0x1c3dbfd

    const/16 v37, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v17, 0x0

    move-object v0, v13

    move-wide/from16 v13, v17

    const/16 v17, 0x0

    move-object/from16 v38, v15

    move-object/from16 v15, v17

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v2 .. v37}, Landroidx/work/impl/model/j0;->e(Landroidx/work/impl/model/j0;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Landroidx/work/impl/model/j0;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/j0;->i()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/j0;->h()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroidx/work/impl/model/j0;->p(J)V

    invoke-virtual {v2}, Landroidx/work/impl/model/j0;->i()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/work/impl/model/j0;->q(I)V

    :cond_0
    move-object/from16 v3, p3

    invoke-static {v3, v2}, Landroidx/work/impl/utils/g;->d(Ljava/util/List;Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/j0;

    move-result-object v2

    move-object/from16 v3, v38

    invoke-interface {v3, v2}, Landroidx/work/impl/model/k0;->c(Landroidx/work/impl/model/j0;)V

    invoke-interface {v0, v1}, Landroidx/work/impl/model/v1;->b(Ljava/lang/String;)V

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/v1;->d(Ljava/lang/String;Ljava/util/Set;)V

    if-nez p6, :cond_1

    const-wide/16 v4, -0x1

    invoke-interface {v3, v1, v4, v5}, Landroidx/work/impl/model/k0;->o(Ljava/lang/String;J)I

    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkDatabase;->k0()Landroidx/work/impl/model/e0;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/work/impl/model/e0;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
