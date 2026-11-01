.class public abstract Landroidx/compose/animation/core/SuspendAnimationKt;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/compose/animation/core/f;JFLandroidx/compose/animation/core/c;Landroidx/compose/animation/core/i;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/compose/animation/core/SuspendAnimationKt;->m(Landroidx/compose/animation/core/f;JFLandroidx/compose/animation/core/c;Landroidx/compose/animation/core/i;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final b(FFFLandroidx/compose/animation/core/g;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->b(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/s0;

    move-result-object v1

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    move-result-object v4

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->d(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/g;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final c(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/c;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    instance-of v2, v1, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    iget v3, v2, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    invoke-direct {v2, v1}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v1, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v11

    iget v2, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v13, :cond_2

    if-ne v2, v12, :cond_1

    iget-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v3, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/c;

    iget-object v4, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/i;

    :goto_2
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v9, v4

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v3, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/c;

    iget-object v4, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/i;

    goto :goto_2

    :goto_3
    move-object v8, v0

    move-object v0, v3

    goto/16 :goto_5

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/compose/animation/core/c;->f(J)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v1, v2}, Landroidx/compose/animation/core/c;->b(J)Landroidx/compose/animation/core/o;

    move-result-object v17

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p2, v1

    if-nez v1, :cond_4

    :try_start_1
    invoke-interface {v10}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->n(Lkotlin/coroutines/CoroutineContext;)F

    move-result v7

    new-instance v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$6;

    move-object v1, v8

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move-object/from16 v6, p0

    move-object v15, v8

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Object;Landroidx/compose/animation/core/c;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/i;FLkotlin/jvm/functions/Function1;)V

    iput-object v9, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$0:Ljava/lang/Object;

    iput-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$1:Ljava/lang/Object;

    move-object/from16 v8, p4

    iput-object v8, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$2:Ljava/lang/Object;

    iput-object v14, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$3:Ljava/lang/Object;

    iput v13, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    invoke-static {v0, v15, v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->k(Landroidx/compose/animation/core/c;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_5

    return-object v11

    :catch_1
    move-exception v0

    :goto_4
    move-object v2, v14

    goto/16 :goto_6

    :cond_4
    move-object/from16 v8, p4

    new-instance v13, Landroidx/compose/animation/core/f;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/animation/core/c;->e()Landroidx/compose/animation/core/s0;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Landroidx/compose/animation/core/c;->g()Ljava/lang/Object;

    move-result-object v20

    new-instance v1, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;

    invoke-direct {v1, v9}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;-><init>(Landroidx/compose/animation/core/i;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v23, 0x1

    move-object v7, v14

    move-object v14, v13

    move-wide/from16 v18, p2

    move-wide/from16 v21, p2

    move-object/from16 v24, v1

    :try_start_2
    invoke-direct/range {v14 .. v24}, Landroidx/compose/animation/core/f;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/s0;Landroidx/compose/animation/core/o;JLjava/lang/Object;JZLkotlin/jvm/functions/Function0;)V

    invoke-interface {v10}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->n(Lkotlin/coroutines/CoroutineContext;)F

    move-result v4
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v13

    move-wide/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object v14, v7

    move-object/from16 v7, p4

    :try_start_3
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->m(Landroidx/compose/animation/core/f;JFLandroidx/compose/animation/core/c;Landroidx/compose/animation/core/i;Lkotlin/jvm/functions/Function1;)V

    iput-object v13, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    move-object v4, v9

    move-object v2, v14

    :cond_6
    :goto_5
    :try_start_4
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v1, Landroidx/compose/animation/core/f;

    invoke-virtual {v1}, Landroidx/compose/animation/core/f;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->n(Lkotlin/coroutines/CoroutineContext;)F

    move-result v1

    new-instance v3, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;

    move-object/from16 p0, v3

    move-object/from16 p1, v2

    move/from16 p2, v1

    move-object/from16 p3, v0

    move-object/from16 p4, v4

    move-object/from16 p5, v8

    invoke-direct/range {p0 .. p5}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;FLandroidx/compose/animation/core/c;Landroidx/compose/animation/core/i;Lkotlin/jvm/functions/Function1;)V

    iput-object v4, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$0:Ljava/lang/Object;

    iput-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$1:Ljava/lang/Object;

    iput-object v8, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$2:Ljava/lang/Object;

    iput-object v2, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$3:Ljava/lang/Object;

    iput v12, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    invoke-static {v0, v3, v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->k(Landroidx/compose/animation/core/c;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    if-ne v1, v11, :cond_6

    return-object v11

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catch_2
    move-exception v0

    move-object v14, v7

    goto :goto_4

    :goto_6
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/animation/core/f;

    const/4 v3, 0x0

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v1, v3}, Landroidx/compose/animation/core/f;->k(Z)V

    :goto_7
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/animation/core/f;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/compose/animation/core/f;->c()J

    move-result-wide v1

    invoke-virtual {v9}, Landroidx/compose/animation/core/i;->d()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_9

    invoke-virtual {v9, v3}, Landroidx/compose/animation/core/i;->k(Z)V

    :cond_9
    throw v0
.end method

.method public static final d(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/g;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p3

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    move-object/from16 v7, p1

    invoke-interface {v0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/o;

    invoke-static {v0}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    :goto_1
    new-instance v12, Landroidx/compose/animation/core/p0;

    move-object v1, v12

    move-object/from16 v2, p4

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/p0;-><init>(Landroidx/compose/animation/core/g;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/o;)V

    new-instance v13, Landroidx/compose/animation/core/i;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v0

    move-wide v7, v8

    move v9, v14

    invoke-direct/range {v1 .. v11}, Landroidx/compose/animation/core/i;-><init>(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;

    move-object v0, p0

    move-object/from16 v1, p5

    invoke-direct {v5, v1, p0}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/core/s0;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->f(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/c;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic e(FFFLandroidx/compose/animation/core/g;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    const/4 p2, 0x7

    const/4 p3, 0x0

    invoke-static {v0, v0, p3, p2, p3}, Landroidx/compose/animation/core/h;->d(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/o0;

    move-result-object p3

    :cond_1
    move-object v4, p3

    move v1, p0

    move v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->b(FFFLandroidx/compose/animation/core/g;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/c;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/high16 p2, -0x8000000000000000L

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    sget-object p4, Landroidx/compose/animation/core/SuspendAnimationKt$animate$5;->INSTANCE:Landroidx/compose/animation/core/SuspendAnimationKt$animate$5;

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->c(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/c;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/w;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->g()Landroidx/compose/animation/core/o;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->e()Landroidx/compose/animation/core/s0;

    move-result-object v2

    new-instance v4, Landroidx/compose/animation/core/v;

    invoke-direct {v4, p1, v2, v0, v1}, Landroidx/compose/animation/core/v;-><init>(Landroidx/compose/animation/core/w;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->d()J

    move-result-wide p1

    :goto_0
    move-wide v5, p1

    goto :goto_1

    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    goto :goto_0

    :goto_1
    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->c(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/c;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic h(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/w;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    sget-object p3, Landroidx/compose/animation/core/SuspendAnimationKt$animateDecay$4;->INSTANCE:Landroidx/compose/animation/core/SuspendAnimationKt$animateDecay$4;

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/SuspendAnimationKt;->g(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/w;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Landroidx/compose/animation/core/i;Ljava/lang/Object;Landroidx/compose/animation/core/g;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->e()Landroidx/compose/animation/core/s0;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->g()Landroidx/compose/animation/core/o;

    move-result-object v5

    new-instance v7, Landroidx/compose/animation/core/p0;

    move-object v0, v7

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/p0;-><init>(Landroidx/compose/animation/core/g;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/o;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/i;->d()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :goto_1
    move-object v6, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/SuspendAnimationKt;->c(Landroidx/compose/animation/core/i;Landroidx/compose/animation/core/c;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic j(Landroidx/compose/animation/core/i;Ljava/lang/Object;Landroidx/compose/animation/core/g;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x7

    const/4 p7, 0x0

    const/4 v0, 0x0

    invoke-static {p7, p7, v0, p2, v0}, Landroidx/compose/animation/core/h;->d(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/o0;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    sget-object p4, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    :cond_2
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->i(Landroidx/compose/animation/core/i;Ljava/lang/Object;Landroidx/compose/animation/core/g;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final k(Landroidx/compose/animation/core/c;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/animation/core/c;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/animation/core/h0;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroidx/compose/animation/core/SuspendAnimationKt$callWithFrameNanos$2;

    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SuspendAnimationKt$callWithFrameNanos$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, p2}, Landroidx/compose/runtime/v0;->b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final l(Landroidx/compose/animation/core/f;JJLandroidx/compose/animation/core/c;Landroidx/compose/animation/core/i;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/f;->j(J)V

    invoke-interface {p5, p3, p4}, Landroidx/compose/animation/core/c;->f(J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/f;->l(Ljava/lang/Object;)V

    invoke-interface {p5, p3, p4}, Landroidx/compose/animation/core/c;->b(J)Landroidx/compose/animation/core/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/f;->m(Landroidx/compose/animation/core/o;)V

    invoke-interface {p5, p3, p4}, Landroidx/compose/animation/core/c;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/core/f;->c()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/f;->i(J)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/f;->k(Z)V

    :cond_0
    invoke-static {p0, p6}, Landroidx/compose/animation/core/SuspendAnimationKt;->o(Landroidx/compose/animation/core/f;Landroidx/compose/animation/core/i;)V

    invoke-interface {p7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final m(Landroidx/compose/animation/core/f;JFLandroidx/compose/animation/core/c;Landroidx/compose/animation/core/i;Lkotlin/jvm/functions/Function1;)V
    .locals 10

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    invoke-interface {p4}, Landroidx/compose/animation/core/c;->d()J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/f;->d()J

    move-result-wide v0

    sub-long v0, p1, v0

    long-to-float v0, v0

    div-float/2addr v0, p3

    float-to-long v0, v0

    goto :goto_0

    :goto_1
    move-object v2, p0

    move-wide v3, p1

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/core/SuspendAnimationKt;->l(Landroidx/compose/animation/core/f;JJLandroidx/compose/animation/core/c;Landroidx/compose/animation/core/i;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final n(Lkotlin/coroutines/CoroutineContext;)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/j;->a1:Landroidx/compose/ui/j$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/j;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/j;->k()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "negative scale factor"

    invoke-static {v0}, Landroidx/compose/animation/core/k0;->b(Ljava/lang/String;)V

    :cond_2
    return p0
.end method

.method public static final o(Landroidx/compose/animation/core/f;Landroidx/compose/animation/core/i;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/animation/core/f;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/animation/core/i;->l(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/animation/core/i;->g()Landroidx/compose/animation/core/o;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/f;->g()Landroidx/compose/animation/core/o;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/animation/core/p;->f(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)V

    invoke-virtual {p0}, Landroidx/compose/animation/core/f;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/animation/core/i;->i(J)V

    invoke-virtual {p0}, Landroidx/compose/animation/core/f;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/animation/core/i;->j(J)V

    invoke-virtual {p0}, Landroidx/compose/animation/core/f;->h()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/animation/core/i;->k(Z)V

    return-void
.end method
