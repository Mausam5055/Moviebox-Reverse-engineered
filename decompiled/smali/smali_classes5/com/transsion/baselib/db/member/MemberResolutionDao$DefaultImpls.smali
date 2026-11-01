.class public abstract Lcom/transsion/baselib/db/member/MemberResolutionDao$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/member/MemberResolutionDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static a(Lcom/transsion/baselib/db/member/MemberResolutionDao;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;

    iget v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;

    invoke-direct {v1, v0}, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->label:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v10, :cond_2

    if-ne v2, v9, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->Z$0:Z

    iget v3, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->I$1:I

    iget v4, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->I$0:I

    iget-object v5, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/baselib/db/member/MemberResolutionDao;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move v14, v2

    move v13, v3

    move v12, v4

    move-object v11, v5

    move-object v0, v6

    goto/16 :goto_2

    :cond_3
    iget-boolean v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->Z$0:Z

    iget v3, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->I$1:I

    iget v4, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->I$0:I

    iget-object v5, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/baselib/db/member/MemberResolutionDao;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v14, v2

    move v13, v3

    move v12, v4

    move-object v11, v5

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p0

    iput-object v0, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$0:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$1:Ljava/lang/Object;

    move/from16 v12, p2

    iput v12, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->I$0:I

    move/from16 v13, p3

    iput v13, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->I$1:I

    move/from16 v14, p4

    iput-boolean v14, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->Z$0:Z

    iput v3, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->label:I

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/transsion/baselib/db/member/MemberResolutionDao;->e(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_5

    return-object v8

    :cond_5
    :goto_1
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    new-instance v2, Lcom/transsion/baselib/db/member/MemberResolutionBean;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object p0, v2

    move-object/from16 p1, v11

    move/from16 p2, v13

    move/from16 p3, v12

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    invoke-direct/range {p0 .. p5}, Lcom/transsion/baselib/db/member/MemberResolutionBean;-><init>(Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;)V

    :try_start_1
    iput-object v0, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$1:Ljava/lang/Object;

    iput v12, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->I$0:I

    iput v13, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->I$1:I

    iput-boolean v14, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->Z$0:Z

    iput v10, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->label:I

    invoke-interface {v0, v2, v1}, Lcom/transsion/baselib/db/member/MemberResolutionDao;->d(Lcom/transsion/baselib/db/member/MemberResolutionBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v8, :cond_7

    return-object v8

    :catch_1
    :goto_2
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->L$1:Ljava/lang/Object;

    iput v9, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateIsUnlockOrCreate$1;->label:I

    move-object p0, v0

    move-object/from16 p1, v11

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    move-object/from16 p5, v1

    invoke-interface/range {p0 .. p5}, Lcom/transsion/baselib/db/member/MemberResolutionDao;->e(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_7

    return-object v8

    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static b(Lcom/transsion/baselib/db/member/MemberResolutionDao;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;

    iget v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;

    invoke-direct {v1, v0}, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    iget v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->label:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v10, :cond_2

    if-ne v2, v9, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->Z$0:Z

    iget v3, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->I$1:I

    iget v4, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->I$0:I

    iget-object v5, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/baselib/db/member/MemberResolutionDao;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move v14, v2

    move v13, v3

    move v12, v4

    move-object v11, v5

    move-object v0, v6

    goto/16 :goto_2

    :cond_3
    iget-boolean v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->Z$0:Z

    iget v3, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->I$1:I

    iget v4, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->I$0:I

    iget-object v5, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/baselib/db/member/MemberResolutionDao;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v14, v2

    move v13, v3

    move v12, v4

    move-object v11, v5

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p0

    iput-object v0, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$0:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$1:Ljava/lang/Object;

    move/from16 v12, p2

    iput v12, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->I$0:I

    move/from16 v13, p3

    iput v13, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->I$1:I

    move/from16 v14, p4

    iput-boolean v14, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->Z$0:Z

    iput v3, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->label:I

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lcom/transsion/baselib/db/member/MemberResolutionDao;->c(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_5

    return-object v8

    :cond_5
    :goto_1
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    new-instance v2, Lcom/transsion/baselib/db/member/MemberResolutionBean;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object p0, v2

    move-object/from16 p1, v11

    move/from16 p2, v13

    move/from16 p3, v12

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    invoke-direct/range {p0 .. p5}, Lcom/transsion/baselib/db/member/MemberResolutionBean;-><init>(Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;)V

    :try_start_1
    iput-object v0, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$1:Ljava/lang/Object;

    iput v12, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->I$0:I

    iput v13, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->I$1:I

    iput-boolean v14, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->Z$0:Z

    iput v10, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->label:I

    invoke-interface {v0, v2, v1}, Lcom/transsion/baselib/db/member/MemberResolutionDao;->d(Lcom/transsion/baselib/db/member/MemberResolutionBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v8, :cond_7

    return-object v8

    :catch_1
    :goto_2
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->L$1:Ljava/lang/Object;

    iput v9, v1, Lcom/transsion/baselib/db/member/MemberResolutionDao$updateVipResolutionTipOrCreate$1;->label:I

    move-object p0, v0

    move-object/from16 p1, v11

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    move-object/from16 p5, v1

    invoke-interface/range {p0 .. p5}, Lcom/transsion/baselib/db/member/MemberResolutionDao;->c(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_7

    return-object v8

    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
