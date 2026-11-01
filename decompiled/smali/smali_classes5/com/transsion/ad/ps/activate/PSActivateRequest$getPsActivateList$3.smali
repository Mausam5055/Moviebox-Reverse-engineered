.class final Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/ps/activate/PSActivateRequest;->h(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.ps.activate.PSActivateRequest$getPsActivateList$3"
    f = "PSActivateRequest.kt"
    l = {
        0x5e,
        0x73,
        0x84
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;

    invoke-direct {p1, p2}, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->label:I

    const/4 v3, 0x0

    const-string v4, " --> getPsActivateList() --> url = "

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v2

    move-object/from16 v2, p1

    goto/16 :goto_2

    :cond_2
    iget-object v2, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$2:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    iget-object v7, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v9, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$0:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v9

    move-object v9, v7

    move-object/from16 v7, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "gaid"

    sget-object v10, Lih/b;->a:Lih/b;

    invoke-virtual {v10}, Lih/b;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "pkgList"

    sget-object v10, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    iput-object v2, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$2:Ljava/lang/Object;

    iput v7, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->label:I

    invoke-virtual {v10, v1}, Lcom/transsion/ad/ps/activate/PSActivateManager;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object v10, v2

    :goto_0
    invoke-virtual {v2, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lhi/f;->a:Lhi/f;

    invoke-virtual {v2}, Lhi/f;->e()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "https://feature-api.palmplaystore.com"

    goto :goto_1

    :cond_5
    const-string v7, "https://test-feature-api.palmplaystore.com"

    :goto_1
    invoke-virtual {v2}, Lhi/f;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v11, Loi/a;->a:Loi/a;

    sget-object v2, Lcom/transsion/ad/ps/activate/PSActivateRequest;->a:Lcom/transsion/ad/ps/activate/PSActivateRequest;

    invoke-static {v2}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->b(Lcom/transsion/ad/ps/activate/PSActivateRequest;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> jsonObject = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Loi/a;->m(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_6
    sget-object v17, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v18, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_TRIGGER:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    const-string v21, ""

    sget-object v2, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_ACTIVATE:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-virtual {v2}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->getValue()Ljava/lang/String;

    move-result-object v22

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v22}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/ad/ps/activate/PSActivateRequest;->a:Lcom/transsion/ad/ps/activate/PSActivateRequest;

    invoke-static {v2}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->c(Lcom/transsion/ad/ps/activate/PSActivateRequest;)Lqi/a;

    move-result-object v2

    sget-object v9, Lbh/b;->a:Lbh/b$a;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "toString(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v9

    iput-object v7, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$2:Ljava/lang/Object;

    iput v6, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->label:I

    invoke-interface {v2, v9, v7, v1}, Lqi/a;->a(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    check-cast v2, Lcom/transsion/ad/ps/activate/PsActivateDto;

    sget-object v6, Lhi/f;->a:Lhi/f;

    invoke-virtual {v6}, Lhi/f;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v9, Loi/a;->a:Loi/a;

    sget-object v6, Lcom/transsion/ad/ps/activate/PSActivateRequest;->a:Lcom/transsion/ad/ps/activate/PSActivateRequest;

    invoke-static {v6}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->b(Lcom/transsion/ad/ps/activate/PSActivateRequest;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/ad/ps/activate/PsActivateDto;->getData()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_8
    move-object v10, v8

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> postPsRecommendList = "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Loi/a;->m(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_9
    sget-object v15, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    sget-object v16, Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;->REQUEST_SUCCESS:Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/transsion/ad/ps/activate/PsActivateDto;->getData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_4

    :cond_a
    move-object/from16 v17, v8

    :goto_4
    const-string v19, ""

    sget-object v4, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_ACTIVATE:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-virtual {v4}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->getValue()Ljava/lang/String;

    move-result-object v20

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v20}, Lcom/transsion/ad/ps/PSReportUtil;->d(Lcom/transsion/ad/ps/PSReportUtil$PSRequestState;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/transsion/ad/ps/activate/PsActivateDto;->getData()Ljava/util/List;

    move-result-object v2

    goto :goto_5

    :cond_b
    move-object v2, v8

    :goto_5
    iput-object v8, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->L$0:Ljava/lang/Object;

    iput v5, v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$3;->label:I

    invoke-virtual {v4, v2, v1}, Lcom/transsion/ad/ps/activate/PSActivateManager;->g(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_c

    return-object v0

    :cond_c
    :goto_6
    invoke-static {}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :goto_7
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    sget-object v4, Loi/a;->a:Loi/a;

    sget-object v2, Lcom/transsion/ad/ps/activate/PSActivateRequest;->a:Lcom/transsion/ad/ps/activate/PSActivateRequest;

    invoke-static {v2}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->b(Lcom/transsion/ad/ps/activate/PSActivateRequest;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> getPsActivateList() --> it = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Loi/a;->m(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-static {}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x694920

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->e(J)V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
